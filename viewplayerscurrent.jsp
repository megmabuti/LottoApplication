<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

  <html>
	<head><title>Players</title></head>
	<h1>Players</h1>
	<body>
	
	
	

	<%
	
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try {
		
		Properties property = null;

        String propFile = "C:/Users/Carlitos Aranas/Desktop/apache-tomcat-6.0.35/apache-tomcat-6.0.35/webapps/lotto/dbsource.property";
        FileInputStream fis = new FileInputStream(propFile) ;
        property = new Properties();
        property.load(fis);
            
        // getting file name from properties
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
		
		PreparedStatement pstmt = conn.prepareStatement("select Username, Number1, Number2, Number3, Number4, Number5, Number6 from Bets where Status is null ");
		String query = "insert into Audit (DateTime, Username, Activity) values (?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		
		pstm = conn.prepareStatement(query);
		pstm.setDate(1, sqlDate);
		pstm.setString(2, "adminadmin");
		pstm.setString(3, "Viewed players for next draw");
		pstm.executeUpdate(); 
		
		
		ResultSet rs = pstmt.executeQuery();  %>
		
		<%

		if(rs.next()) { %>
		<b>Players as of <%= new java.util.Date()%></b> <br>
		<table cellpadding="1" border="1" style="background-color: #ffffff; width: 250 px">
		<thead>
			<th>Username</th>
			<th>Bet</th>
		</thead>
		<tbody>
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><center><%=rs.getString(2)%>, <%=rs.getString(3)%>, <%=rs.getString(4)%>, <%=rs.getString(5)%>, <%=rs.getString(6)%>, <%=rs.getString(7)%></center></td>
			</tr>
		</tbody>
		<% while(rs.next()) {%>
		<tbody>
			<tr>
			<td><%=rs.getString(1)%></td>
			<td><center><%=rs.getString(2)%>, <%=rs.getString(3)%>, <%=rs.getString(4)%>, <%=rs.getString(5)%>, <%=rs.getString(6)%>, <%=rs.getString(7)%></center></td>
			</tr>
		</tbody>
			<% } %>
			
				</table>
	
		
    	<% } else { %>
		<b>Players as of <%= new java.util.Date()%></b> <br>
		<b><font color="red">No players.</font></b><br><br>
		
		

	<% } %>

				
				
		
	<%	}	catch (IOException ioe) {
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
	<a href="admindrawindex.jsp">Go back</a>
	</body>
</html>
		
		
		
		
		