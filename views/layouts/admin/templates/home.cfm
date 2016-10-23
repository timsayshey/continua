<cfoutput>
<div class="col-md-12">
	<div class="input-group ">
		<input type="text" class="form-control" placeholder="Search for a client...">
		<span class="input-group-btn">
			<div class="input-group-btn">
				<button class="btn btn-default" type="button"><span class="elusive icon-search" aria-hidden="true"></span></button></span>
				<button class="btn btn-default" type="button"><span class="elusive icon-plus" aria-hidden="true"></span></button></span>
			</div>
		</div>
	</div>
	Suggested / auto compelte clients <a href="/manager/clients/view">Link</a><br><br>
	<div id="map" style="width:100%; height:350px; margin: 0 auto; "></div>
	<script src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false&key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA"></script>
	<script src="/assets/googlemap/js/index.js"></script>
	
	<br>
	<div class="row">
		<div class="col-md-3 well text-center" style="background:##fff; margin-left: 40px;">
			<b>Location 1</b><br>
			<img src="/assets/Stacked_Bar.jpg" width="100%" height="100">
		</div>
		<div class="col-md-1">&nbsp;</div>
		<div class="col-md-3 well text-center" style="background:##fff;"">
			<b>Location 2</b><br>
			<img src="/assets/Stacked_Bar.jpg" width="100%" height="100">
			
		</div>
		<div class="col-md-1">&nbsp;</div>
		<div class="col-md-3 well text-center" style="background:##fff;"">
			<b>Location 3</b><br>
			<img src="/assets/Stacked_Bar.jpg" width="100%" height="100">
			
		</div>
	</div>
	#includePartial(partial="/_partials/formSeperator")#	
	<div class="row">
		<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="pages", action="new")#'>
			<span class="large-icon elusive icon-file-new-alt"></span>
			<strong>Intake Form</strong>
		</a>
		<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="videos", action="new")#'>
			<span class="large-icon elusive icon-video-alt"></span>
			<strong>Documents</strong>
		</a>
		<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="users", action="index")#'>
			<span class="large-icon elusive icon-group-alt"></span>
			<strong>Users</strong>
		</a>
		<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="options", action="index")#'>
			<span class="large-icon elusive icon-cog-alt"></span>
			<strong>Settings</strong>
		</a>
		<br class="clear">
	</div>
<br class="clear">
<!--- <div class="row">
			<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="pages", action="new")#'>
							<span class="large-icon elusive icon-file-new-alt"></span>
							<strong>Add page</strong>
			</a>
			<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="videos", action="new")#'>
							<span class="large-icon elusive icon-video-alt"></span>
							<strong>Add video</strong>
			</a>
			<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="users", action="index")#'>
							<span class="large-icon elusive icon-group-alt"></span>
							<strong>Users</strong>
			</a>
			<a class="icon-btn-lg col-xs-3" href='#urlFor(route="admin~action", controller="options", action="index")#'>
							<span class="large-icon elusive icon-cog-alt"></span>
							<strong>Settings</strong>
			</a>
</div>			 --->
<!--- <cfif checkPermission("log_read_others")>
	<cfset saveTypeButtons = {
		delete = "label-danger",
		update = "label-info",
		create = "label-success"
	}>
	
	<cfsavecontent variable="rightColumn">
		<div class="data-block todo-block">
						<header>
											<h2><span class="elusive icon-align-justify"></span> Recent activity</h2>
						</header>
						<section>
											<cfloop query="qLog">
												<strong>#firstname# #lastname#</strong> performed <span class="label #saveTypeButtons[savetype]#">#savetype#</span> to the "#modelid#" record in the #model# model via #controller#' #action# #timeAgoInWords(createdAt)# ago.
												<br /><hr  />
											</cfloop>
											<a data-toggle="modal" href="##myModal" class="btn btn-primary" >See all</a>
						</section>
		</div>
		
		
<!--- Modal --->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">All user activity</h4>
			</div>
			<div class="modal-body">
				
				<cfloop query="qLogFull">
				<strong>#firstname# #lastname#</strong> performed <span class="label #saveTypeButtons[savetype]#">#savetype#</span> to the "#modelid#" record in the #model# model via #controller#' #action# #timeAgoInWords(createdAt)# ago.
				<br /><hr  />
				</cfloop>
				
			</div>
		</div>
	</div>
</div>
</cfsavecontent>
<cfset contentFor(rightColumn = rightColumn)>
</cfif>	 --->
</cfoutput>