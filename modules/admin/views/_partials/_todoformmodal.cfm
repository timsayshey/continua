<cfparam name="modalTitle" default="Todo Item">
<cfparam name="modelName" default="">
<cfoutput>
	<!--- todo Modal --->
	<div class="modal primary" id="addtodo" data-backdrop="static" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">#modalTitle#</h4>
				</div>
				<div class="modalloader"></div>
				<div class="modal-body" id="content">
					<div id="formerrors"></div>
					<div id="form" data-actionUrl='#urlFor(route="admin~todo", action="save", modelName=modelName, params="ajax")#'></div>						
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="addtodobtn">Save</button>
				</div>
			</div>
		</div>
	</div>
</cfoutput>