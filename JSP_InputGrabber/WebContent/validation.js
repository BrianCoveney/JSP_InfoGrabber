// JavaScript Document
//--Brian Coveney  Student Id: R00105727........................................
function highlight(lable) 
        { 
                lable.style.backgroundColor = "lightgrey"; 
                } 
                function unhighlight(lable) 
                { 
                lable.style.backgroundColor = ""; 
        }          

function validateForm() {//function to carry-out vallidation

    //Validating that 'name' must be greater in length than 5 and contain a space 
    var name = x = document.forms["form1"]["name"].value;
    
    if (x.length < 5 || !x.match(' '))
    {
        document.getElementById("name").className = "colorLabel";
        document.getElementById("nameError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("name").className = "unColorLabel";
        document.getElementById("nameError").className = "fixed";
    }

    //Validating that Address Line 1 is not empty 
    var address1 = x = document.forms["form1"]["address1"].value;
    if (x === null || x === '')
    {
        document.getElementById("address1").className = "colorLabel";
        document.getElementById("address1error").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("address1").className = "unColorLabel";
        document.getElementById("address1error").className = "fixed";
    }
    
///   Validating that a 'county' is selected
    var county = x = document.forms["form1"]["County"].value;
    if(x == "-1" )
    {
        document.getElementById("countyError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("countyError").className = "fixed";
    }
    
    //Validating that at leat one 'Gender' is picked
    if(!(document.getElementById("gender_Male").checked 
            || document.getElementById("gender_Female").checked))
    {
        document.getElementById("genderError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("genderError").className = "fixed";
    }
    
    //Validating that at leat one 'Preferences ' is picked
    if(!(document.getElementById("preferences_Red").checked 
            || document.getElementById("preferences_Green").checked
            || document.getElementById("preferences_Blue").checked))
    {
        document.getElementById("preferencesError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("preferencesError").className = "fixed";
    }
       
    //Validating that phone no. must be an numeric digit and 10 digits in length
    var phone = x = document.forms["form1"]["phone"].value;
    if (x.length < 10 || !x.match(/^[0-9]+$/))
    {
        document.getElementById("phone").className = "colorLabel";
        document.getElementById("phoneError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("phone").className = "unColorLabel";
        document.getElementById("phoneError").className = "fixed";
    }
    
    //Validating that email where email must contain an @ sign and at least one dot. 
    //The @ must not be the first character of the email address, 
    //and the last dot must be after the @ sign, and minimum 2 characters before the end
    var x = document.forms["form1"]["email"].value;

    var atpos = x.indexOf("@");  // @ postiion
    var dotpos = x.lastIndexOf("."); // (.) position
     
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length)
    {
        document.getElementById("email").className = "colorLabel";
        document.getElementById("emailError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("email").className = "unColorLabel";
        document.getElementById("emailError").className = "fixed";
    }

    //Validating that email where email must contain one of the domain names below
    if (!(x.match('.com') || x.match('.net') || x.match('.org') ||
            x.match('.co.uk') || x.match('.ie')))
    {
        document.getElementById("emailError").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("emailError").className = "fixed";
    }
    
    //Password validation works for catching input errors and matching password 1 & 2,
    //but the error display for password 1 does not disappear on correct input.
    var password1 = document.forms["form1"]["password1"].value; 
    var password2 = document.forms["form1"]["password2"].value; 

    if (!password1.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,8}$/))
//            || (!password1 == password2))//Attempt to fix above problem
    {
        document.getElementById("password1").className = "colorLabel";
        document.getElementById("password1error").className = "error";
//      document.getElementById("password2").className = "colorLabel";//Attempt to 
//      document.getElementById("password2error").className = "error";//fix above problem
        return false;        
    }
    if (!(password1 == password2))
    {
        document.getElementById("password2").className = "colorLabel";
        document.getElementById("password2error").className = "error";
        return false;
    }
    else 
    {
        document.getElementById("password1").className = "unColorLabel";
        document.getElementById("password1errors").className = "fixed";
        document.getElementById("password2").className = "unColorLabel";
        document.getElementById("password2errors").className = "fixed";

    }
}

/* 
//Here I tried a nested if statement to resolve the issue above, but to no avail
var password1 = document.forms["form1"]["password1"].value; 
    var password2 = document.forms["form1"]["password2"].value; 

    if (!(password1.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{2,8}$/))) {
        if (!(password1 == password2)){  
            document.getElementById("password1").className = "colorLabel";
            document.getElementById("password1error").className = "error";
            document.getElementById("password2").className = "colorLabel";
            document.getElementById("password2error").className = "error";
            return false;   
        }
    else 
    { 
        document.getElementById("password1").className = "unColorLabel";
        document.getElementById("password1errors").className = "fixed";
        document.getElementById("password2").className = "unColorLabel";
        document.getElementById("password2errors").className = "fixed";
    }
  }
}
*/

