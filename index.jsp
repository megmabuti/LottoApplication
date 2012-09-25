<jsp:include page="style.jsp" />

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="date_time.js"></script>
<title>Lotto System</title>
</head>

<body>
<div id="container">
		<div id="header">
            <h2><br/>Previous Winning numbers:</h2>
		</div>   
        <div id="menu">        
			  <li><a href="#">LET'S PLAY LOTTO!</a></li>			 
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
                    <li><a href="login.jsp">Register</a></li>

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
			<h1>Basic lottery game rules or regulations for popular Lotteries</h1>

			You must be 18 years of age or older to play Lottery and claim prizes.</br>
			Players are responsible for checking their tickets before leaving the Retailer location.</br>
			A ticket is void if stolen, unissued, mutilated, illegible, tampered with or altered in any way, defective or incomplete.</br>
			The Lottery is not responsible for lost or stolen tickets.</br>
			A Lotto/Lottery ticket may be cancelled only if presented before the drawing to the Retailer where it was originally purchased.</br>
			Multi-drawing bets on the same number(s) may be made in advance for all games. Ask Retailer for details.</br>
			All winning tickets are subject to validation by the Lottery.</br>
			All winning tickets are bearer instruments.</br>
			All prizes must be claimed within 6 months/one year from date of drawing.
        </div>
        <div id="content_bottom"></div>  
        <font color="#FFFFFF"><marquee><b> Created by  Ron Sandel & Meg Mabuti  | <i>Copyright 2012</i></b></marquee></font>
		</div>
</div>
</body>
</html>