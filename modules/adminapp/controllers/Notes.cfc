<cfscript>
component extends="_main" output="false" 
{
	function init() 
	{
		super.init();
	}
	
	function sharedObjects(noteid)
	{		
		userlist = model("User").findAll(order="email ASC");
		
		notecategories = model("NoteCategory").findAll(where="categoryType = 'note'#wherePermission("NoteCategory","AND")#");
		selectednotecategories = model("NoteCategoryJoin").findAll(where="noteid = #arguments.noteid#",include="Note,NoteCategory");
		selectednotecategories = ValueList(selectednotecategories.categoryid);
		
		sites = model("Site").findAll();
		usStates = getStatesAndProvinces();
		countries = getCountries();	

		dataFields = model("FormField").findAll(where="metafieldType = 'notefield' AND modelid = 3",order="sortorder ASC");
	}
	
	function note()
	{		
		if(!isNull(params.id))
		{
			note = model("note").findAll(where="id = '#params.id#'");
		}
	}
	
	function updateOrder()
	{
		orderValues = DeserializeJSON(params.orderValues);
				
		for(i=1; i LTE ArrayLen(orderValues); i = i + 1)
		{
			sortVal = orderValues[i];
			
			sortNote = model("Note").findOne(where="id = #sortVal.fieldId#");
					
			if(isObject(sortNote))
			{
				sortNote.update(sortorder=sortVal.newIndex);
			}
		}
		abort;
	}
	
	function category()
	{		
		sharedObjects(0);
		
		if(!isNull(params.id))
		{			
			noteCategory = model("NoteCategory").findAll(where="urlid = '#params.id#'#wherePermission("NoteCategory","AND")#");				
		} else {
			// Get default category
			noteCategory = model("NoteCategory").findAll(where="defaultadmin = 1#wherePermission("NoteCategory","AND")#");				
		}
		
		noteCategories = model("NoteCategory").findAll(where="parentid = '#noteCategory.id#'#wherePermission("NoteCategory","AND")#");
		
		if(noteCategory.recordcount)
		{				
			qNotes = model("Note").findAll(
				where	= buildWhereStatement(modelName="Note", prepend="categoryid = '#noteCategory.id#' AND"), 
				order	= "sortorder ASC", 
				include = "notecategoryjoin(notecategory)"
			);

			distinctNoteColumns = qNotes.columnList;
			noteColumns = qNotes.columnList;

			filterResults();
		}
	}
	
	function index()
	{
		if(isNull(session.notes)) {
			session.notes.sortby = "sortorder";
			session.notes.order = "asc";
		}

		sharedObjects(0);
		qNotes = model("Note").findAll(
			where	= buildWhereStatement("Note"), 
			order	= !isNull(params.rearrange) ? "sortorder ASC" : session.notes.sortby & " " & session.notes.order
		);

		distinctNoteColumns = qNotes.columnList;
		noteColumns = qNotes.columnList;
		
		//statusTabs("note");

		if(isNull(params.rearrange)) filterResults();
		
		// Paginate me batman
		pagination = application.pagination;
		pagination.setQueryToPaginate(qNotes);	
		pagination.setItemsPerPage(session.perPage);		
		paginator = pagination.getRenderedHTML();
		
		// If oauth comes back to homepage
		if(!isNull(params.token))
		{
			note = model("Note").findAll(where="id = #params.id#");
		}
	}
	
	function edit()
	{						
		if(isDefined("params.id")) 
		{
			// Queries
			sharedObjects(params.id);						
			myNote = model("Note").findAll(where="id = '#params.id#'#wherePermission("Note","AND")#", maxRows=1, returnAs="Object");

			if(ArrayLen(myNote))
			{				
				myNote = myNote[1];
			}

			photos = model("NoteMediafile").findAll(where="modelid = '#params.id#' AND mediafileType = 'note'",order="sortorder ASC"); 
			
			// Note not found?
			if (!IsObject(myNote))
			{
				flashInsert(error="Not found");
				redirectTo(route="admin~Index", controller="notes");
			}

			dataFields = model("FieldData").getAllFieldsAndUserData(
				modelid = 3,
				foreignid = params.id,
				metafieldType = "notefield"
			);

		}

		renderPage(action="editor");		
	}
	function new()
	{
		// Queries
		myNote = model("Note").new(colStruct("Note"));

		dataFields = model("FormField").findAll(where="metafieldType = 'notefield' AND modelid = 3",order="sortorder ASC");

		sharedObjects(0);
		
		// If not allowed redirect
		wherePermission("Note");
		
		// Show page
		renderPage(action="editor");
	}


	function delete()
	{
		myNote = model("Note").findByKey(params.id);
		
		if(note.delete())
		{
			flashInsert(success="The note was deleted successfully.");							
		} else 
		{
			flashInsert(error="The note could not be found.");
		}
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="notes"
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
		
		param name="params.note.notefileid" default="";
		param name="params.notecategories" default="";
		
		// Handle submit button type (publish,draft,trash,etc)
		if(!isNull(params.submit))
		{
			params.note.status = handleSubmitType("note", params.submit);	
		}
		
		if(!isNull(params.note.ownerid) AND isNumeric(params.note.ownerid))
		{
			params.note.createdby = params.note.ownerid;
		} else {
			params.note.ownerid = session.user.id;
		}

		if(!isNull(params.note.name)) {
			params.note.urlid = lcase(cleanUrlId(params.note.address));
		}

		// Get note object
		if(!isNull(params.note.id)) 
		{
			myNote = model("Note").findByKey(params.note.id);
			saveResult = note.update(params.note);	
			
			// Clear existing note category associations
			model("noteCategoryJoin").deleteAll(where="noteid = #params.note.id#");
		} else {

			myNote = model("Note").new(params.note);
			saveResult = myNote.save();
		}
		
		// Insert or update note object with notes
		if (saveResult) 
		{
			// Insert new note category associations			
			for(id in ListToArray(params.notecategories)) {				
				model("noteCategoryJoin").create(categoryid = id, noteid = note.id);				
			}

			// Save custom metafeild data
			if(!isNull(params.fielddata)) { 
				model("FieldData").saveFielddata(
					fields		= params.fielddata,
					foreignid	= note.id
				);
			}
			
			flashInsert(success="Note saved.");
			redirectTo(route="admin~Id", controller="notes", action="edit", id=note.id);	
		} else {						
			
			errorMessagesName = "myNote";
			param name="myNote.id" default="0";
			sharedObjects(myNote.id);
			
			flashInsert(error="There was an error.");
			renderPage(route="admin~Action", controller="notes", action="editor");		
		}		
	}
	
	function deleteSelection()
	{
		for(var i=1; i LTE ListLen(params.deletelist); i++)
		{
			model("Note").findByKey(ListGetAt(params.deletelist,i)).delete();
		}
		
		flashInsert(success="Your notes were deleted successfully!");			
		
		redirectTo(
			route="admin~Index",
			module="admin",
			controller="notes"
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
			controller="notes"
		);
	}
	
	function photos()
	{						
		usesLayout("/layouts/layout.blank");
		if(isDefined("params.id")) {
			photos = model("NoteMediafile").findAll(where="modelid = '#params.id#' AND mediafileType = 'note'",order="sortorder ASC"); 
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
			qqNotes = qNotes;	
			rememberParams = "";				
			
			// Set display type
			if(!isNull(params.display))
			{
				session.display = params.display;			
			}			
			
			// Set sort
			if(!isNull(params.sort))
			{
				session.notes.sortby = params.sort;			
			}
			
			// Set order
			if(!isNull(params.order))
			{
				session.notes.order = params.order;			
			}
			
			// Set "hosted" filter
			if(!isNull(params.hosted))
			{
				session.notes.hosted = params.hosted;
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
				if(len(wherePermission("Note")))
				{
					whereClause = wherePermission("Note") & " AND (" & whereKeywords & ")";
				} else {
					whereClause = whereKeywords;	
				}					
				
				qqNotes = model("Note").findAll(
					where	= whereClause,
					order	= session.notes.sortby & " " & session.notes.order, 
					select	= noteColumns,
					include = "notecategoryjoin(notecategory)"
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
				
				qqNotes = queryOfQueries(
					query	= "qqNotes",
					where	= whereCategories
				);
			}
			
			// Clear out the duplicates
			qqNotes = queryOfQueries(
				query	= "qqNotes", 
				select	= "DISTINCT #distinctNoteColumns#", 
				order	= session.notes.sortby & " " & session.notes.order
			);
			
			qNotes = qqNotes;
			
			if(len(rememberParams))
			{
				pagination.setAppendToLinks("&#rememberParams#");
			}
			
			//renderPage(route="admin~Action", controller="notes", action="index");		
		}
	}
}
</cfscript>