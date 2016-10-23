<cfscript>
component extends="_main" output="false" 
{
	function init() 
	{
		super.init();
	}
	
	function sharedObjects(providerid)
	{		
		userlist = model("User").findAll(order="email ASC");
		
		providercategories = model("ProviderCategory").findAll(where="categoryType = 'provider'#wherePermission("ProviderCategory","AND")#");
		selectedprovidercategories = model("ProviderCategoryJoin").findAll(where="providerid = #arguments.providerid#",include="Provider,ProviderCategory");
		selectedprovidercategories = ValueList(selectedprovidercategories.categoryid);
		
		sites = model("Site").findAll();
		usStates = getStatesAndProvinces();
		countries = getCountries();	

		dataFields = model("FormField").findAll(where="metafieldType = 'providerfield' AND modelid = 3",order="sortorder ASC");
	}
	
	function provider()
	{		
		if(!isNull(params.id))
		{
			provider = model("provider").findAll(where="id = '#params.id#'");
		}
	}
	
	function updateOrder()
	{
		orderValues = DeserializeJSON(params.orderValues);
				
		for(i=1; i LTE ArrayLen(orderValues); i = i + 1)
		{
			sortVal = orderValues[i];
			
			sortProvider = model("Provider").findOne(where="id = #sortVal.fieldId#");
					
			if(isObject(sortProvider))
			{
				sortProvider.update(sortorder=sortVal.newIndex);
			}
		}
		abort;
	}
	
	function category()
	{		
		sharedObjects(0);
		
		if(!isNull(params.id))
		{			
			providerCategory = model("ProviderCategory").findAll(where="urlid = '#params.id#'#wherePermission("ProviderCategory","AND")#");				
		} else {
			// Get default category
			providerCategory = model("ProviderCategory").findAll(where="defaultadmin = 1#wherePermission("ProviderCategory","AND")#");				
		}
		
		providerCategories = model("ProviderCategory").findAll(where="parentid = '#providerCategory.id#'#wherePermission("ProviderCategory","AND")#");
		
		if(providerCategory.recordcount)
		{				
			qProviders = model("Provider").findAll(
				where	= buildWhereStatement(modelName="Provider", prepend="categoryid = '#providerCategory.id#' AND"), 
				order	= "sortorder ASC", 
				include = "providercategoryjoin(providercategory)"
			);

			distinctProviderColumns = qProviders.columnList;
			providerColumns = qProviders.columnList;

			filterResults();
		}
	}
	
	function index()
	{
		if(isNull(session.providers)) {
			session.providers.sortby = "sortorder";
			session.providers.order = "asc";
		}

		sharedObjects(0);
		qProviders = model("Provider").findAll(
			where	= buildWhereStatement("Provider"), 
			order	= !isNull(params.rearrange) ? "sortorder ASC" : session.providers.sortby & " " & session.providers.order
		);

		distinctProviderColumns = qProviders.columnList;
		providerColumns = qProviders.columnList;
		
		//statusTabs("provider");

		if(isNull(params.rearrange)) filterResults();
		
		// Paginate me batman
		pagination = application.pagination;
		pagination.setQueryToPaginate(qProviders);	
		pagination.setItemsPerPage(session.perPage);		
		paginator = pagination.getRenderedHTML();
		
		// If oauth comes back to homepage
		if(!isNull(params.token))
		{
			provider = model("Provider").findAll(where="id = #params.id#");
		}
	}
	
	function edit()
	{						
		if(isDefined("params.id")) 
		{
			// Queries
			sharedObjects(params.id);						
			myProvider = model("Provider").findAll(where="id = '#params.id#'#wherePermission("Provider","AND")#", maxRows=1, returnAs="Object");

			if(ArrayLen(myProvider))
			{				
				myProvider = myProvider[1];
			}

			photos = model("ProviderMediafile").findAll(where="modelid = '#params.id#' AND mediafileType = 'provider'",order="sortorder ASC"); 
			
			// Provider not found?
			if (!IsObject(myProvider))
			{
				flashInsert(error="Not found");
				redirectTo(route="admin~Index", controller="providers");
			}

			dataFields = model("FieldData").getAllFieldsAndUserData(
				modelid = 3,
				foreignid = params.id,
				metafieldType = "providerfield"
			);

		}

		renderPage(action="editor");		
	}
	function new()
	{
		// Queries
		myProvider = model("Provider").new(colStruct("Provider"));

		dataFields = model("FormField").findAll(where="metafieldType = 'providerfield' AND modelid = 3",order="sortorder ASC");

		sharedObjects(0);
		
		// If not allowed redirect
		wherePermission("Provider");
		
		// Show page
		renderPage(action="editor");
	}


	function delete()
	{
		myProvider = model("Provider").findByKey(params.id);
		
		if(provider.delete())
		{
			flashInsert(success="The provider was deleted successfully.");							
		} else 
		{
			flashInsert(error="The provider could not be found.");
		}
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="providers"
		);
	}
	
	function save()
	{					
		// Spam check
		try {
			http method="GET" url="http://ip-api.com/json/#getIpAddress()#" result="jsonResult";
			jsonResult = DeserializeJSON(jsonResult.filecontent);
			if(jsonResult.containsKey("countryCode") AND jsonResult.countryCode NEQ "US") {
				throw("Sorry, there was an error. Please try again later.");
			}			
		} catch(e) {			
		}

		var loc = {};
		
		param name="params.provider.providerfileid" default="";
		param name="params.providercategories" default="";
		
		// Handle submit button type (publish,draft,trash,etc)
		if(!isNull(params.submit))
		{
			params.provider.status = handleSubmitType("provider", params.submit);	
		}
		
		if(!isNull(params.provider.ownerid) AND isNumeric(params.provider.ownerid))
		{
			params.provider.createdby = params.provider.ownerid;
		} else {
			params.provider.ownerid = session.user.id;
		}

		if(!isNull(params.provider.name)) {
			params.provider.urlid = lcase(cleanUrlId(params.provider.address));
		}

		// Get provider object
		if(!isNull(params.provider.id)) 
		{
			myProvider = model("Provider").findByKey(params.provider.id);
			saveResult = provider.update(params.provider);	
			
			// Clear existing provider category associations
			model("providerCategoryJoin").deleteAll(where="providerid = #params.provider.id#");
		} else {

			myProvider = model("Provider").new(params.provider);
			saveResult = myProvider.save();
		}
		
		// Insert or update provider object with providers
		if (saveResult) 
		{
			// Insert new provider category associations			
			for(id in ListToArray(params.providercategories)) {				
				model("providerCategoryJoin").create(categoryid = id, providerid = provider.id);				
			}

			// Save custom metafeild data
			if(!isNull(params.fielddata)) { 
				model("FieldData").saveFielddata(
					fields		= params.fielddata,
					foreignid	= provider.id
				);
			}
			
			flashInsert(success="Provider saved.");
			redirectTo(route="admin~Id", controller="providers", action="edit", id=provider.id);	
		} else {						
			
			errorMessagesName = "myProvider";
			param name="myProvider.id" default="0";
			sharedObjects(myProvider.id);
			
			flashInsert(error="There was an error.");
			renderPage(route="admin~Action", controller="providers", action="editor");		
		}		
	}
	
	function deleteSelection()
	{
		for(var i=1; i LTE ListLen(params.deletelist); i++)
		{
			model("Provider").findByKey(ListGetAt(params.deletelist,i)).delete();
		}
		
		flashInsert(success="Your providers were deleted successfully!");			
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="providers"
		);
	}
	
	function setPerPage()
	{
		if(!isNull(params.id) AND IsNumeric(params.id))
		{
			session.perPage = params.id;
		}
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="providers"
		);
	}
	
	function photos()
	{						
		usesLayout("/layouts/layout.blank");
		if(isDefined("params.id")) {
			photos = model("ProviderMediafile").findAll(where="modelid = '#params.id#' AND mediafileType = 'provider'",order="sortorder ASC"); 
		} else {abort;}		
	}

	
	
	function filterResults()
	{
		if(!isNull(params.filtertype) AND params.filtertype eq "clear")
		{
			resetIndexFilters();
		}
		else
		{
			// Get main query
			qqProviders = qProviders;	
			rememberParams = "";				
			
			// Set display type
			if(!isNull(params.display))
			{
				session.display = params.display;			
			}			
			
			// Set sort
			if(!isNull(params.sort))
			{
				session.providers.sortby = params.sort;			
			}
			
			// Set order
			if(!isNull(params.order))
			{
				session.providers.order = params.order;			
			}
			
			// Set "hosted" filter
			if(!isNull(params.hosted))
			{
				session.providers.hosted = params.hosted;
			}	
			
			// Apply "search" filter
			if(!isNull(params.search) AND len(params.search))
			{
				rememberParams = ListAppend(rememberParams,"search=#params.search#","&");
				
				// Break apart search string into a keyword where clause
				var whereKeywords = [];			
				var keywords = listToArray(trim(params.search)," ");			
				for(keyword in keywords)
				{
					ArrayAppend(whereKeywords, "name LIKE '%#keyword#%'");
					ArrayAppend(whereKeywords, "description LIKE '%#keyword#%'");
				}
				
				// Include permission check if defined
				whereKeywords = ArrayToList(whereKeywords, " OR ");
				if(len(wherePermission("Provider")))
				{
					whereClause = wherePermission("Provider") & " AND (" & whereKeywords & ")";
				} else {
					whereClause = whereKeywords;	
				}					
				
				qqProviders = model("Provider").findAll(
					where	= whereClause,
					order	= session.providers.sortby & " " & session.providers.order, 
					select	= providerColumns,
					include = "providercategoryjoin(providercategory)"
				);
			}
			
			// Apply "category" filter
			if(!isNull(params.filtercategories) AND len(params.filtercategories))
			{
				rememberParams = ListAppend(rememberParams,"filtercategories=#params.filtercategories#","&");				
				var filtercategories = listToArray(params.filtercategories);
				var whereCategories = [];
				
				for(categoryid in filtercategories)
				{
					ArrayAppend(whereCategories, "category_id = #categoryid#");
				}
				
				whereCategories = ArrayToList(whereCategories, " OR ");
				
				qqProviders = queryOfQueries(
					query	= "qqProviders",
					where	= whereCategories
				);
			}
			
			// Clear out the duplicates
			qqProviders = queryOfQueries(
				query	= "qqProviders", 
				select	= "DISTINCT #distinctProviderColumns#", 
				order	= session.providers.sortby & " " & session.providers.order
			);
			
			qProviders = qqProviders;
			
			if(len(rememberParams))
			{
				pagination.setAppendToLinks("&#rememberParams#");
			}
			
			//renderPage(route="admin~Action", controller="providers", action="index");		
		}
	}
}
</cfscript>