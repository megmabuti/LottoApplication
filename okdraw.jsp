<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<jsp:useBean id="lotto" class="usebean.lotto.numbers.numbers" scope="application" />
<jsp:setProperty name="lotto" property="*" />

<html>
	<head><title>Place Bet</title></head>
	<body>


		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
				
			try {
		
			
				
				String strFirst = lotto.getNum1();
			    String strSecond = lotto.getNum2();
				String strThird = lotto.getNum3();
				String strFourth = lotto.getNum4();
				String strFifth = lotto.getNum5();
				String strSixth = lotto.getNum6();
				
				
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
			

		  //db setup and connection
          Class.forName(typedriver);			
	      //String url = "jdbc:jtds:sqlserver://"+db.getServerName()+":"+db.getPortDB()+"//"+db.getDBName();
	      String url = "jdbc:jtds:sqlserver://"+server+":1433"+"//"+dbName;
	     
        conn = DriverManager.getConnection(url, name, password);
		
        String query = "insert into Draws(Date, Num1, Num2, Num3, Num4, Num5, Num6) values(?,?,?,?,?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());		

		pstmt = conn.prepareStatement(query); 
		pstmt.setDate(1, sqlDate);
        pstmt.setString(3, strFirst); 
        pstmt.setString(4, strSecond); 
        pstmt.setString(5, strThird); 
        pstmt.setString(6, strFourth); 
        pstmt.setString(7, strFifth); 
        pstmt.setString(8, strSixth);  
        pstmt.executeUpdate(); 
    	} catch (IOException ioe) {
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
	
			
		<a href="viewwin.jsp">View Winning Combination</a>
		
	</body>
</html>
		
		