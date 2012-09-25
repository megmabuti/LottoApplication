<%@ page import="nl.captcha.Captcha"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="lotto" class="com.phil.store.nike.products.lotto" scope="application"/>
<jsp:setProperty name="lotto" property="*"/>


<html>
	<head><title>Login Page</title></head>
	
	<body>
		
		<%

			Connection conn = null;
				
			try {
			
			Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
			request.setCharacterEncoding("UTF-8");
			String answer = request.getParameter("answer");
					
			if (captcha.isCorrect(answer)) { 
			
			    String strUsername = lottosystem.getUsername();
				String strPassword = lottosystem.getPassword();
				           
				System.out.println("Username: " + strUsername);        
				System.out.println("Password: " + strPassword);  
				

		Properties property = null;                                       
                                                                          
        String propFile = "J:/SCHOOL/apache-tomcat-6.0.29/webapps/fp/dbsource.property";
        FileInputStream fis = new FileInputStream(propFile) ;             
        property = new Properties();                                      
        property.load(fis);                                               
                                                                          
                                      
        String name = property.getProperty("username");                   
        String password = property.getProperty("password");               
        String server = property.getProperty("servername");               
        String typedriver = property.getProperty("typedriver");           
        String dbName = property.getProperty("databasename");             
                       				                                      
        System.out.println("name: " + name);                              
		System.out.println("password: " + password);                      
        System.out.println("server: " + server);                          
        System.out.println("typedriver: " + typedriver);                  
        System.out.println("dbName: " + dbName);                          
                                                                          
                                                
        Class.forName(typedriver);		                                  
		                                                                  
	    //String url = "jdbc:jtds:sqlserver://"+db.getServerName()+":"+db.getPortDB()+"//"+db.getDBName();
	    String url = "jdbc:jtds:sqlserver://"+server+":1433"+"//"+dbName; 
	                                                                      
        conn = DriverManager.getConnection(url, name, password);

		PreparedStatement pstmt = conn.prepareStatement("select * from Users where Username = ? and Password = ? and Type = ? ");
		
		pstmt.setString(1, strUsername);
		pstmt.setString(2, strPassword);
		
		ResultSet rs = pstmt.executeQuery(); 

			if(rs.next()) { 
			
				if(strType.equals("User")) { 	
					Cookie cookie = new Cookie ("username", strUsername);
					cookie.setMaxAge(5 * 60 * 1000);
					response.addCookie(cookie); %>
					<jsp:forward page = "player.jsp"/>
					
				<% } else if(strType.equals("Admin")) { 
					Cookie cookie = new Cookie ("username", strUsername);
					cookie.setMaxAge(5 * 60 * 1000);
					response.addCookie(cookie); %>
					<jsp:forward page = "admin.jsp"/>
					
				<% } else {} %>
				
			<% } else { %>
			
					<b>Invalid username or password.</b><br>
					Want to be a member? <a href="login.jsp"><b>Sign up</b></a> now!
					<br><br>
					<a href="login.jsp">Go back to login</a>
					
			<% } 
			} else { %>
			
				<jsp:forward page="errorcaptchalogin.jsp"/>
			
		<% } }
		catch (IOException ioe) {
    		  System.out.println("IOException occured: " + ioe.getMessage());
    	} catch (SQLException sqle) {
          System.out.println("SQLException occured: " + sqle.getMessage());  	
    	}	catch (Exception e) {				
  				System.out.println(e.getMessage());			  								
			}	finally {
			   if (conn!=null) {
			     conn.close();
         }
      }	
	  
	%>


</body>
</html>            
			
		
				
