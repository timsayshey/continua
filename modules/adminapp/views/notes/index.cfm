<cfoutput>
	
	<cfscript>
		// Get rearrange button and script if necessary
		initializeRearrange = includePartial(partial="/_partials/sortableScript", urlcontroller="notes", reEndRow=qNotes.recordcount);
		
		contentFor(formy = true);
		contentFor(headerTitle	= '<span class="elusive icon-note"></span> Notes');		
		contentFor(headerButtons = 
			"<li class='headertab'>
				#initializeRearrange#
				#linkTo(
					text		= '<span class=''elusive icon-plus''></span> Add Note',
					route		= 'admin~action',
					controller	= 'notes',
					action		= 'new', 
					class		= 'btn btn-default'
				)#		

				#linkTo(
					text		= '<span class=''elusive icon-plus''></span> Edit Fields',
					href		= '/manager/fields/index/notefield?modelid=3',
					class		= 'btn btn-default'
				)#	
			</li>"
		);
	</cfscript>
	
	<div class="row-regular">
	
		#startFormTag(route="moduleAction", module="admin", controller="notes", action="deleteSelection", enctype="multipart/form-data")#	
			
			<cfif checkPermission("note_delete_others")>
                <div class="col-md-10">
                    <input type="checkbox" class="checkall" />				
                    <button class="btn btn-primary btn-sm deleteselection confirmDelete" type="submit" value="deleteselection">Delete selection</button>
                </div>
			</cfif>
            
			<cfif session.display eq "grid">
				<cfset gridActive = "active">
				<cfset listActive = "">
			<cfelse>
				<cfset gridActive = "">
				<cfset listActive = "active">
			</cfif>
			
			<div class="btn-group pull-right">
				<a href='#urlFor(route="moduleAction", module="admin", controller="notes", action="index")#?display=grid' class="btn btn-default #gridActive#"><span class="elusive icon-th-large"></span></a>
				<a href='#urlFor(route="moduleAction", module="admin", controller="notes", action="index")#?display=list' class="btn btn-default #listActive#"><span class="elusive icon-th-list"></span></a>
			</div>
			
			<br class="clear" /><br />
			
			<div id="note" class="sortable col-md-12">
			
				<cfif !isDefined("client") and isObject(variables.Note)>
					#errorMessagesFor("Note")#
					<br /><br />
				</cfif>
				<cfif !qNotes.recordcount>
					<div class="well text-center">
						<h3>Whoops! You haven't added any Notes yet.</h3>
						#linkTo(
							text		= 'Click here to get started',
							route		= 'admin~action',
							controller	= 'notes',
							action		= 'new', 
							class		= 'btn btn-primary'
						)#
					</div>	
				</cfif>
				<cfset info.noteThumbPath = isNull(info.noteThumbPath) ? "" : info.noteThumbPath>
				<cfloop query="qNotes" startrow="#request.reStartRow#" endrow="#request.reEndRow#">		
					<cfset notethumbpath = "#info.noteThumbPath#sm/#qNotes.id#.jpg">
					#includePartial(
						partial="/_partials/indexListItem", 
						currentid		= qNotes.id, 
						tags			= "",
						gridActive		= gridActive,
						thumbPath		= fileExists(expandPath(notethumbpath)) ? notethumbpath : '/assets/img/note_thumbholder.jpg',
						title			= qNotes.encounterType,
						description		= qNotes.staffInvolved,
						controllerName	= "notes",
						href			= "href='#urlFor(
							route		= "admin~Id",
							module		= "admin",
							controller	= "notes",
							action		= "edit",
							id			= qNotes.id
						)#'"	
					)#
					
				</cfloop>
				
			</div>
		
		#endFormTag()#	
		
		<br class="clear" />
		
		<cfif isNull(params.rearrange)>
			#includePartial(
				partial="/_partials/indexPager", 
				currentController	= "notes"
			)#	
		</cfif>				
		
	</div>	
	
	<cfif isNull(params.rearrange)>
		
		<cfsavecontent variable="refiner">
		
			<div class="row">
				<article class="col-sm-12">
				
					<div class="data-block filter-bar">
						<section>
						
							<a href="##" class="toggle">Filter results &raquo;</a>
							<div class="togglediv" <cfif len(rememberParams)>id="show"</cfif>>
								#startFormTag(route="moduleAction", module="admin", controller="notes", action="index", enctype="multipart/form-data", class="form-inline")#	
									<div class="row-regular">
																		
										<div class="col-md-2 col-sm-2">
											#bselecttag(
												name	 = 'sort',
												label	 = 'Sort by',
												options	 = [
													{text = "Default", value = "sortorder"},
													{text = "Name", value = "name"},
													{text = "Created", value = "id"}
												],
												selected = session.notes.sortby,
												class	 = "selectize",
												append	 = ""
											)#
										</div>
										<div class="col-md-2 col-sm-2">									
											#bselecttag(
												name	 = 'order',
												label	 = 'Order',
												options	 = [
													{text = "Ascending", value = "ASC"},
													{text = "Descending", value = "DESC"}
												],
												selected = session.notes.order,
												class	 = "selectize",
												append	 = ""
											)#
										</div>									
										<!--- <div class="col-md-2 col-sm-2">
											#bselecttag(
												name	 = 'hosted',
												label	 = 'Hosted on',
												options	 = [
													{text = "", value = ""},
													{text = "Youtube", value = "youtube"},
													{text = "#capitalize(siteUrl)#", value = "local"}
												],
												selected = params.hosted,
												class	 = "selectize",
												append	 = ""
											)#
										</div>
										<div class="col-md-2 col-sm-2">
											#bselecttag(
												name			= "filtercategories",
												class			= "multiselectize",
												multiple		= "true",
												selected		= params.filtercategories,
												label			= "Categories",
												options			= notecategories,
												valueField 		= "id", 
												textField 		= "name"
											)#
										</div> --->
										<div class="col-md-2 col-sm-2">									
											#btextfieldtag(
												name			= 'search', 
												label			= 'Search',
												placeholder		= "Ex: Ex: green burrito",
												value			= params.search
											)#
										</div>
										<div class="col-md-1 col-sm-1">									
											<button class="btn btn-default btn-sm pull-right apply-btn" type="submit" title="Apply filter" name="filtertype" value="apply">
												<span class="elusive icon-ok"></span> Apply
											</button>
										</div>
										<div class="col-md-1 col-sm-1">		
											<button class="btn btn-default btn-sm pull-right apply-btn" type="submit" title="Clear filter" name="filtertype" value="clear">
												<span class="elusive icon-trash"></span> Clear
											</button>
										</div>
									</div>
									
								#endFormTag()#	
							</div>
						</section>
					</div>
				</article>
			</div>
		
		</cfsavecontent>
		
		<cfset contentFor(extraSection=refiner)>
	</cfif>	
	
</cfoutput>