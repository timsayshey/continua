<cfset contentFor(headerTitle = '<span class="elusive icon-child"></span> Client')>
<style>
.skinny {
padding:0px;
}
.grey-txt {
color:grey;
}
.title-txt {
color:blue;
font: bold 12px/30px Georgia, serif;
}
.good-txt {
color:green;
}
.bad-txt {
color:red;
}
.blogShort{ border-bottom:1px solid #ddd;}
.add{background: #333; padding: 10%; height: 300px;}

.nav-sidebar { 
    width: 100%;
    padding: 30px 0; 
    padding-top: 0;
    border-right: 1px solid #ddd;
}
.nav-sidebar a {
    color: #333;
    -webkit-transition: all 0.08s linear;
    -moz-transition: all 0.08s linear;
    -o-transition: all 0.08s linear;
    transition: all 0.08s linear;
}
.nav-sidebar .active a { 
    cursor: default;
    background-color: #0b56a8; 
    color: #fff; 
}
.nav-sidebar .active a:hover {
       
}
.nav-sidebar .text-overflow a,
.nav-sidebar .text-overflow .media-body {
    white-space: nowrap;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis; 
}

.btn-blog {
    color: #ffffff;
    
    
    border-radius:0;
    margin-bottom:10px
}
.btn-blog:hover,
.btn-blog:focus,
.btn-blog:active,
.btn-blog.active,
.open .dropdown-toggle.btn-blog {
    color: white;
    background-color:#0b56a8;
    border-color: #0b56a8;
}
article h2{color:#333333;}
h2{color:#0b56a8;}
 .margin10{margin-bottom:10px; margin-right:10px;}
 
 .container .text-style
{
  text-align: justify;
  line-height: 23px;
  margin: 0 13px 0 0;
  font-size: 19px;
}

</style>
<div class="panel panel-default">
	<div class="well">
		<div class="panel-heading skinny">
			<div class="row">
				<div class="col-sm-2">
					<img src="https://pbs.twimg.com/media/CIYyHIRVAAAmH3K.jpg" width="100%" class="img-rounded img-responsive">
				</div>
				<div class="col-sm-10">
					<div class="row">
						<div class="col-sm-3">
							<b>Name:</b> John Smith Henry<br>
							<b>Alias:</b> Johnny “Bones” Smith<br>
						</div>
						<div class="col-sm-3">
							<b>DOB:</b> July 3rd, 1963<br>
							<b>Age:</b> 53<br>
						</div>
						<div class="col-sm-3">
							<b>SSN:</b> xxx-xx-1234<br>
							<b>License No:</b> 422URU92<br>
						</div>
						<div class="col-sm-3 pull-right" style="border-left: 1px solid #bbb; height: 220px;">
							<a href="/manager/notes/new" class="btn btn-md btn-primary  btn-block">New Case Note</a><br><br>

							<b>New Report:</b><br>
							<a href="/manager/notes/new" class="btn btn-md btn-success btn-block">Demographic Intake</a>
							<a href="/manager/notes/new" class="btn btn-md btn-warning btn-block">Standard Intake</a>
							<a href="/manager/notes/new" class="btn btn-md btn-danger btn-block">Full Intake</a>
						</div>
						<div class="col-sm-9">
							<b>Current Provider(s):</b><br>
							<ul><li>St. Vincent (September 3rd, 2016 - duration: 5 days)</li></ul>

							<b>Previous Provider(s):</b><br>
							<ul><li>St. Anthony (September 3rd, 2016 - duration: 5 days)</li>
							    <li>St. Marianna (September 3rd, 2016 - duration: 5 days)</li></ul>
						</div>

					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="panel-body">
		<div class="row">
			<div class="col-md-3">
				<nav class="nav-sidebar" style="height: 80vh; margin-bottom: -15px; margin-top: -35px;    margin-left: -20px;">
					<ul class="nav tabs">
			          <li class="active"><a href="#tab1" data-toggle="tab">Peter and Paul Emergency Shelter</a></li>
			          <li class=""><a href="#tab2" data-toggle="tab">SLATE MCC</a></li>
			          <li class=""><a href="#tab3" data-toggle="tab">Behavior Health Response</a></li>    
			          <li class=""><a href="#tab3" data-toggle="tab">Message</a></li>                
			          <li class=""><a href="#tab3" data-toggle="tab">Message</a></li>  
			          <li class=""><a href="#tab3" data-toggle="tab">Message</a></li>  
			          <li class=""><a href="#tab3" data-toggle="tab">Message</a></li>                 
					</ul>
				</nav>
			</div>
			<div class="col-md-6">
				<h2 style="padding:10px; margin-top: 0;">Peter and Paul Emergency Shelter</h2>

				<img src="/assets/graph.png" class="pull-right">

				<b>Name:</b> BJC Behavior Health Response<br>
				<b>Type:</b> Mental Health Provider<br>
				<br>
				<b>Length of stay:</b> difference of first and last<br>
				time from case notes<br>
				<br>
				<b>Reason Entered:</b> Pre-existing MDD (Major Depressive Disorder)<br>
				<b>Exacerbating Condition:</b> Loss of job and housing occurred immediately before episode onset.<br>
				<b>Initiation Type:</b> Voluntary - Client requested referral from shelter case manager.<br>
				<b>Considered Chronically Homeless:</b> Yes (Multiple episodes beginning in 1993)<br>
				<b>Services Provider:</b> intake, evaluation, weekly therapist appointments, monthly psychiatrist appointments, and medication vouchers.<br>
				<br>
				<b>Discharge Type:</b> Voluntary Involuntary Attrition<br>
				<b>Discharge Reason:</b> Client received medical insurance through his new employer, and it is preferable for client to see in-network service providers.<br>
				<br>
				<b>Medical Release:</b> Signed<br>
			</div>
			<div class="col-md-3">
			<!-- Case Notes -->
				<div class="btn-group-vertical" role="group" aria-label="...">
					<button type="button" class="btn btn-default">Discharge Report <span class="grey-txt">(10/6/2016)</span></button>
					<button type="button" class="btn btn-default">Checkin <span class="grey-txt">(10/3/2016)</span></button>
					<button type="button" class="btn btn-default">Status Update <span class="grey-txt">(9/1/2016)</span></button>
					<button type="button" class="btn btn-default">Client Meeting <span class="grey-txt">(8/9/2016)</span></button>
					<button type="button" class="btn btn-default">Staff Observation <span class="grey-txt">(2/1/2016)</span></button>
					<button type="button" class="btn btn-default">Standard Intake <span class="grey-txt">(8/17/2015)</span></button>
				</div>
			</div>

		</div>
	</div>
</div>