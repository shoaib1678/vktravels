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
			<button type="button" id="clear_btn" class="btn btn-primary margin-bottom-10 waves-effect waves-light" data-toggle="modal" data-target="#entry_model">View</button>
				<div class="box-content card white" style="padding-bottom: 20px;">
					<h4 class="box-title">Add Interviewer Details</h4>
					<!-- /.box-title -->
					<div class="card-content">
						<form id="entry_form" Name="entry_form">
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label for="date">Date<span style="color: red;">*</span></label>
										<input type="date" class="form-control" id="date" name="date" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="designation">Post Applied For<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="designation" name="designation" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="employment">Country Of Employment<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="employment" name="employment" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="name">Name as per passport<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="name" name="name" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="father_name">Father Name<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="father_name" name="father_name" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="mother_name">Mother Name<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="mother_name" name="mother_name" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="dob">Date of Birth<span style="color: red;">*</span></label>
										<input type="date" class="form-control" id="dob" name="dob" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="age">Age<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="age" name="age" placeholder="" disabled>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="place_birth">Place of Birth<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="place_birth" name="place_birth" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="mother_name">Religion<span style="color: red;">*</span></label>
										<select class="form-control" id="religion" name="religion">
											<option selected disabled>--Select Religion--</option>
											<option value="Hinduism">Hinduism</option>
											<option value="Islam">Islam</option>
											<option value="Christianity">Christianity</option>
											<option value="Sikhism">Sikhism</option>
											<option value="Jainism">Jainism</option>
											<option value="Buddhism">Buddhism</option>
											<option value="Zoroastrianism">Zoroastrianism</option>
										</select>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="children">Children<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="children" name="children" placeholder="">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<h4 style="margin-bottom: -16px;">Permanent Address</h4>
										<hr>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="pin_code">Pin Code<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="pin_code" name="pin_code" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="state">State<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="state" name="state" placeholder="">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label for="city">City<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="city" name="city" placeholder="">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="address">Address<span style="color: red;">*</span></label>
										<textarea class="form-control" id="address" name="address" ></textarea>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group" style="margin-top: 70px;">
										<input type="checkbox" id="vehicle1" name="vehicle1">
  										<label for="vehicle1">Contact Address Same As Permanent Address</label>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<h4 style="margin-bottom: -16px;">Contact Address</h4>
										<hr>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="cpin_code">Pin Code<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="cpin_code" name="cpin_code" placeholder="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="cstate">State<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="cstate" name="cstate" placeholder="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="ccity">City<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="ccity" name="ccity" placeholder="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="mobile_number">Mobile Number<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="mobile_number" name="mobile_number" placeholder="">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label for="caddress">Address<span style="color: red;">*</span></label>
										<textarea class="form-control" id="caddress" name="caddress" ></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<h4 style="margin-bottom: -16px;">Passport Details</h4>
										<hr>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="passport_number">Passport Number<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="passport_number" name="passport_number" placeholder="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="issue_date">Date Of Issue<span style="color: red;">*</span></label>
										<input type="date" class="form-control" id="issue_date" name="issue_date" placeholder="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="issue_place">Place of Issue<span style="color: red;">*</span></label>
										<input type="text" class="form-control" id="issue_place" name="issue_place" placeholder="">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label for="validity">Validity<span style="color: red;">*</span></label>
										<input type="date" class="form-control" id="validity" name="validity" placeholder="">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group" style="overflow: auto;">
									<h4 style="margin-bottom: -16px;">EDUCATIONAL/TECHNICAL QUALIFICATION</h4>
										<hr>
										<table id="entryTable" class="table table-striped table-bordered display dataTable" style="width:100%">
							                  <thead class="bg-primary">
							                     <tr>
							                        <th class="text-white">Certification</th>
							                        <th class="text-white">Board/University Institute</th>
							                        <th class="text-white">From</th>
							                        <th class="text-white">To</th>
							                        <th class="text-white">Percent</th>
							                      </tr>
							                  </thead>
							                  <tbody id="tbody">
							                  		<tr>
							                  			<td><input type="text" class="form-control" id="certification1" name="certification1"></td>
							                  			<td><input type="text" class="form-control" id="board1" name="board1"></td>
							                  			<td><input type="text" class="form-control" id="from1" name="from1"></td>
							                  			<td><input type="text" class="form-control" id="to1" name="to1"></td>
							                  			<td><input type="text" class="form-control" id="percent1" name="percent1"></td>
							                  		</tr>
							                  </tbody>
						                 </table>
									</div>
									<div>
										<button class="btn btn-danger btn-xs ml-2" style="float: right;margin-left: 4px;">-</button>
										<button class="btn btn-success btn-xs" style="float: right;" onclick="addrow()">+</button>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group" style="overflow: auto;">
									<h4 style="margin-bottom: -16px;">PREVIOUS EMPLOYMENT RECORD</h4>
										<hr>
										<table  class="table table-striped table-bordered display dataTable" style="width:100%">
							                  <thead class="bg-primary">
							                     <tr>
							                        <th class="text-white">Name of the Employer</th>
							                        <th class="text-white">Designation</th>
							                        <th class="text-white">Nature of Work</th>
							                        <th class="text-white">From</th>
							                        <th class="text-white">To</th>
							                        <th class="text-white">Total Years</th>
							                      </tr>
							                  </thead>
							                  <tbody id="tbody1">
							                  		<tr>
							                  			<td><input type="text" class="form-control" id="certification1" name="certification1"></td>
							                  			<td><input type="text" class="form-control" id="board1" name="board1"></td>
							                  			<td><input type="text" class="form-control" id="from1" name="from1"></td>
							                  			<td><input type="text" class="form-control" id="from1" name="from1"></td>
							                  			<td><input type="text" class="form-control" id="to1" name="to1"></td>
							                  			<td><input type="text" class="form-control" id="percent1" name="percent1"></td>
							                  		</tr>
							                  </tbody>
						                 </table>
									</div>
									<div>
										<button class="btn btn-danger btn-xs" style="float: right;margin-left: 4px;">-</button>
										<button class="btn btn-success btn-xs" style="float: right;" onclick="addrow1()">+</button>
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-sm waves-effect waves-light" style="float: right;margin: 30px 0;">Save</button>
									</div>
								</div>
							</div>
						</form>
					</div>
					<!-- /.card-content -->
				</div>
				<!-- /.box-content -->
			</div>
			
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</div>

	<jsp:include page="../js.jsp"></jsp:include>
	
	<script>
	function addrow(){
		var count = $("#tbody > tr").length;
		alert(count);
	}
	function addrow1(){
		var count = $("#tbody > tr").length;
	}
	
	$(function() {
		$("form[name='entry_form']").validate(
				{
					rules : {
						
						name : {
							required : true,
						},
						mobile_number : {
							required : true,
						},
					},

					messages : {
													
						
						name : {
							required : "Please enter name."
						},
						mobile_number : {
							required : "Please enter mobile number."
						},
						
					},
					submitHandler : function(form) {
						var name = $("#name").val();
						var mobile_number = $("#mobile_number").val();
						
						 var obj = {
								 "name" :name,
								 "mobile_number" :mobile_number,
						 };
						$.ajax({
							url : 'add_entry',
							type : 'post',
							data : JSON.stringify(obj),
							dataType : 'json',
							contentType :  'application/json',
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
		$("#entrTable").DataTable({
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
						url : "get_entry",
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
						"data" : "name"
					},
					{
						"data" : "mobile_number"
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
				  		url : 'delete_section',
				  		type : 'post',
				  		data : fd,
				  		contentType :  false,
				  		processData : false,
				  		success : function(data) {
				  			if (data['status'] == 'Success') {
								$('#sectionTable').DataTable().ajax.reload( null, false );
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