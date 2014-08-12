<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
     
 <link rel="stylesheet" type="text/css" href="style.css">
 <script type="text/javascript" src="validation.js"></script>
 
 <title>Info Grabber</title>
  </head>
    <body>
	
 	<form name="form1" class="login" action="Myform.asp" onsubmit="return validateForm()" method="post">
		
	<fieldset>
            
            <!--Heading..........................................................!-->
		<legend><h2>Info Grabber</h2></legend>

            <!--Name...........................................................!-->    
            <div class="name"  onmouseover="highlight(name)" onmouseout="unhighlight(name)
                 onsubmit=color(name)"> 

                    <label for='name'>Name<span style="color:red;">*</span></label>
                    <input type='text' name='name' id='name'>
                    
                    <div class="fixed" id="nameError">
					Please enter your full name including spaces, e.g. "John Smith"
                    </div>   
            </div>
			
            <!--Address Line 1...........................................................!--> 
            <div class='address1' onmouseover="highlight(address1)" onmouseout="unhighlight(address1)">
                    <label for='address1'>Address Line 1<span style="color:red;">*</span></label>
                    <input type='text' name='address1' id='address1' >
                    <div class="fixed" id="address1error">
					Address line one must not be left blank
                    </div>
            </div>   
			
            <!--Address Line 2...........................................................!--> 
            <div class='address2' onmouseover="highlight(address2)" onmouseout="unhighlight(address2)">     
                    <label for='address2'>Address Line 2<span style="color:red;">*</span></label>
                    <input type='text' name='address2' id='address2'>
            </div>
             
            <!--County...........................................................!--> 
            <div class='county'>
                    <label for='county'>County<span style="color:red;">*</span></label>
                   			<select name='County' id='county' >
                            <option value="-1" selected>Please select... </option>
                            <option value="1">Antrim</option>
                            <option value="2">Armagh</option>
                            <option value="3">Carlow</option>
                            <option value="4">Cavan</option>
                            <option value="5">Clare</option>
                            <option value="6">Cork</option>
                            <option value="7">Derry</option>
                            <option value="8">Donegal</option>
                            <option value="9">Down</option>
                            <option value="10">Dublin</option>
                            <option value="11">Fermanagh</option>
                            <option value="12">Galway</option>
                            <option value="13">Kerry</option>
                            <option value="14">Kildare</option>
                            <option value="15">Kilkenny</option>
                            <option value="16">Laois</option>
                            <option value="17">Leitrim</option>
                            <option value="18">Limerick</option>
                            <option value="19">Longford</option>
                            <option value="20">Louth</option>
                            <option value="21">Mayo</option>
                            <option value="22">Meath</option>
                            <option value="22">Monaghan</option>
                            <option value="24">Offaly</option>
                            <option value="25">Roscommon</option>
                            <option value="26">Sligo</option>
                            <option value="27">Tipperary</option>
                            <option value="28">Tyrone</option>
                            <option value="29">Waterford</option>
                            <option value="20">Westmeath</option>
                            <option value="31">Wexford</option>
                            <option value="33">Wicklow</option>
                        </select>
                        <div class="fixed" id="countyError">Please pick one</div>
            </div>
		
            <!--Gender...........................................................!--> 
            <div class='gender'>
                    <label for='gender'>Gender<span style="color:red;">*</span></label>
                        <input type='radio' name='gender' id= 'gender_Male'  value='Male' >Male
                        <input type='radio' name='gender' id= 'gender_Female' value='Female' >Female
                    <div class="fixed" id="genderError">Please pick one</div>
            </div>
  	
            <!--Preferences...........................................................!-->
            <div class= 'preferences'>
                    <label for='preferences'>Preferences<span style="color:red;">*</span></label>
                        <input type='checkbox' name='color' id= 'preferences_Red' value='yes' >Red
                        <input type='checkbox' name='color' id= 'preferences_Green' value='yes' >Green
                        <input type='checkbox' name='color' id= 'preferences_Blue' value='yes' >Blue
                    <div class="fixed" id="preferencesError">Please pick one</div>
            </div>
                               
            <!--Phone...........................................................!-->    
            <div class ='phone' onmouseover="highlight(phone)" onmouseout="unhighlight(phone)"> 
                    <label for='phone'>Phone<span style="color:red;">*</span></label>
                    <input type='tel' name='data' id='phone' >
                    
                    <div class="fixed" id="phoneError">
					Please enter valid 10 digit tel no, e.g. 0872323232"
                    </div>
            </div>			
                
            <!--Email...........................................................!--> 
            <div class= 'email' onmouseover="highlight(email)" onmouseout="unhighlight(email)">
                    <label for='email'>Email <span style="color:red;">*</span></label>
                    <input type='text' name='email' id='email' onsubmit="validateForm();">
                        
                    <div class="fixed" id="emailError">
					 Please enter valid email, e.g. "john@aol.com"
                    </div>
            </div>
                
            <!--Password 1...........................................................!-->
            <div class= 'password1' onmouseover="highlight(password1)" onmouseout="unhighlight(password1)">
                    <label for='password1'>Password<span style="color:red;">*</span></label>
                    <input type='password' name='password1' id='password1' >
                    <div class="fixed" id="password1error">
                    Must contain one uppercase letter, a numeric digit & 6-8 characters long
                   </div>
                    
            </div>         
			
            <!--Password 2...........................................................!-->
            <div class= 'password2' onmouseover="highlight(password2)" onmouseout="unhighlight(password2)">      
                    <label for='password2'>Verify password<span style="color:red;">*</span> </label>
                    <input type='password' name='password2' id='password2' >
                    <div class="fixed" id="password2error">passwords must match</div>       
            </div>
                                
            <!--Send and Clear...........................................................!-->
            <div id="send-left">
                <label>
                <input type='submit' value='SEND' id='submit'>
				</label>
            </div>
			<div id="clear-right">
                <label>
                <input type='reset' value='CLEAR' id='reset'>
				</label>
            </div>
			
		</fieldset>	
     </form>
    </body>
</html>