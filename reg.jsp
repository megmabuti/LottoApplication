<html>
	<head>
    <title>Employee Add</title>
    <script language="JavaScript" src="/dbconnection/includes/js/javascript.js"></script>
    <script language="JavaScript">      
        function validateForm() {
          var msg = "";
                		
      		if (!checkStrLength(trim(document.registrationForm.email))) {
      			 msg += "Email\n";
      		} else {
      			if (!checkEmail(document.registrationForm.email)) {
      				msg += "Invalid email.\n";
      			}
      		}
      		
      		if (!checkStrLength(trim(document.registrationForm.password1))) msg += "Password\n";
      		if (!checkStrLength(trim(document.registrationForm.password2))) msg += "Confirm Password\n";
      		      		
      		if (document.registrationForm.password1.value != document.registrationForm.password2.value) {
      			msg += "The passwords do not match.\n";			
      		}
      		
          if (!checkStrLength(trim(document.registrationForm.firstName))) msg += "First Name\n";
      		if (!checkStrLength(trim(document.registrationForm.lastName))) msg += "Last Name\n"; 
      		if (!checkLength(document.registrationForm.address)) msg += "Address\n";
      		// if (!checkLength(document.registrationForm.city)) msg += "City\n";
      		
      	  checkNum(document.registrationForm.phone);
		  checkNum(document.registrationForm.cphone);
      		
      		if (msg != "") {
      			alert("You Must Provide The Following Information:\n\n" + msg);
      			return false;
      		}	
      		
      		document.registrationForm.submit();
          
          function checkNum(phone) {
      		  formobj = document.registrationForm;
      			var phoneNumber = "";
      	
      			formobj.phone.value = trim(formobj.phone);
      			
      			phoneNumber = extractPhoneOrFaxNumber(phone);
      						
      			if (!checkLength(formobj.phone)) {
      				msg += "Phone\n";	
      			} else {
      				if (!isANum(phoneNumber)) {
      					msg += "Phone must be numeric.\n";
      				}
      			} 			
      			return;
      	 } 

			
       }
    </script>
	 </head>
	<body>
		<form method="POST" name="registrationForm" action="add.jsp">
      <p>Enter email:
				<input type="text" name="email" size="20">
			</p>
      <p>Enter password:
				<input type="password" name="password1" size="20">
			</p>
			<p>Confirm password:
				<input type="password" name="password2" size="20">
			</p> 
			<p>Age:
				<input type="text" name="age" size="20">
			</p> 
			<p>Enter first name:
				<input type="text" name="firstName" size="20">
			</p>
			<p>Enter last name:
				<input type="text" name="lastName" size="20">
			</p>
			<p>Enter address:
				<input type="text" name="address" size="20">
			</p>
			<p>Enter home phone number:
				<input type="text" name="phone" size="20">
			</p>
			<p>Enter cell phone number:
				<input type="text" name="cphone" size="20">
			</p>
			<p>				
			<input type="submit" value="Register" onclick="validateForm()">
			</p>
		</form>
	</body>
</html>