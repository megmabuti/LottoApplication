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
<title>Lotto System</title>
</head>
<%		
		ArrayList <Object> numbers = new ArrayList <Object>();
		for (int x= 1; x < 55; x++)
			{
				numbers.add(x+1);
			} 
		Collections.shuffle(numbers);
		for (int y = 0; y < 6; y++) 		
%>
	
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
		<h2> It's your lucky Day! </h2>
		
		<form method="post" name="luckybet" action="okbet.jsp">
		<p>
				<input type="text" name="num1" id="num1" value="<%=numbers.get(0)%>" size="1">
				<input type="text" name="num2" id="num2" value="<%=numbers.get(1)%>" size="1">
				<input type="text" name="num3" id="num3" value="<%=numbers.get(2)%>" size="1">
				<input type="text" name="num4" id="num4" value="<%=numbers.get(3)%>" size="1">
				<input type="text" name="num5" id="num5" value="<%=numbers.get(4)%>" size="1">
				<input type="text" name="num6" id="num6" value="<%=numbers.get(5)%>" size="1">
		</p>
		<input type="submit" value="Pick another"></a>
		
		<a href='okbet.jsp'><input type="submit" value="Submit"></a>
		</form>
       </div>
        <div id="content_bottom"></div>  
        <font color="#FFFFFF"><marquee><b> Created by  Ron Sandel & Meg Mabuti  | <i>Copyright 2012</i></b></marquee></font>
</div>
</div>
</body>
</html>
	
