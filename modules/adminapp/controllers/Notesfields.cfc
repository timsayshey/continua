<cfscript>
component extends="_main" output="false" 
{
	function init() 
	{
		super.init();
	}
	
	function index()
	{	
		if(!isNull(params.id))
		{
			notefields = model("NoteField").findAll(where="noteid = #params.id#", order="sortorder ASC");
		}
	}	
	
	function updateOrder()
	{
		orderValues = DeserializeJSON(params.orderValues);
				
		for(i=1; i LTE ArrayLen(orderValues); i = i + 1)
		{
			fieldValue = orderValues[i];
			
			NoteField = model("NoteField").findOne(where="id = #fieldValue.fieldId#");
					
			if(isObject(NoteField))
			{
				NoteField.update(sortorder=fieldValue.newIndex,validate=false);
			}
		}
		abort;
	}
	
	function toggleRecord()
	{
		var loc = {};
		notefields = model("NoteField").findByKey(params.id);
		if(notefields[params.col] eq 1)
		{
			loc.toggleValue = 0;
		} else {
			loc.toggleValue = 1;
		}
		
		loc.newInsert = StructNew();
		StructInsert(loc.newInsert,params.col,loc.toggleValue);
		notefields.update(loc.newInsert);		
		
		flashInsert(success="Note fields updated successfully.");
		redirectTo(route="admin~Index", controller="notes");
	}
	
	function new()
	{
		// Queries
		notefield = model("NoteField").new(colStruct("NoteField"));
		
		// If not allowed redirect
		wherePermission("Note");
		
		// Show note
		renderPage(action="editor");
	}
	
	function edit()
	{						
		if(isDefined("params.id")) 
		{
			// Queries
			notefield = model("NoteField").findAll(where="id = '#params.id#'#wherePermission("Note","AND")#", maxRows=1, returnAs="Object");
			if(ArrayLen(notefield))
			{				
				notefield = notefield[1];
			}
			
			// Note not found?
			if (!IsObject(notefield))
			{
				flashInsert(error="Not found");
				redirectTo(route="admin~id", module="admin", controller="NoteFields", action="index", id=params.noteid);
			}			
		}
		
		renderPage(action="editor");		 
	}
	
	function save()
	{								
		// Get note object
		if(!isNull(params.notefield.id)) 
		{
			notefield = model("NoteField").findByKey(params.notefield.id);
			saveResult = notefield.update(params.notefield);
		} else {
			notefield = model("NoteField").new(params.notefield);
			saveResult = notefield.save();
			isNewNotefield = true;
		}
		
		// Insert or update note object with notes
		if (saveResult)
		{	
			flashInsert(success='Field saved.');
			redirectTo(route="admin~Id", module="admin", controller="notefields", action="edit", id=notefield.id, params="noteid=#notefield.noteid#");
		} else {						
			
			errorMessagesName = "notefield";
			param name="notefield.id" default="0";
			
			flashInsert(error="There was an error.");
			renderPage(route="admin~Action", module="admin", controller="NoteFields", action="editor");		
		}		
	}
	
	function delete()
	{
		notes = model("NoteField").findByKey(params.id);
		
		if(notes.delete())
		{
			flashInsert(success="The field was deleted successfully.");							
		} else 
		{
			flashInsert(error="The field could not be found.");
		}
		
		redirectTo(route="admin~id", module="admin", controller="NoteFields", action="index", id=params.noteid);
	}
}
</cfscript>