<html>
<head>
<script type="text/javascript">
function validate(form){
	var errors=[];
	  if( document.myForm.firstname.value == ""||document.myForm.lastname.value == "" 
		|| document.myForm.emailid.value == ""||document.myForm.gender.value == ""
		||document.myForm.password.value == ""||document.myForm.confirmpassword.value == "" 
		|| document.myForm.addressline1.value == ""||document.myForm.addressline2.value == ""
		||  document.myForm.city.value == ""||document.myForm.state.value == "" 
		|| document.myForm.age.value == ""||document.myForm.pincode.value == ""		
	    ||document.myForm.mobile.value == "" )
      {
         errors.push( "Field cannot be left blank!" );
      }
     
	  var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
	    if(!(pattern.test(emailid.value))){ 
	    	errors.push(" enter a valid emailid");
	    
	    }
	    if(document.myForm.password.value!=document.myForm.confirmpassword.value){
	    	errors.push("pssword donot match");
	    }
	    var regPostcode = /^([1-9])([0-9]){5}$/;
	 if(!(regPostcode.test(pincode.value))){
		 errors.push("enter valid pincode");
		  
	 }   
	 var regage=/^[1-9]{2}$/;
	 if(!(regage.test(age.value))){
		 errors.push("enter valid age");
	 }
	 var regmobile=/^[1-9]{1}[0-9]{9}$/;
	 if(!(regage.test(mobile.value))){
		 errors.push("enter valid mobile no.");
		 
	 }
	 if(errors.length>0){
		 var msg="ERRORS:\n";
		 for(var i=0;i<errors.length;i++){
			 msg+=errors[i]+"\n";
			 
		 }
		 alert(msg);
		 return false;
	 }
	 
	 return true;
}
</script>
</head>
<style type="text/css">
.button {
	background-color: #abda0f;
	padding: 8px 10px 8px;
	color: #fff;
	text-decoration: none;
	cursor: pointer;
	float: left;
	font-size: 18px;
	margin: 10px;
	 border-radius: 8px;
}

 
 .inputs {
    padding: 8px;
    border-radius: 3px;
    border: 1px solid #CCC;
    background-image: none;
    width: 270px;
}

.inputs:focus {
    outline-color: #54B4AD;
}
a{
text-align:justify;
font-family:arial;
font-style:bold;
color:skyblue
}
p.big {
    line-height: 0.8;
}
c{
font-size:20px;
text-align:justify;
font-family:arial;
color:skyblue;
font-style:bold;
}
b{
color:skyblue;
}
</style> 
<body>
<form action="SignController" name="myForm" onsubmit="return validate(this)">
<p>
<br>
<c>Not a user yet?</c><br>
<b>Create an account! It's quick, free and gives you access to special features.</b><br><br>
<a>First name</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>Last Name</a><br><br>
<input class="inputs" placeholder="First Name" type="text" name="firstname"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<input class="inputs" placeholder="Last Name" type="text" name="lastname"/>
<br>
<br>
<a>email Id</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>Gender</a><br><br>
<input class="inputs" placeholder="email Id" type="text" name="emailid"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="radio" name="gender"/>Male
	  <input type="radio" name="gender"/>Female
	  <input type="radio" name="gender"/>Others
	  <br><br>
<a>Password*</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>Confirm Password*</a><br><br>
<input class="inputs" placeholder="Password" type="password" name="password"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
<input class="inputs" placeholder="Confirm Password" type="password" name="confirmpassword"/> 
 <br><br>
 <a>Address Line 1*</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a>Address Line 2</a><br><br>
  <input class="inputs" placeholder="Address Line 1" type="text" name="addressline1"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <input class="inputs" placeholder="Address Line 1" type="text" name="addressline2"/>
 <br><br>
<a>City</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a>State </a><br><br>
<input class="inputs" placeholder="City" type="text" name="city"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
 <select class="inputs"  name="state">
					<option></option>
					<option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
					<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
					<option value="ASSAM">ASSAM</option>
					<option value="BIHAR">BIHAR</option>
					<option value="CHATTISGARH">CHATTISGARH</option>
					<option value="DELHI">DELHI</option>
					<option value="GOA">GOA</option>
					<option value="HARAYANA">HARAYANA</option>
					<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
					<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
					<option value="JHARKHAND">JHARKHAND</option>
					<option value="KARNATAKA">KARNATAKA</option>
					<option value="KERALA">KERALA</option>
					<option value="MADHYA PRADESH">MADHYA PRADESH</option>
					<option value="MAHARASHTRA">MAHARASHTRA</option>
					<option value="MANIPUR">MANIPUR</option>
					<option value="MIZORAM">MIZORAM</option>
					<option value="NAGALAND">NAGALAND</option>
					<option value="ORISSA">ORISSA</option>
					<option value="PUNJAB">PUNJAB</option>
					<option value="RAJASTHAN">RAJASTHAN</option>
					<option value="SIKKIM">SIKKIM</option>
					<option value="TAMIL NADU">TAMIL NADU</option>
					<option value="TELANGANA">TELANGANA</option>
					<option value="TRIPURA">TRIPURA</option>
					<option value="UTTAR PRADESH">UTTAR PRADESH</option>
					<option value="UTTRANCHAL">UTTRANCHAL</option>
					<option value="WEST BENGAL">WEST BENGAL</option>
					</select>
 <br><br>
 <a>Age</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a>Pincode*</a><br><br>
 <input class="inputs" placeholder="Age" type="text" name="age"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <input class="inputs" placeholder="Pincode" type="text" name="pincode"/>
 <br><br>
 <a>Mobile* </a>
 <br><br><input class="inputs" placeholder="Mobile" type="text" name="mobile"/>
 </p>
 
 <a>By clicking this Button you agree and accept our user agreement and privacy policy</a>
<br>
			<button class="button" type="submit" name="btnSave">Create Account</button>
			
</form>
</body>
</html>