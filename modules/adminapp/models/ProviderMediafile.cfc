<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{
			// Set
			table("mediafiles");
			property(name="mediafileType", defaultValue="provider");
			
			// Other
			super.init();
			
			// Providers				
			this.setWhere = setWhere;
		}
		
		function setWhere()
		{
			return "mediafileType='provider'#wherePermission('provider','AND')#";
		}	
		
		function mediafileInfo()
		{
			return {
				singular		= "Provider",
				plural			= "Providers",
				singularShort	= "Provider",
				pluralShort		= "Providers"
			};
		}	
	</cfscript>	
</cfcomponent>	