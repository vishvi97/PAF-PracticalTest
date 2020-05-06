<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Health Care Service</title>
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- The Signup Component -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script async src="https://cse.google.com/cse.js?cx=000888210889775888983:pqb3ch1ewhg"></script>

<style type="text/css">
	body{
		font-family: 'Varela Round', sans-serif;
	}
	.form-control {
		box-shadow: none;		
		font-weight: normal;
		font-size: 13px;
	}
	.form-control:focus {
		border-color: #33cabb;
		box-shadow: 0 0 8px rgba(0,0,0,0.1);
	}
	.navbar-header.col {
		padding: 0 !important;
	}	
	.navbar {
		background: #fff;
		padding-left: 16px;
		padding-right: 16px;
		border-bottom: 1px solid #dfe3e8;
		border-radius: 0;
	}
	.nav-link img {
		border-radius: 50%;
		width: 36px;
		height: 36px;
		margin: -8px 0;
		float: left;
		margin-right: 10px;
	}
	.navbar .navbar-brand, .navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
		padding-left: 0;
		font-size: 20px;
		padding-right: 50px;
	}
	.navbar .navbar-brand b {
		font-weight: bold;
		color: #33cabb;		
	}
	.navbar .form-inline {
        display: inline-block;
    }
	.navbar .nav li {
		position: relative;
	}
	.navbar .nav li a {
		color: #888;
	}
	.search-box {
        position: relative;
    }	
    .search-box input {
        padding-right: 35px;
		border-color: #dfe3e8;
        border-radius: 4px !important;
		box-shadow: none
    }
	.search-box .input-group-addon {
        min-width: 35px;
        border: none;
        background: transparent;
        position: absolute;
        right: 0;
        z-index: 9;
        padding: 7px;
		height: 100%;
    }
    .search-box i {
        color: #a0a5b1;
		font-size: 19px;
    }
	.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
		color: #fff;
		background: #33cabb;
		padding-top: 8px;
		padding-bottom: 6px;
		vertical-align: middle;
		border: none;
	}	
	.navbar .nav .btn-primary:hover, .navbar .nav .btn-primary:focus {		
		color: #fff;
		outline: none;
		background: #31bfb1;
	}
	.navbar .navbar-right li:first-child a {
		padding-right: 30px;
	}
	.navbar .nav-item i {
		font-size: 18px;
	}
	.navbar .dropdown-item i {
		font-size: 16px;
		min-width: 22px;
	}
	.navbar ul.nav li.active a, .navbar ul.nav li.open > a {
		background: transparent !important;
	}	
	.navbar .nav .get-started-btn {
		min-width: 120px;
		margin-top: 8px;
		margin-bottom: 8px;
	}
	.navbar ul.nav li.open > a.get-started-btn {
		color: #fff;
		background: #31bfb1 !important;
	}
	.navbar .dropdown-menu {
		border-radius: 1px;
		border-color: #e5e5e5;
		box-shadow: 0 2px 8px rgba(0,0,0,.05);
	}
	.navbar .nav .dropdown-menu li {
		color: #999;
		font-weight: normal;
	}
	.navbar .nav .dropdown-menu li a, .navbar .nav .dropdown-menu li a:hover, .navbar .nav .dropdown-menu li a:focus {
		padding: 8px 20px;
		line-height: normal;
	}
	.navbar .navbar-form {
		border: none;
	}
	.navbar .dropdown-menu.form-wrapper {
		width: 280px;
		padding: 20px;
		left: auto;
		right: 0;
        font-size: 14px;
	}
	.navbar .dropdown-menu.form-wrapper a {		
		color: #33cabb;
		padding: 0 !important;
	}
	.navbar .dropdown-menu.form-wrapper a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper .hint-text {
		text-align: center;
		margin-bottom: 15px;
		font-size: 13px;
	}
	.navbar .form-wrapper .social-btn .btn, .navbar .form-wrapper .social-btn .btn:hover {
		color: #fff;
        margin: 0;
		padding: 0 !important;
		font-size: 13px;
		border: none;
		transition: all 0.4s;
		text-align: center;
		line-height: 34px;
		width: 47%;
		text-decoration: none;
    }	
	.navbar .social-btn .btn-primary {
		background: #507cc0;
	}
	.navbar .social-btn .btn-primary:hover {
		background: #4676bd;
	}
	.navbar .social-btn .btn-info {
		background: #64ccf1;
	}
	.navbar .social-btn .btn-info:hover {
		background: #4ec7ef;
	}
	.navbar .social-btn .btn i {
		margin-right: 5px;
		font-size: 16px;
		position: relative;
		top: 2px;
	}
	.navbar .form-wrapper .form-footer {
		text-align: center;
		padding-top: 10px;
		font-size: 13px;
	}
	.navbar .form-wrapper .form-footer a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper .checkbox-inline input {
		margin-top: 3px;
	}
	.or-seperator {
        margin-top: 32px;
		text-align: center;
		border-top: 1px solid #e0e0e0;
    }
    .or-seperator b {
		color: #666;
        padding: 0 8px;
		width: 30px;
		height: 30px;
		font-size: 13px;
		text-align: center;
		line-height: 26px;
		background: #fff;
		display: inline-block;
		border: 1px solid #e0e0e0;
		border-radius: 50%;
		position: relative;
		top: -15px;
		z-index: 1;
    }
    .navbar .checkbox-inline {
		font-size: 13px;
	}
	.navbar .navbar-right .dropdown-toggle::after {
		display: none;
	}

    #success_message{ display: none;}
	@media (min-width: 1200px){
		.form-inline .input-group {
			width: 300px;
			margin-left: 30px;
		}
	}
	@media (max-width: 768px){
		.navbar .dropdown-menu.form-wrapper {
			width: 100%;
			padding: 10px 15px;
			background: transparent;
			border: none;
		}
		.navbar .form-inline {
			display: block;
		}
		.navbar .input-group {
			width: 100%;
		}
		.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
			display: block;
		}
	}
</style>
<script type="text/javascript">
	// Prevent dropdown menu from closing when click inside the form
	$(document).on("click", ".navbar-right .dropdown-menu", function(e){
		e.stopPropagation();
	});

    //Script for form
    $(document).ready(function() {
        $('#contact_form').bootstrapValidator({
            // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                first_name: {
                    validators: {
                            stringLength: {
                            min: 2,
                            max: 50,
                        },
                            notEmpty: {
                            message: 'Please enter your First Name'
                        }
                    }
                },
                 last_name: {
                    validators: {
                         stringLength: {
                            min: 2,
                            max:50,
                        },
                        notEmpty: {
                            message: 'Please enter your Last Name'
                        }
                    }
                },
                 user_name: {
                    validators: {
                         stringLength: {
                            min: 8,
                        },
                        notEmpty: {
                            message: 'Please enter your Username'
                        }
                    }
                },
                 user_password: {
                    validators: {
                         stringLength: {
                            min: 8,
                        },
                        notEmpty: {
                            message: 'Please enter your Password'
                        }
                    }
                },
                confirm_password: {
                    validators: {
                         stringLength: {
                            min: 8,
                        },
                        notEmpty: {
                            message: 'Please confirm your Password'
                        }
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: 'Please enter your Email Address'
                        },
                        emailAddress: {
                            message: 'Please enter a valid Email Address'
                        }
                    }
                },
                contact_no: {
                    validators: {
                      stringLength: {
                            min: 12, 
                            max: 12,
                        notEmpty: {
                            message: 'Please enter your Contact No.'
                         }
                    }
                },
                specialization: {
                    validators: {
                        notEmpty: {
                            message: 'Please select your specialization'
                        }
                    }
                },
                    }
                }
            })
            .on('success.form.bv', function(e) {
                $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                    $('#contact_form').data('bootstrapValidator').resetForm();
    
                // Prevent form submission
                e.preventDefault();
    
                // Get the form instance
                var $form = $(e.target);
    
                // Get the BootstrapValidator instance
                var bv = $form.data('bootstrapValidator');
    
                // Use Ajax to submit form data
                $.post($form.attr('action'), $form.serialize(), function(result) {
                    console.log(result);
                }, 'json');
            });
    });
</script>
</head> 
<body>
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header d-flex col">
		<a class="navbar-brand" href="#"><b>Care First</b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
			<span class="navbar-toggler-icon"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
        <ul class="nav navbar-nav">
			<li class="nav-item"><a href="#" class="nav-link">Home</a></li>
			<li class="nav-item"><a href="#" class="nav-link">About</a></li>			
			<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
        </ul>

		<form class="navbar-form form-inline">
			<div class="input-group search-box">								
                    <div class="gcse-searchbox-only" data-resultsUrl="https://googlecustomsearch.appspot.com/elementv2/two-page_results_elements_v2.html?query=test"></div>
            </div>    
        </form>
        
		<ul class="nav navbar-nav navbar-right ml-auto">			
			<li class="nav-item">
				<a data-toggle="dropdown" class="nav-link dropdown-toggle" href="#">Login</a>
				<ul class="dropdown-menu form-wrapper">					
					<li>
						<form action="/examples/actions/confirmation.php" method="post">
							<p class="hint-text">Provide Your Credentials to signin</p>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username" required="required">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="Password" required="required">
                            </div>
                           <div class="or-seperator">User Type</div>
                            <div class="from-group">
                                    <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" placeholder="Doctor" value="Doctor">
                                            <label class="custom-control-label" for="customCheck1">Doctor</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" placeholder="Patient" value="Patient">
                                            <label class="custom-control-label" for="customCheck2">Patient</label>
                                    </div>
                                    <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" placeholder="Hospital" value="Hospital">
                                            <label class="custom-control-label" for="customCheck3">Hospital</label>
                                    </div>
                            </div>
							<input type="submit" class="btn btn-primary btn-block" value="Login">
							<div class="form-footer">
								<a href="#">Forgot Your password?</a>
							</div>
						</form>
					</li>
				</ul>
			</li>
			<li class="nav-item">
				<a href="#" data-toggle="dropdown" class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Sign up</a>
			</li>
		</ul>
	</div>
</nav>


<div class="container">

        <form class="well form-horizontal" action=" " method="post"  id="contact_form">
    <fieldset>
    
    <!-- Form Name -->
    <legend><center><h2><b>Doctors Registration Form</b></h2></center></legend><br>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label">First Name</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="first_name" placeholder="First Name" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label" >Last Name</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="last_name" placeholder="Last Name" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
      <div class="form-group"> 
      <label class="col-md-4 control-label">Specialization</label>
        <div class="col-md-4 selectContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
        <select name="specialization" class="form-control selectpicker">
          <option value="">Select your specialization</option>
          <option>Department of Engineering</option>
          <option>Department of Agriculture</option>
          <option >Accounting Office</option>
          <option >Tresurer's Office</option>
          <option >MPDC</option>
          <option >MCTC</option>
          <option >MCR</option>
          <option >Mayor's Office</option>
          <option >Tourism Office</option>
        </select>
      </div>
    </div>
    </div>
      
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label">Username</label>  
      <div class="col-md-4 inputGroupContainer">
      <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input  name="user_name" placeholder="Username" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label" >Password</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="user_password" placeholder="Password" class="form-control"  type="password">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
    
    <div class="form-group">
      <label class="col-md-4 control-label" >Confirm Password</label> 
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password">
        </div>
      </div>
    </div>
    
    <!-- Text input-->
           <div class="form-group">
      <label class="col-md-4 control-label">E-Mail</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
        </div>
      </div>
    </div>
    
    
    <!-- Text input-->
           
    <div class="form-group">
      <label class="col-md-4 control-label">Contact No.</label>  
        <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input name="contact_no" placeholder="(94)" class="form-control" type="text">
        </div>
      </div>
    </div>
    
    <!-- Select Basic -->
    
    <!-- Success message -->
    <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>
    
    <!-- Button -->
    <div class="form-group">
      <label class="col-md-4 control-label"></label>
      <div class="col-md-4"><br>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSAVE <span class="glyphicon glyphicon-save"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
      </div>
    </div>
    
    </fieldset>
    </form>
    </div>
        </div>
</body>
</html>                                                                                    