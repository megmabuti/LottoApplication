<jsp:include page="style.jsp" />
<html>
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
		body { font-size: 85%; }
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
<script type="text/javascript" src="date_time.js"></script>
<title>Rules</title>
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
            <script type="text/javascript">window.onload = date_time('date_time');</script>
		  </font>
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
		
        	<h2>Rules in playing the Lotto game</h2>
			</br>Lotto-Star Lottery draws are held daily.</br>
			</br>To enter the Lotto-Star Lottery, players must login first or register an account.</br>
			</br>Match all 6 Numbers to win the Jackpot Price</br>
			</br>Players must be 18 years of age and above.</br>
			</br>Prizes amounting to Php5,000.00 and below can be claimed at any authorized Lotto-Star outlet.</br>
			</br>Prizes worth more than Php5,000.00 to Php20,000.00 can be claimed at any of the PCSO Provincial District Offices or at the PCSO Main Office.</br>
			</br>Jackpot prize should validated and claimed at the PCSO Main Office.
        </div>
        <div id="content_bottom"></div>  
        <font color="#FFFFFF"><marquee><b> Created by  Ron Sandel & Meg Mabuti  | <i>Copyright 2012</i></b></marquee></font>
</div>
   </div>
</body>
</html>