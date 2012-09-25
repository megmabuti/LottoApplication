<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.io.*"%>


<jsp:include page="style.jsp" />
<html lang="en">
<head>
<meta charset="utf-8">
	<link rel="stylesheet" href="development-bundle/themes/base/jquery.ui.all.css"></script>
	<script src="development-bundle/jquery-1.7.2.js"></script>
	<script src="development-bundle/external/jquery.bgiframe-2.1.2.js"></script>
	<script src="development-bundle/ui/jquery.ui.core.js"></script>
	<script src="development-bundle/ui/jquery.ui.widget.js"></script>
	<script src="development-bundle/ui/jquery.ui.mouse.js"></script>
	<script src="development-bundle/ui/jquery.ui.button.js"></script>
	<script src="development-bundle/ui/jquery.ui.draggable.js"></script>
	<script src="development-bundle/ui/jquery.ui.position.js"></script>
	<script src="development-bundle/ui/jquery.ui.resizable.js"></script>
	<script src="development-bundle/ui/jquery.ui.dialog.js"></script>
	<script src="development-bundle/ui/jquery.effects.core.js"></script>
<link rel="stylesheet" href="development-bundle/demos/demos.css">
<style>
		body { font-size: 62.5%; }
		label, input { display:block; }
		input.text { margin-bottom:12px; width:95%; padding: .4em; }
		fieldset { padding:0; border:0; margin-top:25px; }
		h1 { font-size: 1.2em; margin: .6em 0; }
		div#users-contain { width: 350px; margin: 20px 0; }
		div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		.ui-dialog .ui-state-error { padding: .3em; }
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
</style>
<script language= "javascript" src="date_time.js"></script>

<title>Lotto System</title>

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
<div id="container">
		<div id="header">
            <h2><br/>Previous Winning numbers:</h2>
		</div>   
        <div id="menu">        
              <li><a href="#">LET'S PLAY LOTTO!</a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>			  
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>
			  <li><a href="#"></a></li><li><a href="#"></a></li>			  
			<font color= "white"></br>
				<span id="date_time"></span>
            <script type="text/javascript">window.onload = date_time('date_time');</script></font>
			<button id="create-user">Log In</button>
          <ul>
            <li class="menuitem"></li>
          </ul>
</div>
		<div id="leftmenu">
        
        <div id="leftmenu_top"></div>
        <div id="leftmenu_main">    
<p style="margin-top: 0; margin-bottom: 0"><img name="index_r2_c1" 
src="images/index_r2_c1.gif" border="0" width="186" height="225"></p>
<p style="margin-top: 0; margin-bottom: 0">
          <ul>
                    <Li><a href="login.jsp">Register</a></li>

                    <li><a href="rules.jsp">Rules</a></li>

                    <li><a href="accreditation.jsp">Accreditation</a></li>

                    <li><a href="#">About</a></li>
       </ul>
</div>
        
<div id="leftmenu_bottom"></div>

        </div>
        <div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
		<form method="POST" name="registrationForm" action="add.jsp">
		
			<p>*All form fields are required.</p>
			<b>Enter email:
				<input type="text" name="email" size="30">
			Enter password:
				<input type="password" name="password1" size="30">
			Confirm password:
				<input type="password" name="password2" size="30">      	
			Enter first name:
				<input type="text" name="firstName" size="30">
			Enter last name:
				<input type="text" name="lastName" size="30">
			Age:
				<input type="text" name="age" size="30">
			Enter address:
				<input type="text" name="address" size="30">
			Enter cell phone number:
				<input type="text" name="cphone" size="30">
			Enter phone:
				<input type="text" name="phone" size="30">
			</b>
			<p>				
			<input type="Button" value="Register" onclick="validateForm()">
			</p>
		</form>
        	<h2> <script>
$(function() {
		$( "#dialog:ui-dialog" ).dialog( "destroy" );
		
		var name = $( "#name" ),
			email = $( "#email" ),
			password = $( "#password" ),
			allFields = $( [] ).add( name ).add( email ).add( password ),
			tips = $( ".validateTips" );

		function updateTips( t ) {
			tips
				.text( t )
				.addClass( "ui-state-highlight" );
			setTimeout(function() {
				tips.removeClass( "ui-state-highlight", 1500 );
			}, 500 );
		}

		function checkLength( o, n, min, max ) {
			if ( o.val().length > max || o.val().length < min ) {
				o.addClass( "ui-state-error" );
				updateTips( "Length of " + n + " must be between " +
					min + " and " + max + "." );
				return false;
			} else {
				return true;
			}
		}

		function checkRegexp( o, regexp, n ) {
			if ( !( regexp.test( o.val() ) ) ) {
				o.addClass( "ui-state-error" );
				updateTips( n );
				return false;
			} else {
				return true;
			}
		}
		
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			height: 300,
			width: 350,
			modal: true,
			buttons: {
				"Login": function() {
					var bValid = true;
					allFields.removeClass( "ui-state-error" );

					bValid = bValid && checkLength( name, "username", 3, 16 );
					bValid = bValid && checkLength( password, "password", 5, 16 );

					bValid = bValid && checkRegexp( name, /^[a-z]([0-9a-z_])+$/i, "Username may consist of a-z, 0-9, underscores, begin with a letter." )
					bValid = bValid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );

					if ( bValid ) {
						$( "#users tbody" ).append( "<tr>" +
							"<td>" + name.val() + "</td>" +  
							"<td>" + password.val() + "</td>" +
						"</tr>" ); 
						$( this ).dialog( "close" );
					}
				},
				Cancel: function() {
					$( this ).dialog( "close" );
				}
			},
			close: function() {
				allFields.val( "" ).removeClass( "ui-state-error" );
			}
		});

		$( "#create-user" )
			.button()
			.click(function() {
				$( "#dialog-form" ).dialog( "open" );
			});
	});
	</script></h2>
			</div>
        <div id="content_bottom"></div>  
        <font color="#FFFFFF"><marquee><b> Created by  Ron Sandel & Meg Mabuti  | <i>Copyright 2012</i></b></marquee></font>
</div>
</div>
   <div class="demo">

<div id="dialog-form" title="Log In">
<script>
	function reloadImg(id) 
		{
		var obj = document.getElementById(id);
		var src = obj.src;
		var pos = src.indexOf('?');
		if (pos >= 0) {
			src = src.substr(0, pos);
		}
		var date = new Date();
		obj.src = src + '?v=' + date.getTime();
		return false;
		}
</script>

	<form method="POST" action="validateuser.jsp">
	<p class="validateTips">All form fields are required.</p>

	<fieldset>
		<label for="name">Username</label>
		<input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all" />
		<label for="password">Password</label>
		<input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all" />
			<br>
			<p>
			<img id="captcha" src="<c:url value="simpleCaptcha.jpg" />" width="200">
			<a href = "#" onClick="return reloadImg('captcha');"><br>Can't Read the code? Try Another.</a>
			</p>
			<br>
		<label for="name">Enter Code:</label>
		<input type="text" name="answer" id="answer" class="text ui-widget-content ui-corner-all" />
	</fieldset>
	</form>
</div>
</div>
</body>
</html>