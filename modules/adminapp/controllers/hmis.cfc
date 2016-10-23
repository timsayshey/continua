<cfscript>
component extends="_main" output="false" 
{
	function init() 
	{
		super.init();
	}
	
	function index()
	{
		qPatients = model("hmis").getAll(type="clients");
		distinctPropertyColumns = qPatients.columnList;
		// Paginate me batman
		pagination = application.pagination;
		pagination.setQueryToPaginate(qPatients);	
		pagination.setItemsPerPage(session.perPage);		
		paginator = pagination.getRenderedHTML();

		if(isNull(params.rearrange))
		{
			filterResults();
		}
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
			qqPatients = qPatients;	
			rememberParams = "";				
			
			// Set display type
			if(!isNull(params.display))
			{
				session.display = params.display;			
			}			
			
			// Set sort
			if(!isNull(params.sort))
			{
				session.Patients.sortby = params.sort;			
			}
			
			// Set order
			if(!isNull(params.order))
			{
				session.Patients.order = params.order;			
			}
			
			// Set "hosted" filter
			if(!isNull(params.hosted))
			{
				session.Patients.hosted = params.hosted;
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
				if(len(wherePermission("Property")))
				{
					whereClause = wherePermission("Property") & " AND (" & whereKeywords & ")";
				} else {
					whereClause = whereKeywords;	
				}					
				
				qqPatients = model("Property").findAll(
					where	= whereClause,
					order	= session.Patients.sortby & " " & session.Patients.order, 
					select	= propertyColumns,
					include = "propertycategoryjoin(propertycategory)"
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
				
				qqPatients = queryOfQueries(
					query	= "qqPatients",
					where	= whereCategories
				);
			}
			
			// Clear out the duplicates
			qqPatients = queryOfQueries(
				query	= "qqPatients", 
				select	= "DISTINCT #distinctPropertyColumns#", 
				order	= session.Patients.sortby & " " & session.Patients.order
			);
			
			qPatients = qqPatients;
			
			if(len(rememberParams))
			{
				pagination.setAppendToLinks("&#rememberParams#");
			}
			
			//renderPage(route="admin~Action", module="admin", controller="Patients", action="index");		
		}
	}
}
</cfscript>