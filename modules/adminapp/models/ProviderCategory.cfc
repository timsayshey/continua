<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{
			super.init();
			
			// Providers
			property(name="categoryType", defaultValue="provider");			
			this.setWhere = setWhere();	
			
			// Set
			table("categories");
			
			// Relations
			hasMany("ProviderCategoryJoins");
			belongsTo(name="ProviderCategoryJoin", foreignKey="id", joinKey="categoryid", joinType="inner");
			
			// Validations
			validatesUniquenessOf(property="urlid", scope="siteid");
			validatesUniquenessOf(property="name", scope="siteid");
			
			// Other
			beforeSave("sanitizeNameAndURLId");
		}	
		
		function setWhere()
		{
			return "categoryType='provider'#wherePermission('Category','AND')#";
		}				
		
		function categoryInfo()
		{
			return {
				singular		= "Provider Category",
				plural			= "Provider Categories",
				singularShort	= "Category",
				pluralShort		= "Categories"
			};
		}
	</cfscript>	
</cfcomponent>
	