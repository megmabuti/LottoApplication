<jsp:include page="style.jsp" />
<%@ page import = "java.util.*" %>
<%@ page import="java.io.*"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<script type="text/javascript" src="date_time.js"></script>
<title>Lotto System</title>
</head>

<body>
<div id="container">
		<div id="header">
            <h2><br/>Previous Winning numbers:</h2>
		</div>   
        <div id="menu">        
              <li><a href="placebet.jsp">LET'S PLAY LOTTO!</a></li>
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
                    <li><a href="login.jsp">Login/Register</a></li>

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
        	<h2>Welcome To lotto-Star</h2>
        </div>
        <div id="content_bottom"></div>  
        <font color="#FFFFFF"><marquee><b> Created by  Ron Sandel & Meg Mabuti  | <i>Copyright 2012</i></b></marquee></font>
</div>
   </div>
</body>
</html>