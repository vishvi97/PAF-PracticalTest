var current_data = [] 

//get all patient detail while page loading
$(document).ready(function() {
    loadPatientData();
});

//page loading function (ajax)
//patient table will be populate
function loadPatientData(){
	 $("#patientstable > tbody").empty();
    jQuery.ajax({
        url : "http://localhost:8082/HealthCareSystem/Services/patients",
        type: "GET",
        contentType: "application/json",  
        dataType:'json',
        success: function(data, textStatus, errorThrown) {
            current_data = data;          
        	let patients_data = "";
        	data.forEach(item => {
        		patients_data += `<tr><td>${item.name}</td><td>${item.email}</td>`
        		patients_data += `<td>${item.patientAddress}</td><td>${item.age}</td><td>${item.bloodType}</td><td>${item.patientTelephone}</td>`
        		patients_data  += `<td><button class="btn btn-sm btn-info mr-2" onclick="editPatient(${item.id})" >Edit</button>`
        		patients_data  += `<button class="btn btn-sm btn-danger" onclick="onClickDelete(${item.id})" >Delete</button></td></tr>`
        	});
        	 $('#patientstable > tbody:last-child').append(patients_data);    	 
        },

        error : function(jqXHR, textStatus, errorThrown) {
        	console.log("error" , textStatus );	
        },
       timeout: 120000,
    })
}

//patient form on submit function
//get values from the inputs
//validation them using validate function
//if there is no errors check (add/update)
//submit data using api call
$("#patient_input_form").submit(function(e){
  
    var name = $('#patientname').val();
    var id = $('#patientid').val();
    var age = $('#patinetAge').val();
    var email = $('#patientEmail').val();
    var address = $('#patientAddress').val();
    var bloodtype = $('#patientBlood').val();
    var telephone = $('#patinetTelephone').val();   
    var password = $('#patientpassword').val();   
    var confirm = $('#confirmpassword').val();  
    
    var dataset  =  { 
        id : id,
        name : name , 
        age : age , 
        email : email ,
        patientAddress : address ,
        bloodType : bloodtype,
        patientTelephone : telephone,
        password : password,
    }; 

    //validation
    if(validate(dataset)){

        //check update or add
        if(id.length == 0 ){
            addPatient(dataset);
        }else{
            updatePatient(dataset);
        }
        
    }
    
    return false;
});

//Add new patient to the system using ajax request
function addPatient(data){
    console.log("Data", data)

	jQuery.ajax({
        url: "http://localhost:8082/HealthCareSystem/Services/patients" ,
        type: "POST",
        contentType: "application/json",  
        dataType:'json',
        data : JSON.stringify(data) ,
        success: function(data, textStatus, errorThrown) {
            
            //get new patients data
            loadPatientData();

            //display success toast msg
            successToast("Patient Successfully Added to the System");

            //clear all input fields
            clearAll();         
        },
        error : function(jqXHR, textStatus, errorThrown) {

            //failed toast message
            errorToast("Patient Added Failed");
        },
        timeout: 120000,
    });
};

//update patient in the system
function updatePatient(data){
    console.log("UpdateData", data)

	jQuery.ajax({
        url: "http://localhost:8082/HealthCareSystem/Services/patients/updatePatient" ,
        type: "PUT",
        contentType: "application/json",  
        dataType:'json',
        data : JSON.stringify(data) ,
        success: function(data, textStatus, errorThrown) {

            //get new patients data
            loadPatientData();

            //display success toast msg
            successToast("Patient Successfully Updated");

             //clear all input fields
            clearAll();
        },
        error : function(jqXHR, textStatus, errorThrown) {
            
            //failed toast message
            errorToast("Patient Update Failed");

            //clear all input fields
            clearAll();
        },
        timeout: 120000,
    });
};

//get patient data id from table
function editPatient(id){

    //find patient from current patient data
    let patient = current_data.find( p => p.id == id);

    //add patient data to the input fields
    $('#patientid').val(patient.id);
    $('#patientname').val(patient.name);
    $('#patinetAge').val(patient.age);
    $('#patientEmail').val(patient.email);
    $('#patientAddress').val(patient.patientAddress);
    $('#patientBlood').val(patient.bloodType);
    $('#patinetTelephone').val(patient.patientTelephone);   
    $('#patientpassword').val("");   

    //password is not needed in update therefore turn it into readonly value
    $('#patientpassword').prop('readonly', true);  

}

//function will trigger when user clicks table delete button
function onClickDelete(id){

    //confirm modal will popup
    $('#modal-delete-btn').attr('data-id', id);
    $('#delete-modal').modal('show');
}

//click function in confirm modal
//after clicking yes button
$('#modal-delete-btn').on('click', function(e) {
    
    //model will be hide again
    e.preventDefault();
    $('#delete-modal').modal('hide');

    //pateint remove function will call
    var id = $(this).data('id');
    removePatient(id);
    
});

//remove patient from the system using api call
function removePatient(itemid){

	console.log(itemid);

	jQuery.ajax({
        url: "http://localhost:8082/HealthCareSystem/Services/patients/"+ itemid ,
        type: "DELETE",
        contentType: "application/json",  
        dataType:'json',
        success: function(data, textStatus, errorThrown) {

            //success toast message
            successToast("Patient Successfully Deleted From the System");

            //load new patients data
            loadPatientData();
        },
        timeout: 120000,
    });
    
    
	
};

//function clear all input fields in form
function clearAll(){
    $('#patientid').val("");
    $('#patientname').val("");
    $('#patinetAge').val("");
    $('#patientEmail').val("");
    $('#patientAddress').val("");
    $('#patientBlood').val("A+");
    $('#patinetTelephone').val("");   
    $('#patientpassword').val(""); 
    $('#patientpassword').prop('readonly', false);    
}

//display a success toast message
//hide after 5seconds
function successToast(msg){
    $.toast({
        heading: 'Success!',
        text: msg,
        hideAfter: 5000  ,
        loader: false,
        position: 'top-right', 
        icon: 'success',
        stack: 20
    })
}

//display a error toast message
//hide after 5seconds
function errorToast(msg){
    $.toast({
        heading: 'Error!',
        text: msg,
        hideAfter: 5000  ,
        loader: false,
        position: 'top-right', 
        icon: 'error',
        stack: 20
    })
}

//validate form inputs
function validate(dataset){
    let count = 0;
    
    //name validation
    if(dataset.name.length == 0 ){
        $('#name_error').text("Name can not be empty")
        count++;
    }else{
        $('#name_error').text("");
    }

    //age validation
    if(dataset.age.length == 0 ){
        $('#age_error').text("Age can not be empty")
        count++;
    }else{
        $('#age_error').text("");
    }

    //email validation
    if(dataset.email.length == 0 ){
        $('#email_error').text("Email can not be empty")
        count++;
    }else{
        $('#email_error').text("");
    }

    //address validation
    if(dataset.patientAddress.length == 0 ){
        $('#address_error').text("Address can not be empty")
        count++;
    }else{
        $('#address_error').text("");
    }

    //telephone validation
    if(dataset.patientTelephone.length == 0 ){
        $('#phone_error').text("Phone number can not be empty")
        count++;
    }else{
        $('#phone_error').text("");
    }

    //password validation
    if(dataset.id.length == 0 ){
    if(dataset.password.length == 0 ){
        $('#password_error').text("Passwords can not be empty")
        count++;
    }else{
        $('#password_error').text("")
    }
    }


    //display errors
    $('#alerts').empty();
    if(count == 0 ){
        return true;
    }else{
        var display_errors = '<div class="alert alert-danger " role="alert"><h6 class="mb-0 font-weight-bold">Validation Errors !</h6></div>';
        $('#alerts').append( display_errors )
        return false;
    }
}




