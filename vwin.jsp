<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<jsp:useBean id="lotto" class="usebean.lotto.numbers.numbers" scope="application" />
<jsp:setProperty name="lotto" property="*" />

<html>
	<head><title>View Winning Combination</title></head>
	<body>
	<%
			Connection conn = null;
				
			try {
		
			
				String strFirst = lotto.getNum1();
			    String strSecond = lotto.getNum2();
				String strThird = lotto.getNum3();
				String strFourth = lotto.getNum4();
				String strFifth = lotto.getNum5();
				String strSixth = lotto.getNum6();
				                                                           
				System.out.println("First Number: " + strFirst);           
				System.out.println("Second Number: " + strSecond);        
				System.out.println("Third Number: " + strThird);          
				System.out.println("Fourth Number: " + strFourth);           
				System.out.println("Fifth Number: " + strFifth);           
				System.out.println("Sixth Number: " + strSixth);
				
				
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
		
		PreparedStatement pstmtt = conn.prepareStatement("select Num1, Num2, Num3, Num4, Num5, Num6 from Bets where Date = ? ");
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		pstmtt.setDate(1, sqlDate);
		
		ResultSet rs = pstmtt.executeQuery();
					%> 
		<table border="1">
		<%while (rs.next()) { %>
            <tr>
              <td><%= rs.getString("Num1")%></td>
              <td><%= rs.getString("Num2")%></td>
              <td><%= rs.getString("Num3")%></td>
			  <td><%= rs.getInt("Num4")%></td>
              <td><%= rs.getInt("Num5")%></td>
              <td><%= rs.getString("Num6") %></td>
            </tr>  
         
    <% } %> </table><%
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
	
		<br>
		<br>
		<a href="index.jsp">Home</a>
		
	</body>
</html>
