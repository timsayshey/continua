<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{
			super.init();
			
			// Notes
			property(name="categoryType", defaultValue="note");			
			this.setWhere = setWhere();	
			
			// Set
			table("categories");
			
			// Relations
			hasMany("NoteCategoryJoins");
			belongsTo(name="NoteCategoryJoin", foreignKey="id", joinKey="categoryid", joinType="inner");
			
			// Validations
			validatesUniquenessOf(property="urlid", scope="siteid");
			validatesUniquenessOf(property="name", scope="siteid");
			
			// Other
			beforeSave("sanitizeNameAndURLId");
		}	
		
		function setWhere()
		{
			return "categoryType='note'#wherePermission('Category','AND')#";
		}				
		
		function categoryInfo()
		{
			return {
				singular		= "Note Category",
				plural			= "Note Categories",
				singularShort	= "Category",
				pluralShort		= "Categories"
			};
		}
	</cfscript>	
</cfcomponent>
	