<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="robots" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Yash Admin Sales Management System Admin Bootstrap 5 Template">
    <meta name="format-detection" content="telephone=no">
    
    <!-- PAGE TITLE HERE -->
    <title>Admin: Login</title>
   
    <!-- FAVICONS ICON -->
    <link href="assets/AdminPanel/css/style.css" rel="stylesheet">
    <style type="text/css">
    .error{
    	color: red;
    }
    </style>
</head>

<body class="vh-100" style="background-image:url('assets/AdminPanel/images/loginb.avif');background-repeat:no-repeat;background-size:cover;background-position:center;">
    <div class="authincation h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100 align-items-center">
                <div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
                                    <div class="text-center mb-3">
                                        <a href="index.html"><img src="assets/AdminPanel/images/logo.png" alt="" style="margin-top: -75px;"></a>
                                    </div>
                                    <h4 class="text-center mb-4">Sign in to your account</h4>
                                    <form action="dashboard" id="loginform" name="loginform">
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Email</strong></label>
                                            <input type="email" id="email" name="email" class="form-control" placeholder="hello@example.com">
                                        </div>
                                        <div class="mb-3">
                                            <label class="mb-1"><strong>Password</strong></label>
                                            <input type="password" id="password" name="password" class="form-control" placeholder="*********">
                                        </div>
                                        <div class="mb-3" style="float: right;">
                                        	<a href="">Forget Password</a>
                                        </div>
                                        <div class="text-center mt-4">
                                            <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                        </div>
                                    </form>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--**********************************
    Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="assets/AdminPanel/vendor/global/global.min.js"></script>
    <script src="assets/AdminPanel/js/custom.js"></script>
    <script src="assets/AdminPanel/js/deznav-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.20.0/jquery.validate.min.js" integrity="sha512-WMEKGZ7L5LWgaPeJtw9MBM4i5w5OSBlSjTjCtSnvFJGSVD26gE5+Td12qN5pvWXhuWaWcVwF++F7aqu9cvqP0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
     <script>
		$(function() {
			$("form[name='loginform']").validate({
				rules : {
					email : {
						required : true,
					},
					password : {
						required : true,
					}
				},
				messages : {
					email : "Please enter valid email",
					password : "Please enter password",

				},
				submitHandler : function(form) {

					var email = $("#email").val();
					var password = $("#password").val();
					
					var fd = new FormData();
					
					fd.append("email",email);
					fd.append("password",password);
					

					$.ajax({
						url : 'checklogin',
						type : 'post',
						data : fd,
						contentType : false,
						processData : false,
						success : function(data) {

							if (data['status'] == 'success') {
								form.submit();
							
							} else if (data['status'] == 'failure') {
								alert("No");
								
							} else if (data['status'] == 'unkown-error') {
								
							} else if (data['status'] == 'already-exist') {
								
							}

						}
					});
				}
			});
		});
		
	</script>
</body>
</html>
