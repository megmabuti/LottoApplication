<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="lotto" scope="session" class="com.phil.store.nike.products.lotto"/>
<jsp:setProperty name="lotto" property="*"/>
<html>
  <head>  
  <title>List Employees</title>
  </head>
  <body>
    <h2>List of all Customers</h2>
    
    	<%
			 Connection conn = null;  
			 PreparedStatement pstmt = null;
			 
       try {								
        Properties property = null;

        String propFile = "J:/SCHOOL/apache-tomcat-6.0.29/webapps/lotto/dbsource.property";
        FileInputStream fis = new FileInputStream(propFile) ;
        property = new Properties();
        property.load(fis);
            
        // getting file name from properties
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
            
        //db setup and connection
        Class.forName(typedriver);				      
	      String url = "jdbc:jtds:sqlserver://"+server+":1433"+"//"+dbName;
             conn = (Connection) application.getAttribute("connection");
        //get result set for employee
        
		Statement stmt = conn.createStatement();
			
			  ResultSet rs = stmt.executeQuery("select email, lastname, firstname, age, address, homeno, cellno from reg");
			  int iCtr = 0;
		  	  			%> <table border="1"> <%      
  			while (rs.next()) { 
  			  iCtr++; 
          System.out.println(rs.getString("email"));
        %>
            <tr>
              <td><%= rs.getString("email")%></td>
              <td><%= rs.getString("lastname")%></td>
              <td><%= rs.getString("firstname")%></td>
			  <td><%= rs.getInt("age")%></td>
              <td><%= rs.getInt("homeno")%></td>
              <td><%= rs.getString("address") %></td>
              <td><%= rs.getInt("cellno") %></td>
            </tr>  
         
    <% } %> </table> <%   				
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
  </body>
</html>
