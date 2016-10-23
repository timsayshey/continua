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
			providerfields = model("ProviderField").findAll(where="providerid = #params.id#", order="sortorder ASC");
		}
	}	
	
	function updateOrder()
	{
		orderValues = DeserializeJSON(params.orderValues);
				
		for(i=1; i LTE ArrayLen(orderValues); i = i + 1)
		{
			fieldValue = orderValues[i];
			
			ProviderField = model("ProviderField").findOne(where="id = #fieldValue.fieldId#");
					
			if(isObject(ProviderField))
			{
				ProviderField.update(sortorder=fieldValue.newIndex,validate=false);
			}
		}
		abort;
	}
	
	function toggleRecord()
	{
		var loc = {};
		providerfields = model("ProviderField").findByKey(params.id);
		if(providerfields[params.col] eq 1)
		{
			loc.toggleValue = 0;
		} else {
			loc.toggleValue = 1;
		}
		
		loc.newInsert = StructNew();
		StructInsert(loc.newInsert,params.col,loc.toggleValue);
		providerfields.update(loc.newInsert);		
		
		flashInsert(success="Provider fields updated successfully.");
		redirectTo(route="admin~Index", controller="providers");
	}
	
	function new()
	{
		// Queries
		providerfield = model("ProviderField").new(colStruct("ProviderField"));
		
		// If not allowed redirect
		wherePermission("Provider");
		
		// Show provider
		renderPage(action="editor");
	}
	
	function edit()
	{						
		if(isDefined("params.id")) 
		{
			// Queries
			providerfield = model("ProviderField").findAll(where="id = '#params.id#'#wherePermission("Provider","AND")#", maxRows=1, returnAs="Object");
			if(ArrayLen(providerfield))
			{				
				providerfield = providerfield[1];
			}
			
			// Provider not found?
			if (!IsObject(providerfield))
			{
				flashInsert(error="Not found");
				redirectTo(route="admin~id", module="admin", controller="ProviderFields", action="index", id=params.providerid);
			}			
		}
		
		renderPage(action="editor");		 
	}
	
	function save()
	{								
		// Get provider object
		if(!isNull(params.providerfield.id)) 
		{
			providerfield = model("ProviderField").findByKey(params.providerfield.id);
			saveResult = providerfield.update(params.providerfield);
		} else {
			providerfield = model("ProviderField").new(params.providerfield);
			saveResult = providerfield.save();
			isNewProviderfield = true;
		}
		
		// Insert or update provider object with providers
		if (saveResult)
		{	
			flashInsert(success='Field saved.');
			redirectTo(route="admin~Id", module="admin", controller="providerfields", action="edit", id=providerfield.id, params="providerid=#providerfield.providerid#");
		} else {						
			
			errorMessagesName = "providerfield";
			param name="providerfield.id" default="0";
			
			flashInsert(error="There was an error.");
			renderPage(route="admin~Action", module="admin", controller="ProviderFields", action="editor");		
		}		
	}
	
	function delete()
	{
		providers = model("ProviderField").findByKey(params.id);
		
		if(providers.delete())
		{
			flashInsert(success="The field was deleted successfully.");							
		} else 
		{
			flashInsert(error="The field could not be found.");
		}
		
		redirectTo(route="admin~id", module="admin", controller="ProviderFields", action="index", id=params.providerid);
	}
}
</cfscript>