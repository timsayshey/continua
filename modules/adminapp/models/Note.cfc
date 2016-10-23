<cfcomponent extends="models.Model">
	<cfscript>					
		function init()
		{						
			// Notes
			table("api_notes");
			this.setWhere = setWhere;	
			
			// Relations		
			belongsTo(name="NoteCategoryJoin", foreignKey="id", joinKey="noteid", joinType="inner");
			belongsTo(name="User", foreignKey="ownerid", joinKey="id", joinType="inner");
			
			beforeValidation("sanitizePrice");
			afterFind("sanitizePrice");
			beforeSave("sanitizeNameAndURLId");	
			
			// Other
			super.init(); 			
		}		
		function setWhere()
		{
			return wherePermission('Note');
		}		
		function sanitizePrice()
		{
			if(!isNull(this.price))
			{
				this.price = cleanNumber(this.price,true);
				if(isNumeric(this.price)) {
					this.price = NumberFormat(this.price,"0.00");
				} else {
					this.price = 0;
				}
			}
		}	
	</cfscript>	
</cfcomponent>
	