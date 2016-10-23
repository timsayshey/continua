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
	#hiddenfieldtag(name="categoryController", id="categoryController", value="noteCategories")#	
	#hiddenfieldtag(name="categoryModel", id="categoryModel", value="noteCategory")#	
	#hiddenFieldTag(name="addCategoryType", id="addCategoryType", value="dropdown")#
    
	<cfset contentFor(formy = true)>
    
	<cfif isNull(params.id)>
		<cfset contentFor(headerTitle = '<span class="elusive icon-note"></span> Add Note')>
	<cfelse>
		<cfset contentFor(headerTitle = '<span class="elusive icon-note"></span> Edit Note')>
	</cfif>
    
    <cfset contentFor(headerButtons = 
		'<li class="headertab">			
			#linkTo(
				text		= '<span class=''elusive icon-arrow-left''></span> Back to Notes',
				route		= "admin~Action", 
                controller	= "notes", 
                action		= "index",
				class		= 'btn btn-default'
			)#
		</li>')>

	<cfif !isNew>
        #hiddenfield(objectName='myNote', property='id', id="noteid")#
        #hiddenFieldTag("id",params.id)#

        <!--- <div class="col-sm-6">	
			#bselect(
				label		= 'Home Status',
				objectName 	= 'myNote',
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
					objectName	= 'myNote', 
					property 	= 'encounterType', 
					label		= ' Encounter Type',
					type 		=  'text'
				)#
			</div>
			
	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myNote', 
					property 	= 'followUpNeeded', 
					label		= ' Follow Up Needed',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myNote', 
					property 	= 'entryDate', 
					label		= ' Entry Date',
					type 		=  'datetime-local'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myNote', 
					property 	= 'clientOutlook', 
					label		= ' Client Outlook',
					type 		=  'number'
				)#
			</div>
			
	

	

	

	

	

	

	

	

	

	
		

		
			<div class="col-sm-6">
				#btextfield(
					objectName	= 'myNote', 
					property 	= 'staffInvolved', 
					label		= ' Staff Involved',
					type 		=  'text'
				)#
			</div>
			
	

	
		

		
			<div class="col-sm-12">
				
				#btextarea(
					objectName 		= 'myNote', 
					property 		= 'note', 	
					label 		 	= ' Note',
			        style			= "height:60px;"
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
					modelName	= "noteMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"sorting_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "updateSorting",
					modelName	= "noteMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"delete_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "delete",
					modelName	= "noteMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"update_endpoint":"#urlFor(
					route		= "admin~Mediafile",
					action		= "save",
					modelName	= "noteMediafile",
					params 		= "modelid=#params.id#"
				)#",
				"photos_endpoint":"#urlFor(
					route="admin~Id", 
					controller="notes", 
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
						<cfif !isNew><li><a href='#urlFor(route="moduleId", module="admin", controller="notes", action="delete", id=params.id)#' class="btn-danger">Trash it</a></li></cfif>
						<li><a href='#urlFor(route="moduleAction", module="admin", controller="notes", action="index")#'>Back to users</a></li>
					</ul>
				</div>
			</section>
		</div>
	</cfsavecontent>
	
	<cfsavecontent variable="rightColumn">
		<div class="rightbarinner">
		
			#includePartial(partial="/_partials/editorSubmitBox", controllerName="notes")#	

			<div class="data-block">
		        <section>
			        #bcheckbox(
			            objectName	= 'myNote', 
			            property = "published",
			            help		= "If checked, this note will be visible on the website",
			            label		= "Is Published?"
			        )#
		        </section>
			</div>
            
		</div>
		
		</div>

		<cfif !isNew>
			<div class="rightBottomBox  hidden-xs hidden-sm">
				#includePartial(partial="/_partials/editorSubmitBox", controllerName="notes", rightBottomClass="col-sm-3")#	
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
	<cfset contentFor(formWrapStart = startFormTag(route="moduleAction", module="admin", controller="notes", action="save", enctype="multipart/form-data", id = "fileupload"))>		
	<cfset contentFor(formWrapEnd = endFormTag())>
	
</cfoutput>





