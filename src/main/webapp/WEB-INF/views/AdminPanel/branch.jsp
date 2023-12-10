<!doctype html>
<html lang="en">

    

<head>
        
      <jsp:include page="css.jsp" /> 

    </head>

    
    <body data-sidebar="dark">

  <!--   <body data-layout="horizontal" data-topbar="colored"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">
			<jsp:include page="sidebar.jsp" />
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-flex align-items-center justify-content-between">
                                    <h4 class="mb-0">View Branch Details</h4>

                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Branch Details</li>
                                        </ol>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="row">
								<div class="col-12">
									<div class="card">
										<div class="card-header flex-wrap border-0">
											<div>
												<button type="button" class="btn btn-primary btn-sm mb-2" data-bs-toggle="modal" data-bs-target="#branch_model">Register New Branch</button>
											</div>
										</div>
										<div class="card-body">
											<table id="branch_table"
												class="table table-bordered table-striped dt-responsive nowrap"
												style="border-collapse: collapse; margin-top: 2rem !important;">
												<thead class="bg-primary text-white">
													<tr>
														<th style="width: 80px;"><strong>#</strong></th>
														<th><strong>Branch Name</strong></th>
														<th><strong>Branch Head</strong></th>
														<th><strong>Email</strong></th>
														<th><strong>Password</strong></th>
														<th><strong>Contact Number</strong></th>
														<th><strong>Address</strong></th>
														<th><strong>Status</strong></th>
														<th><strong>Action</strong></th>
													</tr>
												</thead>
											</table>
										</div>
									</div>
								</div>
								<!-- end col -->
							</div>
                        
                        <!-- end row -->
                        
                    </div> <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                
               
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->


<div class="modal fade bd-example-modal-lg" tabindex="-1"
			role="dialog" aria-hidden="true" id="branch_model">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Register Branch</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal">
						</button>
					</div>
					<form id="branchform" name="branchform">
						<div class="modal-body">
							<div class="row">
								<div class="mb-3 col-md-6">
									<label class="form-label">Branch Name<span class="text-danger">*</span></label> <input type="text"
										class="form-control" id="branch_name" name="branch_name">
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">Branch Head<span class="text-danger">*</span></label> <input type="text"
										class="form-control" id="branch_head" name="branch_head">
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">Email<span class="text-danger">*</span></label> <input type="email"
										class="form-control" id="email" name="email">
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">Contact Number<span class="text-danger">*</span></label> <input
										type="text" id="contact_number" name="contact_number" class="form-control">
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">Address<span class="text-danger">*</span></label> <input
										type="text" id="address" name="address" class="form-control">
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">Pin Code<span class="text-danger">*</span></label> <input
										type="text" id="pin_code" name="pin_code" class="form-control">
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">State<span class="text-danger">*</span></label> <input
										type="text" id="state" name="state" class="form-control" disabled>
								</div>
								<div class="mb-3 col-md-6">
									<label class="form-label">City<span class="text-danger">*</span></label> <input
										type="text" id="city" name="city" class="form-control" disabled>
								</div>
								
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger light"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>

        

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

       <jsp:include page="js.jsp" />
       <script>
       $("#branch_table").DataTable({
			dom : "Blfrtip",
			destroy : true,
			autoWidth : true,
			responsive : true,
			lengthChange : true,
			ordering : false,
			 buttons: [	        	
		            {
		                extend: 'pdf',
		                exportOptions: {
		                     columns: [0,1,2,3,4,5,7]
		                 }
		            },
		            {
		                extend: 'csv',
		                exportOptions: {
		                    columns: [0,1,2,3,4,5,7]
		                }
		               
		            },
		            {
		                extend: 'print',
		                exportOptions: {
		                    columns: [0,1,2,3,4,5,7]
		                }
		               
		            },
		            {
		                extend: 'excel',
		                exportOptions: {
		                    columns: [0,1,2,3,4,5,7]
		                }
		            } ,
		            {
		                extend: 'pageLength'
		            },
		            {
		        		 extend:"colvis"
		        	}
		         ] ,
			ajax : {
				url : "get_branch",
				type : "POST"
				
			},
			columnDefs: [{
			    "defaultContent": "-",			     
			    "targets": "_all"
			}],
			serverSide : true,
			columns : [ 
				{
					data: 'SrNo',
				    render: function (data, type, row, meta) {
				    	return meta.row + meta.settings._iDisplayStart + 1;
				    }
				},
				{
					"data" : "branch_name"
				},  
				{
					"data" : "branch_head"
				},  
				{
					"data" : "email"
				},  
				{
					"data" : "password"
				},  
				{
					"data" : "contact_number"
				},  
				{
					"data": "address"
				},
				{
					"data": "status"
				},{
					"data" : function(data, type,
							dataToSet) {
							var sno = data.sub_category_id;
							var string = "<button class='btn btn-sm btn-secondary add-new btn-primary' type='button'  onclick='edit("+sno+")'>Edit</button> ";
							string +='<button type="button" class="btn btn-sm btn-danger ml-1"  onclick="deletedata('+sno+')" style="margin-left: 10px;">Delete</button>';
							return string;
							}
						},

				],
			"lengthMenu" : [ [5,10, 25, 50 ], [5,10, 25, 50 ] ],
			select : true
		});
       $(function() {
   		$("form[name='branchform']").validate(
   				{
   					rules : {
   						branch_name : {
   							required : true,
   						},
   						branch_head : {
   							required : true,
   						},
   						email : {
   							required : true,
   						},
   						contact_number : {
   							required : true,
   						},
   						address : {
   							required : true,
   						},
   						pin_code : {
   							required : true,
   						},
   						state : {
   							required : true,
   						},
   						city : {
   							required : true,
   						}
   					},

   					messages : {
   													
   						branch_name : {
   							required : "Please enter branch name",
   						},														
   						branch_head : {
   							required : "Please enter branch head."
   						},
   						email : {
   							required : "Please enter email."
   						},
   						contact_number : {
   							required : "Please enter contact number."
   						},
   						address : {
   							required : "Please enter address."
   						},
   						pin_code : {
   							required : "Please enter pincode."
   						},
   						state : {
   							required : "Please enter state."
   						},
   						city : {
   							required : "Please enter city."
   						},
   						
   					},

   					submitHandler : function(form) {

   						var branch_name = $("#branch_name").val();
   						var branch_head = $("#branch_head").val();
   						var email_address = $("#email").val();
   						var contact_number = $("#contact_number").val();
   						var address = $("#address").val();
   						var pincode = $("#pin_code").val();
   						var state = $("#state").val();
   						var city = $("#city").val();
   						
   						 var obj = {
    								 "branch_name" :branch_name,
   								 "branch_head" :branch_head,
   								 "email" :email_address,
   								 "contact_number" :contact_number,
   								 "address" :address,
   								 "pin_code" :pincode,
   								 "state" :state,
   								 "city" : city,
   						 };
   						$.ajax({
   							url : 'add_branch',
   							type : 'post',
   							data : JSON.stringify(obj),
   							dataType : 'json',
   							contentType :  'application/json',
   							success : function(data) {

   								if (data['status'] == 'Success') {
   								 Swal.fire({
   										icon : 'success',
   										title : 'successfully!',
   										text : data['message']
   									})
   									$('#branch_model').modal('toggle');
   								 $('#branch_table').DataTable().ajax.reload( null, false );
   								
   								} else if(data['status'] == 'Already_Exist'){
   									Swal.fire({
   										icon : 'warning',
   										title : 'Already!',
   										text : data['message']
   									})
   									$('#branch_model').modal('toggle');
   								}
   								else{
   									Swal.fire({
   										icon : 'Sorry',
   										title : 'Invalid!',
   										text : data['message']
   									})
   									$('#branch_model').modal('toggle');
   								}
   							}
   						});

   					}
   				});

   	});
       
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
       		    	"blogId":sno,
       		    	"status":status.trim(),	
       		    	"companyCode" : 0,
					"employeeId" : 0,
					"unitId" : 0,
       		    	};					
       			$.ajax({
       				url : 'updateblogsdata', //add  Course  controller name AdminController
       				type : 'post',
       				data : JSON.stringify(fd),
       				contentType : 'application/json',
       				dataType : 'json',
       				success : function(data) {
       					if (data['status'] == 'SUCCESS') {
       					 $('#blogTable').DataTable().ajax.reload( null, false );								
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
       
       
       
       function editblogsdata(blogId){
    		 var mapForm = document.createElement("form");
    		 mapForm.target = "_blank";
    		 mapForm.method = "POST"; // or "post" if appropriate
    		 mapForm.action = "editblogs";
    		 var input = document.createElement("input");
    		 input.type = "hidden";
    		 input.name = "blogId";
    		 input.value = blogId;
    		 mapForm.appendChild(input);
    		 document.body.appendChild(mapForm);
    		 mapForm.submit();
    	} 
       </script>

    </body>

<!-- Mirrored from themesbrand.com/minible/layouts/form-elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Jan 2022 10:27:51 GMT -->
</html>
