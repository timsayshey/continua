<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{
			super.init();
			
			// Set
			table("notes_categories");
			
			// Relations
			belongsTo(name="Note", foreignKey="noteid");
			belongsTo(name="NoteCategory", foreignKey="categoryid", joinType="inner");	
		}					
	</cfscript>
	
</cfcomponent>