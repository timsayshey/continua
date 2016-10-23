<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{
			super.init();
			
			// Set
			table("providers_categories");
			
			// Relations
			belongsTo(name="Provider", foreignKey="providerid");
			belongsTo(name="ProviderCategory", foreignKey="categoryid", joinType="inner");	
		}					
	</cfscript>
	
</cfcomponent>