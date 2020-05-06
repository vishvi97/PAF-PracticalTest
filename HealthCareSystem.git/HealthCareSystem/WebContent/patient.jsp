
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="./css/jquery.toast.min.css">

</head>
<body class="bg-light">
    <nav class="navbar navbar-dark bg-dark py-0">
        <a class="navbar-brand" href="#">
          <span class="h5 text-light">Health Care</span>
        </a>
      </nav>
    <div class="container">
               
        <div class="row  mt-4" >
            <div class="col-12" >
                 <div class="w-100 py-1" id="alerts">

                 </div>
                <div class="card  shadow-sm pb-3 mb-0" >
                    <div class="card-header" >
                        <h5 class="text-dark mb-0"><b>Add Patient</b></h5>
                    </div>
                    <div class="card-body mb-0" >
                        <form id="patient_input_form">
                            <div class="row">
                                <div class="col-md-6" >
                                    <label>Patient ID</label>
                                    <input type="text" class="form-control" readonly placeholder="ID will be Auto Generated" >
                                    <input type="hidden"  value=""  id="patientid">
                                    <span class="text-danger font-weight-bold small" id="id_error"></span>
                                </div>
                                <div class="col-md-6" >
                                    <label>Patient Name</label>
                                    <input type="text" class="form-control" placeholder="Enter Patient Name" id="patientname">
                                    <span class="text-danger font-weight-bold small" id="name_error"></span>
                                </div>
                                <div class="col-md-6 mt-2" >
                                    <label>Patient Email</label>
                                    <input type="email" class="form-control" placeholder="Enter Patient Email" id="patientEmail">
                                    <span class="text-danger font-weight-bold small" id="email_error"></span>
                                </div>
                                <div class="col-md-6 mt-2" >
                                    <label>Patient Blood Type</label>
                                    <select class="form-control" id="patientBlood">
                                        <option selected value="A+">A Positive</option>
                                        <option value="A-">A Negative</option>
                                        <option value="B+">B Positive</option>
                                        <option value="B-">B Negative</option>
                                        <option value="AB+">AB Positive</option>
                                        <option value="AB-">AB Negative</option>
                                        <option value="O+">O Positive</option>
                                        <option value="O-">O Negative</option>
                                    </select>
                                </div>
                                <div class="col-md-12 mt-2" >
                                    <label>Patient Address</label>
                                    <input type="text" class="form-control" placeholder="Enter Patient Address" id="patientAddress">
                                    <span class="text-danger font-weight-bold small" id="address_error"></span>
                                </div>
                                <div class="col-md-4 mt-2" >
                                    <label>Patient Age</label>
                                    <input type="text" class="form-control" placeholder="Enter Patient Age" id="patinetAge">
                                    <span class="text-danger font-weight-bold small" id="age_error"></span>
                                </div>
                                
                                <div class="col-md-4 mt-2" >
                                    <label>Patient Telephone</label>
                                    <input type="text" class="form-control" placeholder="Enter Patient Telephone" id="patinetTelephone">
                                    <span class="text-danger font-weight-bold small" id="phone_error"></span>
                                </div>
                                <div class="col-md-4 mt-2" >
                                    <label>Patient Password</label>
                                    <input type="text" class="form-control" placeholder="Enter Password" id="patientpassword">
                                    <span class="text-danger font-weight-bold small" id="password_error"></span>
                                </div>
                                <div class="col-md-12 mt-2" >
                                    <div class="d-flex mb-0 mt-2" >
                                        <button class="ml-auto btn btn-sm btn-success font-weight-bold px-2" type="submit">Submit</button>
                                        <button onclick="clearAll()" class="btn btn-sm btn-danger font-weight-bold px-2 ml-2" type="button">Clear</button>
                                    </div>
                                </div>
                            </div>
                        </form>                   
                    </div>
                </div>
            </div>
           
        
            <div class="col-12 mt-3" >
                <table id="patientstable" class="table bg-white border">
                    <thead>
                      <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>
                        <th scope="col">Age</th>
                        <th scope="col">Blood Group</th>
                        <th scope="col">Telephone</th>
                        <th scope="col">Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                                     
                    </tbody> 
                </table>
            </div>
        </div>
    </div>
    <!-- Delete Confirm Modal---------------------------------->
    <div id="delete-modal" class="modal hide fade">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h6>Delete Confirm</h6>
                    <button data-dismiss="modal" >&times;</button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete this patient record?<br>
                    <span class="text-danger">This process can not be undone</span></p>
                </div>
                <div class="modal-footer">
                    <button id="modal-delete-btn"   class="btn btn-danger btn-sm">Yes</button>
                    <button data-dismiss="modal" class="btn btn-secondary btn-sm">No</button>
                </div>
            </div>
        </div>
    </div>
    <!-- --------------------------------------------------- -->
  <script src="https://code.jquery.com/jquery-3.5.0.js" integrity="sha256-r/AaFHrszJtwpe+tHyNi/XCfMxYpbsRg2Uqn0x3s2zc=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>   
    <script src="./js/jquery.toast.min.js" ></script>
    
	<script src="./js/main.js" ></script>
</body>
</html>