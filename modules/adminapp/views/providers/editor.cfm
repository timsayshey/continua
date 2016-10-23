<cfoutput>
	<cfif !isNull(params.id)>
		<cfset isNew = false>
	<cfelse>
		<cfset isNew = true>
	</cfif> 

	<cfif !isNew>
		<script src="/views/layouts/admin/assets/js/category.js" type="text/javascript"></script>
		<script src="/assets/vendor/jquery.simplyCountable.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function(){
				$('##aboutlimit').simplyCountable({
					counter: '##aboutcounter',
					maxCount: 2255,
					strictMax: true
				});
			});
		</script>
	</cfif>
    
	<!--- For category.js --->
	#hiddenfieldtag(name="categoryController", id="categoryController", value="providerCategories")#	
	#hiddenfieldtag(name="categoryModel", id="categoryModel", value="providerCategory")#	
	#hiddenFieldTag(name="addCategoryType", id="addCategoryType", value="dropdown")#
    
	<cfset contentFor(formy = true)>
    
	<cfif isNull(params.id)>
		<cfset contentFor(headerTitle = '<span class="elusive icon-provider"></span> Add Provider')>
	<cfelse>
		<cfset contentFor(headerTitle = '<span class="elusive icon-provider"></span> Edit Provider')>
	</cfif>
    
    <cfset contentFor(headerButtons = 
		'<li class="headertab">			
			#linkTo(
				text		= '<span class=''elusive icon-arrow-left''></span> Back to Providers',
				route		= "admin~Action", 
                controller	= "providers", 
                action		= "index",
				class		= 'btn btn-default'
			)#
		</li>')>

	<cfif !isNew>
        #hiddenfield(objectName='myProvider', property='id', id="providerid")#
        #hiddenFieldTag("id",params.id)#

        <!--- <div class="col-sm-6">	
			#bselect(
				label		= 'Home Status',
				objectName 	= 'myProvider',
				property 	= 'home_status',
				options		= [
					{text="For Sale",value="For Sale"},
					{text="Pending",value="Pending"},
					{text="Sold",value="Sold"}
				]
			)#
		</div> --->
    </cfif>
    
    
	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_open_wed', 
					label		= ' Hours Open Wed',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'longitude', 
					label		= ' Longitude',
					type 		=  'number'
				)#
			</div>
			
	

	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'latitude', 
					label		= ' Latitude',
					type 		=  'number'
				)#
			</div>
			
	

	

	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'name', 
					label		= ' Name',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'expected_used_beds', 
					label		= ' Expected Used Beds',
					type 		=  'number'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'expected_demographic', 
					label		= ' Expected Demographic',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_open_sun', 
					label		= ' Hours Open Sun',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_open_mon', 
					label		= ' Hours Open Mon',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'available_beds', 
					label		= ' Available Beds',
					type 		=  'number'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_closed_tue', 
					label		= ' Hours Closed Tue',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'short_name', 
					label		= ' Short Name',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_open_thur', 
					label		= ' Hours Open Thur',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_closed_thur', 
					label		= ' Hours Closed Thur',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_closed_sun', 
					label		= ' Hours Closed Sun',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'phone_number', 
					label		= ' Phone Number',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'used_beds', 
					label		= ' Used Beds',
					type 		=  'number'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_closed_wed', 
					label		= ' Hours Closed Wed',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'website', 
					label		= ' Website',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_closed_fri', 
					label		= ' Hours Closed Fri',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_closed_mon', 
					label		= ' Hours Closed Mon',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_open_tue', 
					label		= ' Hours Open Tue',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'address', 
					label		= ' Address',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myProvider', 
					property 	= 'hours_open_fri', 
					label		= ' Hours Open Fri',
					type 		=  'text'
				)#
			</div>
			
	

	
	#includePartial(partial="/_partials/formSeperator")#	

	<!--- Get Custom Fields --->
	#includePartial(partial="/_partials/formFieldsRender")# 
	<br class="clear">

	<cfif isNew>
		<br class="clear">
	<cfelse>

		#includePartial(partial="/_partials/formSeperator")#

	    <link rel="stylesheet" href="/assets/vendor/dropzone/dropzone.css">
		<script src="/assets/vendor/dropzone/dropzone.js" type="text/javascript"></script>
		<link href="/assets/vendor/sortpics/base.css" rel="stylesheet">
		<script src="/views/layouts/admin/assets/js/mediafile.js" type="text/javascript"></script>
		<script>
			window.mediaSettings = {
				"upload_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "uploadMedia",
					modelName	= "providerMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"sorting_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "updateSorting",
					modelName	= "providerMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"delete_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "delete",
					modelName	= "providerMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"update_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "save",
					modelName	= "providerMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"photos_endpoint":"#urlFor(
					route="admin~Id", 
					controller="providers", 
					action="photos",
					id=params.id
				)#"
			};
		</script>

	    <a data-toggle="modal" href="##mediaModal" class="btn btn-primary">Add Photos</a>
	    <br><br>

		<div id="photos"></div>
	    
	    <br>
	    Note: First image is cover image.<br>

	</cfif>	
    
	<!--- Right area --->
	<cfsavecontent variable="submitBox">
		<div class="{{class-here}} data-block">
			<section>
				<div class="btn-group dropdown">
					<button type="submit" name="submit" value="save-continue" class="btn btn-primary">Save & continue</button>
					<button class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button> 
					<ul class="dropdown-menu dropdown-blue pull-right">
						<li><button type="submit" name="submit" value="save" class="btn-linky">Save & exit</button></li>					
						<cfif !isNew><li><a href='#urlFor(route="moduleId", module="admin", controller="providers", action="delete", id=params.id)#' class="btn-danger">Trash it</a></li></cfif>
						<li><a href='#urlFor(route="moduleAction", module="admin", controller="providers", action="index")#'>Back to users</a></li>
					</ul>
				</div>
			</section>
		</div>
	</cfsavecontent>
	
	<cfsavecontent variable="rightColumn">
		<div class="rightbarinner">
		
			#includePartial(partial="/_partials/editorSubmitBox", controllerName="providers")#	

			<div class="data-block">
		        <section>
			        #bcheckbox(
			            objectName	= 'myProvider', 
			            property = "published",
			            help		= "If checked, this provider will be visible on the website",
			            label		= "Is Published?"
			        )#
		        </section>
			</div>
            
		</div>
		
		</div>

		<cfif !isNew>
			<div class="rightBottomBox  hidden-xs hidden-sm">
				#includePartial(partial="/_partials/editorSubmitBox", controllerName="providers", rightBottomClass="col-sm-3")#	
			</div> 
		</cfif>

		<div class="modal fade" id="mediaModal" tabindex="-1" role="dialog" aria-labelledby="mediaModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="mediaModalLabel">Upload Media</h4>
					</div>
					<div class="modal-body">								
					
						<div id="dZUpload" class="dropzone">
							<div class="dz-default dz-message">
								<span class="elusive icon-upload" style="font-size:60px"></span><br>
								Drop files here or click to upload.
							</div>
						</div>
																
					</div>
				</div>
			</div>
		</div> 

		<div class="modal fade" id="captionModal" tabindex="-1" role="dialog" aria-labelledby="captionModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="captionModalLabel">Edit Caption</h4>
					</div>
					<div class="modal-body">
						<input id="caption" data-id="" class="form-control"><br>
						<a href="javascript:void(0)" id="saveCaption" class="btn btn-primary">Save</a>
					</div>
				</div>
			</div>
		</div> 
		
	</cfsavecontent>
	
	<cfset contentFor(rightColumn = rightColumn)>		
	<cfset contentFor(formWrapStart = startFormTag(route="moduleAction", module="admin", controller="providers", action="save", enctype="multipart/form-data", id = "fileupload"))>		
	<cfset contentFor(formWrapEnd = endFormTag())>
	
</cfoutput>





