<!DOCTYPE html>
<%@page import="java.util.List"%>
<html lang="en">
<head>
	<jsp:include page="../css.jsp"></jsp:include>
</head>

<body>

<jsp:include page="../header.jsp"></jsp:include>
<div id="wrapper">
	<div class="main-content">
		
		<div class="row small-spacing">
			<div class="col-lg-12 col-xs-12">
			<button type="button" id="clear_btn" class="btn btn-primary margin-bottom-10 waves-effect waves-light btn-xs" data-toggle="modal" data-target="#entry_model">Add New</button>
				<div class="box-content card white" style="padding-bottom: 20px;">
					<h4 class="box-title">Requirements Details</h4>
					<!-- /.box-title -->
					<div class="card-content">
						<table id="entryTable" class="table table-striped table-bordered display dataTable" style="width:100%">
		                  <thead class="bg-primary">
		                     <tr>
		                        <th class="text-white">Sr.No</th>
		                        <th class="text-white">Company Name</th>
		                        <th class="text-white">Interview Date</th>
		                        <th class="text-white">Images</th>
		                        <th class="text-white">Type</th>
		                        <th class="text-white">Status</th>
		                        <th class="text-white">Action</th>
		                      </tr>
		                  </thead>
		                 </table>
					</div>
					<!-- /.card-content -->
				</div>
				<!-- /.box-content -->
			</div>
			
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</div>

<!-- Popup Model -->

<div class="modal fade" id="entry_model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-md" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Add New Requirement Details</h4>
			</div>
			<form id="entry_form" Name="entry_form">
			<div class="modal-body">
			<div class="switch primary"><input type="checkbox"  id="switch-2"><label for="switch-2">CV Selection?</label></div>
				<div class="form-group">
					<label for="section">Company Name<span style="color: red;">*</span></label>
					<input type="text" class="form-control" id="company_name" name="company_name" placeholder="">
				</div>	
				<div class="row">
					<div class="col-md-8">
						<div class="form-group">
							<label for="section">Interview Date<span style="color: red;">*</span></label>
							<input type="date" class="form-control" id="inteview_date" name="inteview_date" placeholder="">
						</div>		
						<div class="form-group">
							<label for="section">Upload Image<span style="color: red;">*</span></label>
							<input type="file" class="form-control" id="image" name="image" accept="image/png,image/jpeg" onchange='document.getElementById("viewImg").src = window.URL.createObjectURL(this.files[0])'>
						</div>	
					</div>
					<div class="col-md-4">
						<img id="viewImg" height="130px;" width="150px;" style="margin-top: 30px" />
					</div>
				</div>	
					
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-sm waves-effect waves-light" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary btn-sm waves-effect waves-light" style="float: right;">Save</button>
			</div>
			</form>
		</div>
	</div>
</div>
<input type="hidden" id="sno" value="0">

	<jsp:include page="../js.jsp"></jsp:include>
	
	<script>
	let sno = $("#sno").val();
	
	$(function() {
		$("form[name='entry_form']").validate(
				{
					rules : {
						
						company_name : {
							required : true,
						},
						inteview_date : {
							required : true,
						},
						image : {
							required : true,
						},
					},

					messages : {
													
						
						company_name : {
							required : "Please enter company name."
						},
						inteview_date : {
							required : "Please select Date."
						},
						image : {
							required : "Please upload image."
						},
						
					},
					submitHandler : function(form) {
						var type = "Interview";
						if ($('#switch-2').is(':checked')) {
							type = "CV Selection";
			            } 
						
						var company_name = $("#company_name").val();
						var inteview_date = $("#inteview_date").val();
						var image = $("#image")[0].files[0];
						var obj ={
								"company_name" : company_name,
								"interview_date" : inteview_date,
								"sno" : sno,
								"type" : type
						}
						var fd = new FormData();
  						fd.append("reqdata",JSON.stringify(obj)),
  						fd.append("image", image),
						$.ajax({
 							url : 'add_requiremnet',
 							type : 'post',
 							data : fd,
 							contentType :  false,
 							processData : false,
							success : function(data) {
								if (data['status'] == 'Success') {
									$('#entryTable').DataTable().ajax.reload( null, false );
									 Swal.fire({
											icon : 'success',
											title : 'successfully!',
											text : data['message']
										})
										$('#entry_model').modal('toggle');
									
									} else if(data['status'] == 'Already_Exist'){
										$('#entry_model').modal('toggle');
										Swal.fire({
											icon : 'warning',
											title : 'Already!',
											text : data['message']
										})
									}
									else if(data['status'] == 'Failed'){
										$('#entry_model').modal('toggle');
										Swal.fire({
											icon : 'Sorry',
											title : 'Invalid!',
											text : data['message']
										})
									}
							}
						});

					}
				});

	});
	
	function data() {
		$("#entryTable").DataTable({
				dom : 'Blfrtip',
				autoWidth : true,
				responsive: true, 
				buttons : [ {
						extend : 'pdf',
						exportOptions : {
						columns : [ 0, 1]
					}
					},
					{
						extend : 'csv',
						exportOptions : {
						columns :  [ 0, 1]
					}
					
					}, 
					{
						extend : 'print',
						exportOptions : {
						columns :  [ 0, 1]
					}
					
					}, {
						extend : 'excel',
						exportOptions : {
						columns :  [ 0, 1]
					}
					}, {
						extend : 'pageLength'
					} ],
						lengthChange : true,
						ordering : false,
					ajax : {
						url : "get_requirement",
						type : "POST",
						
					},
					columnDefs : [ {
						"defaultContent" : "-",
						"targets" : "_all"
					} ],
						serverSide : true,
					columns : [
						{data: 'SrNo',
					           render: function (data, type, row, meta) {
					                return meta.row + meta.settings._iDisplayStart + 1;
					           }
					        },
					
					{
						"data" : "company_name"
					},
					{
						"data" : "interview_date"
					},
					{
						"data":function(data,type,dataToSet){
				      		var imageName = data.image;
				      		if(imageName != null  && imageName != ""){
				      			return '<img src="displayimage?url='+imageName+'" width="50" height="50"/>';
				      		}else{
				      			return "NA"
				      		}
				        	
				        }},
					{
						"data" : "type"
					},
					{
		                "data": function (data,type,dataToSet) {
		                	var sno = data.sno;
		                	var status = data.status;
		                	var string="";
		                	if(status=="Active"){
		                		 string = "<span class='badge bg-success font-weight-bold p-1' id='status"+sno+"' style='line-height: 1.5;border-radius: 3px !important;width:70px;'>"+status+"</span>"
		 	                    return string;
		                	}else if(status=="Deactive"){
		                		string = "<span class='badge bg-danger font-weight-bold' id='status"+sno+"' style='line-height: 1.5;border-radius: 3px !important;width:70px;'>"+status+"</span>"
		 	                    return string;
		                	}
		                   
		                }
					},
					 {
						"data" : function(data, type,
								dataToSet) {
								var sno = data.sno;
								var status = data.status;
								var string = "<button class='btn btn-success  fa fa-pencil' type='button'  onclick='edit("+sno+")' style='height:30px;width:40px; line-height:0'></button>";
								string += "<button class='btn btn-danger  fa fa-trash' type='button'  onclick='deletedata("+sno+")' style='height:30px;width:40px;margin-left:10px; line-height:0'></button>";
								 if(status == "Active"){
									 string += "<button class='btn btn-danger  fa fa-times' type='button'  onclick='updateStatus("+sno+",\"Deactive\")' style='height:30px;width:40px;margin-left:10px; line-height:0'></button>";
									 }else{
										 string += "<button class='btn btn-success fa fa-check' type='button'  onclick='updateStatus("+sno+",\"Active\")' style='height:30px;width:40px;margin-left:10px; line-height:0'></button>";
									 }
								return string;
								}
							}
					
					],
					"lengthMenu" : [ [ 5, 10, 25, 50 ] , [ 5, 10, 25, 50 ] ],
					select : true
					});
					}
		data();
		
		function deletedata(sno)
		{	 
		 Swal.fire({
			  title: 'Do you want to Delete Section Details?',
			  showDenyButton: true,
			  confirmButtonText: 'Yes',
			  denyButtonText: 'No',
			  customClass: {
			    actions: 'my-actions',
			    cancelButton: 'order-1 right-gap',
			    confirmButton: 'order-2',
			    denyButton: 'order-3',
			  }
			}).then((result) => {
			  if (result.isConfirmed) {
				 
				  	console.log(sno);
				    console.log(status)
					var fd = new FormData();
		 			fd.append("sno",sno);
				    
				    $.ajax({
				  		url : 'delete_req',
				  		type : 'post',
				  		data : fd,
				  		contentType :  false,
				  		processData : false,
				  		success : function(data) {
				  			if (data['status'] == 'Success') {
								$('#entryTable').DataTable().ajax.reload( null, false );
							 Swal.fire({
								  icon: 'success',
								  title: 'Deleted successfully',
								  showConfirmButton: false,
								  timer: 1500
								})
							}  
				  		}
				  	});
			   }
			});
		}; 
		
		function edit(i){
			$("#sno").val(i);
			var fd = new FormData();
			fd.append("sno",i);
			$.ajax({
				url : 'edit_section',
				type : 'post',
				data : fd,
				contentType :  false,
				processData : false,
				success : function(data) {
					if (data['status'] == 'Success') {
						 $('#section_model').modal('toggle');
						 $("#section").val(data['data'][0].section_name);
					} else {
						Swal.fire({
							icon : 'Opps',
							title : 'Warning!',
							text : 'Invalid Details'
						})
					}
				}
			});
			
			 
		}
		
		function updateStatus(sno,status)
	       {	 
	        Swal.fire({
	       	  title: 'Do you want to change the status?',
	       	  showDenyButton: true,
	       	  //showCancelButton: true,
	       	  confirmButtonText: 'Yes',
	       	  denyButtonText: 'No',
	       	  customClass: {
	       	    actions: 'my-actions',
	       	    cancelButton: 'order-1 right-gap',
	       	    confirmButton: 'order-2',
	       	    denyButton: 'order-3',
	       	  }
	       	}).then((result) => {
	       	  if (result.isConfirmed) {
	       		 
	       		  	console.log(sno);
	       		    console.log(status)
	       			var fd = {
	       		    	"sno":sno,
	       		    	"status":status.trim(),	
	       		    	};					
	       			$.ajax({
	       				url : 'updateSection', //add  Course  controller name AdminController
	       				type : 'post',
	       				data : JSON.stringify(fd),
	       				contentType : 'application/json',
	       				dataType : 'json',
	       				success : function(data) {
	       					if (data['status'] == 'Success') {
	       					 $('#sectionTable').DataTable().ajax.reload( null, false );								
	       						Swal.fire({
	       							icon : 'success',
	       							title : 'Status Updated!',
	       							text : 'Status updated succesfully'
	       						})
	       					}  
	       				}
	       			});
	       	  
	       	   }
	       	});
	       }; 
		 $("#clear_btn").click(function() {
		        $("input[type='text']").val("");
		        $("input[type='hidden']").val("");
		      });
	</script>
</body>
</html>