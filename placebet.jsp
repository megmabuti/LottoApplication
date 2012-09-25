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
	<script src="development-bundle/ui/jquery.ui.dialog.js"></script>
	<script src="development-bundle/ui/jquery.effects.core.js"></script>
<link rel="stylesheet" href="development-bundle/demos/demos.css">
<style>
		body { font-size: 85%; }
		h1 { font-size: 1.2em; margin: .6em 0; }
		div#users-contain { width: 350px; margin: 20px 0; }
		div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		.ui-dialog .ui-state-error { padding: .3em; }
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
</style>
<script language= "javascript" src="date_time.js"></script>
<script language = "javascript">

	function validateForm() {
	var msg = "";

	var one=document.forms["placebetForm"]["num1"].value;
	var two=document.forms["placebetForm"]["num2"].value;
	var three=document.forms["placebetForm"]["num3"].value;
	var four=document.forms["placebetForm"]["num4"].value;
	var five=document.forms["placebetForm"]["num5"].value;
	var six=document.forms["placebetForm"]["num6"].value;

	if (one == "" || two == "" || three == "" || four == "" || five == "" || six == "") 
	{
	msg += "Please supply all 6 fields.\n";
	}
	
	if (one == two || two == three || three == four || five == six || one == three || one == four || one == five || one == six || two == four || two == five || two == six || three == five || three == six || four == six) 
	{
	msg += "You have entered duplicate digits.\n";
	}
	
	
	
	if (msg != "")
	{
		alert(msg);
		return false;
	}
	
	}

</script>
<title>Lotto System</title>
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
                    <Li><a href="placebet.jsp">Play!</a></li>

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
		<form method="POST" name="placebetForm" action="okbet.jsp"onsubmit="validateForm()">
		<h2>Place your Bet!</h2>
		<h1>Game Rules</h1>
		Match all 6 Numbers to win the Jackpot Price <b>P100,000,000</b>!</br>
		Match 5 Numbers to win the second highest prize P150,000.</br>
		Match 4 Numbers to win P2,000</br>
		Match 3 Numbers to win P150.</br>
		Players must be 18 years of age and above.
		<h1>Instructions</h1>
		Choose six Numbers from 1 to 55. Six Numbers are drawn, out of 55 numbers.</br>
		to save your bet, click the submit button.</br>
		View the <a href="wcom.jsp">winning combination</a>.</br>
		</br>*Place your 6 digit bet.</br>
		<form method="post" name="placebet" action="okbet.jsp" onsubmit="return validateForm()">
					<input type="text" name="num1" id="num1" size="5">
					<input type="text" name="num2" id="num2" size="5">
					<input type="text" name="num3" id="num3" size="5">
					<input type="text" name="num4" id="num4" size="5">
					<input type="text" name="num5" id="num5" size="5">
					<input type="text" name="num6" id="num6" size="5">
					<p><input name= "submit" type="Submit" value="Submit" onclick="validateForm()"></p></br>
		Feeling lucky today? Try our <a href="luckypick.jsp"><b>Lucky Pick<b></a>.
       </div>
        <div id="content_bottom"></div>  
        <font color="#FFFFFF"><marquee><b> Created by  Ron Sandel & Meg Mabuti  | <i>Copyright 2012</i></b></marquee></font>
</div>
</div>
</body>
</html>