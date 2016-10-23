<cfscript>
component extends="_main" output="false" 
{
	function init() 
	{
		super.init();
	}
	
	function sharedObjects(@lcaseSingular@id)
	{		
		userlist = model("User").findAll(order="email ASC");
		
		@lcaseSingular@categories = model("@ucaseSingular@Category").findAll(where="categoryType = '@lcaseSingular@'#wherePermission("@ucaseSingular@Category","AND")#");
		selected@lcaseSingular@categories = model("@ucaseSingular@CategoryJoin").findAll(where="@lcaseSingular@id = #arguments.@lcaseSingular@id#",include="@ucaseSingular@,@ucaseSingular@Category");
		selected@lcaseSingular@categories = ValueList(selected@lcaseSingular@categories.categoryid);
		
		sites = model("Site").findAll();
		usStates = getStatesAndProvinces();
		countries = getCountries();	

		dataFields = model("FormField").findAll(where="metafieldType = '@lcaseSingular@field' AND modelid = 3",order="sortorder ASC");
	}
	
	function @lcaseSingular@()
	{		
		if(!isNull(params.id))
		{
			@lcaseSingular@ = model("@lcaseSingular@").findAll(where="id = '#params.id#'");
		}
	}
	
	function updateOrder()
	{
		orderValues = DeserializeJSON(params.orderValues);
				
		for(i=1; i LTE ArrayLen(orderValues); i = i + 1)
		{
			sortVal = orderValues[i];
			
			sort@ucaseSingular@ = model("@ucaseSingular@").findOne(where="id = #sortVal.fieldId#");
					
			if(isObject(sort@ucaseSingular@))
			{
				sort@ucaseSingular@.update(sortorder=sortVal.newIndex);
			}
		}
		abort;
	}
	
	function category()
	{		
		sharedObjects(0);
		
		if(!isNull(params.id))
		{			
			@lcaseSingular@Category = model("@ucaseSingular@Category").findAll(where="urlid = '#params.id#'#wherePermission("@ucaseSingular@Category","AND")#");				
		} else {
			// Get default category
			@lcaseSingular@Category = model("@ucaseSingular@Category").findAll(where="defaultadmin = 1#wherePermission("@ucaseSingular@Category","AND")#");				
		}
		
		@lcaseSingular@Categories = model("@ucaseSingular@Category").findAll(where="parentid = '#@lcaseSingular@Category.id#'#wherePermission("@ucaseSingular@Category","AND")#");
		
		if(@lcaseSingular@Category.recordcount)
		{				
			q@ucasePlural@ = model("@ucaseSingular@").findAll(
				where	= buildWhereStatement(modelName="@ucaseSingular@", prepend="categoryid = '#@lcaseSingular@Category.id#' AND"), 
				order	= "sortorder ASC", 
				include = "@lcaseSingular@categoryjoin(@lcaseSingular@category)"
			);

			distinct@ucaseSingular@Columns = q@ucasePlural@.columnList;
			@lcaseSingular@Columns = q@ucasePlural@.columnList;

			filterResults();
		}
	}
	
	function index()
	{
		if(isNull(session.@lcasePlural@)) {
			session.@lcasePlural@.sortby = "sortorder";
			session.@lcasePlural@.order = "asc";
		}

		sharedObjects(0);
		q@ucasePlural@ = model("@ucaseSingular@").findAll(
			where	= buildWhereStatement("@ucaseSingular@"), 
			order	= !isNull(params.rearrange) ? "sortorder ASC" : session.@lcasePlural@.sortby & " " & session.@lcasePlural@.order
		);

		distinct@ucaseSingular@Columns = q@ucasePlural@.columnList;
		@lcaseSingular@Columns = q@ucasePlural@.columnList;
		
		//statusTabs("@lcaseSingular@");

		if(isNull(params.rearrange)) filterResults();
		
		// Paginate me batman
		pagination = application.pagination;
		pagination.setQueryToPaginate(q@ucasePlural@);	
		pagination.setItemsPerPage(session.perPage);		
		paginator = pagination.getRenderedHTML();
		
		// If oauth comes back to homepage
		if(!isNull(params.token))
		{
			@lcaseSingular@ = model("@ucaseSingular@").findAll(where="id = #params.id#");
		}
	}
	
	function edit()
	{						
		if(isDefined("params.id")) 
		{
			// Queries
			sharedObjects(params.id);						
			my@UcaseSingular@ = model("@ucaseSingular@").findAll(where="id = '#params.id#'#wherePermission("@ucaseSingular@","AND")#", maxRows=1, returnAs="Object");

			if(ArrayLen(my@UcaseSingular@))
			{				
				my@UcaseSingular@ = my@UcaseSingular@[1];
			}

			photos = model("@ucaseSingular@Mediafile").findAll(where="modelid = '#params.id#' AND mediafileType = '@lcaseSingular@'",order="sortorder ASC"); 
			
			// @ucaseSingular@ not found?
			if (!IsObject(my@UcaseSingular@))
			{
				flashInsert(error="Not found");
				redirectTo(route="admin~Index", controller="@lcasePlural@");
			}

			dataFields = model("FieldData").getAllFieldsAndUserData(
				modelid = 3,
				foreignid = params.id,
				metafieldType = "@lcaseSingular@field"
			);

		}

		renderPage(action="editor");		
	}
	function new()
	{
		// Queries
		my@ucaseSingular@ = model("@ucaseSingular@").new(colStruct("@ucaseSingular@"));

		dataFields = model("FormField").findAll(where="metafieldType = '@lcaseSingular@field' AND modelid = 3",order="sortorder ASC");

		sharedObjects(0);
		
		// If not allowed redirect
		wherePermission("@ucaseSingular@");
		
		// Show page
		renderPage(action="editor");
	}


	function delete()
	{
		my@ucaseSingular@ = model("@ucaseSingular@").findByKey(params.id);
		
		if(@lcaseSingular@.delete())
		{
			flashInsert(success="The @lcaseSingular@ was deleted successfully.");							
		} else 
		{
			flashInsert(error="The @lcaseSingular@ could not be found.");
		}
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="@lcasePlural@"
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
		
		param name="params.@lcaseSingular@.@lcaseSingular@fileid" default="";
		param name="params.@lcaseSingular@categories" default="";
		
		// Handle submit button type (publish,draft,trash,etc)
		if(!isNull(params.submit))
		{
			params.@lcaseSingular@.status = handleSubmitType("@lcaseSingular@", params.submit);	
		}
		
		if(!isNull(params.@lcaseSingular@.ownerid) AND isNumeric(params.@lcaseSingular@.ownerid))
		{
			params.@lcaseSingular@.createdby = params.@lcaseSingular@.ownerid;
		} else {
			params.@lcaseSingular@.ownerid = session.user.id;
		}

		if(!isNull(params.@lcaseSingular@.name)) {
			params.@lcaseSingular@.urlid = lcase(cleanUrlId(params.@lcaseSingular@.address));
		}

		// Get @lcaseSingular@ object
		if(!isNull(params.@lcaseSingular@.id)) 
		{
			my@ucaseSingular@ = model("@ucaseSingular@").findByKey(params.@lcaseSingular@.id);
			saveResult = @lcaseSingular@.update(params.@lcaseSingular@);	
			
			// Clear existing @lcaseSingular@ category associations
			model("@lcaseSingular@CategoryJoin").deleteAll(where="@lcaseSingular@id = #params.@lcaseSingular@.id#");
		} else {

			my@ucaseSingular@ = model("@ucaseSingular@").new(params.@lcaseSingular@);
			saveResult = my@ucaseSingular@.save();
		}
		
		// Insert or update @lcaseSingular@ object with @lcasePlural@
		if (saveResult) 
		{
			// Insert new @lcaseSingular@ category associations			
			for(id in ListToArray(params.@lcaseSingular@categories)) {				
				model("@lcaseSingular@CategoryJoin").create(categoryid = id, @lcaseSingular@id = @lcaseSingular@.id);				
			}

			// Save custom metafeild data
			if(!isNull(params.fielddata)) { 
				model("FieldData").saveFielddata(
					fields		= params.fielddata,
					foreignid	= @lcaseSingular@.id
				);
			}
			
			flashInsert(success="@ucaseSingular@ saved.");
			redirectTo(route="admin~Id", controller="@lcasePlural@", action="edit", id=@lcaseSingular@.id);	
		} else {						
			
			errorMessagesName = "my@ucaseSingular@";
			param name="my@ucaseSingular@.id" default="0";
			sharedObjects(my@ucaseSingular@.id);
			
			flashInsert(error="There was an error.");
			renderPage(route="admin~Action", controller="@lcasePlural@", action="editor");		
		}		
	}
	
	function deleteSelection()
	{
		for(var i=1; i LTE ListLen(params.deletelist); i++)
		{
			model("@ucaseSingular@").findByKey(ListGetAt(params.deletelist,i)).delete();
		}
		
		flashInsert(success="Your @lcasePlural@ were deleted successfully!");			
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="@lcasePlural@"
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
			controller="@lcasePlural@"
		);
	}
	
	function photos()
	{						
		usesLayout("/layouts/layout.blank");
		if(isDefined("params.id")) {
			photos = model("@ucaseSingular@Mediafile").findAll(where="modelid = '#params.id#' AND mediafileType = '@lcaseSingular@'",order="sortorder ASC"); 
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
			qq@ucasePlural@ = q@ucasePlural@;	
			rememberParams = "";				
			
			// Set display type
			if(!isNull(params.display))
			{
				session.display = params.display;			
			}			
			
			// Set sort
			if(!isNull(params.sort))
			{
				session.@lcasePlural@.sortby = params.sort;			
			}
			
			// Set order
			if(!isNull(params.order))
			{
				session.@lcasePlural@.order = params.order;			
			}
			
			// Set "hosted" filter
			if(!isNull(params.hosted))
			{
				session.@lcasePlural@.hosted = params.hosted;
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
				if(len(wherePermission("@ucaseSingular@")))
				{
					whereClause = wherePermission("@ucaseSingular@") & " AND (" & whereKeywords & ")";
				} else {
					whereClause = whereKeywords;	
				}					
				
				qq@ucasePlural@ = model("@ucaseSingular@").findAll(
					where	= whereClause,
					order	= session.@lcasePlural@.sortby & " " & session.@lcasePlural@.order, 
					select	= @lcaseSingular@Columns,
					include = "@lcaseSingular@categoryjoin(@lcaseSingular@category)"
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
				
				qq@ucasePlural@ = queryOfQueries(
					query	= "qq@ucasePlural@",
					where	= whereCategories
				);
			}
			
			// Clear out the duplicates
			qq@ucasePlural@ = queryOfQueries(
				query	= "qq@ucasePlural@", 
				select	= "DISTINCT #distinct@ucaseSingular@Columns#", 
				order	= session.@lcasePlural@.sortby & " " & session.@lcasePlural@.order
			);
			
			q@ucasePlural@ = qq@ucasePlural@;
			
			if(len(rememberParams))
			{
				pagination.setAppendToLinks("&#rememberParams#");
			}
			
			//renderPage(route="admin~Action", controller="@lcasePlural@", action="index");		
		}
	}
}
</cfscript>