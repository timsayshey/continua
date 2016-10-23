<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{
			// Set
			table("mediafiles");
			property(name="mediafileType", defaultValue="note");
			
			// Other
			super.init();
			
			// Notes				
			this.setWhere = setWhere;
		}
		
		function setWhere()
		{
			return "mediafileType='note'#wherePermission('note','AND')#";
		}	
		
		function mediafileInfo()
		{
			return {
				singular		= "Note",
				plural			= "Notes",
				singularShort	= "Note",
				pluralShort		= "Notes"
			};
		}	
	</cfscript>	
</cfcomponent>	