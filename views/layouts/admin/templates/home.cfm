<cfoutput>
<div class="col-md-12">

	<script src="/assets/vendor/tique/tipuedrop/tipuedrop_content.js"></script>
	<link href="/assets/vendor/tique/tipuedrop/tipuedrop.css" rel="stylesheet">
	<script src="/assets/vendor/tique/tipuedrop/tipuedrop.min.js"></script>
	<script>
	$(document).ready(function() {
	     $('##tipue_drop_input').tipuedrop();
	     var tipuedrop = {"pages": [
		     {"title": "John Smyth Henry", "thumb": "https://pbs.twimg.com/media/CIYyHIRVAAAmH3K.jpg", "text": "July 3rd, 1963", "url": "/manager/clients/view"},
		     {"title": "Bob Johnson", "thumb": "https://s-media-cache-ak0.pinimg.com/originals/b9/ca/1e/b9ca1eae59ed943e9cc220382b97e828.jpg", "text": "May 5, 1932", "url": "/manager/clients/view"},
		     {"title": "Jane Doe", "thumb": "http://rotarymeansbusiness.com/wp-content/uploads/avatar-female.png", "text": "Oct 5, 1989", "url": "/manager/clients/view"}
		]};

	});
	</script>
	<form action="/manager/clients/view" style="width:100%">
		<div class="input-group ">
			<input type="text" class="form-control" placeholder="Search for a client..." id="tipue_drop_input" autocomplete="off">
			<div id="tipue_drop_content"></div>
			<span class="input-group-btn">
				<div class="input-group-btn">
					<button class="btn btn-default" type="button"><span class="elusive icon-search" aria-hidden="true"></span></button></span>
					<button class="btn btn-default" type="button"><span class="elusive icon-plus" aria-hidden="true"></span></button></span>
				</div>
			</div>

		</div><br><br>
	</form>
	<div id="map" style="width:100%; height:350px; margin: 0 auto; "></div>
	<script src="http://maps.googleapis.com/maps/api/js?libraries=places&sensor=false&key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA"></script>
	<script src="/assets/googlemap/js/index.js"></script>
	
	<br>
	<div class="row">
		<div class="col-md-3 well text-center" style="background:##fff; margin-left: 40px;">
			<b>St. Patrick Center</b><br>
			<img src="/assets/Stacked_Bar.jpg" width="100%" height="100">
		</div>
		<div class="col-md-1">&nbsp;</div>
		<div class="col-md-3 well text-center" style="background:##fff;"">
			<b>Biddle House</b><br>
			<img src="/assets/Stacked_Bar.jpg" width="100%" height="100">
			
		</div>
		<div class="col-md-1">&nbsp;</div>
		<div class="col-md-3 well text-center" style="background:##fff;"">
			<b>Peter and Paul Emergency Center</b><br>
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