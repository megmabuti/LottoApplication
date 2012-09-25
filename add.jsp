<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="lotto" class="com.phil.store.nike.products.lotto" scope="application"/>
<jsp:setProperty name="lotto" property="*"/>
 
<html>
	<head><title>Registration</title></head>
	
	<body>
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
				
			try {
				String strEmail = lotto.getEmail();
				String strFirstName = lotto.getFirstName();
				String strLastName = lotto.getLastName();
				String strAge = lotto.getAge();
				String strPassword = lotto.getPassword(); 		
				String strAddress = lotto.getAddress();
				int Phone = lotto.getPhone();
				int CPhone = lotto.getCphone();
				
				System.out.println("customer email: " + strEmail);
				System.out.println("customer first name: " + strFirstName);
				System.out.println("customer last name: " + strLastName);
				System.out.println("customer password: " + strPassword);
				System.out.println("customer address: " + strAddress);
				System.out.println("customer phone: " + Phone);
								
        Properties property = null;

        String propFile = "J:/SCHOOL/apache-tomcat-6.0.29/webapps/fp/dbsource.property";
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
	      //String url = "jdbc:jtds:sqlserver://"+db.getServerName()+":"+db.getPortDB()+"//"+db.getDBName();
	      String url = "jdbc:jtds:sqlserver://"+server+":1433"+"//"+dbName;
	     
        conn = DriverManager.getConnection(url, name, password);
       
        String query = "insert into reg (email, password, lastname, firstname, age, address, homeno, cellno) values(?,?,?,?,?,?,?,?)";
        
        pstmt = conn.prepareStatement(query); 
        pstmt.setString(1, strEmail); 
        pstmt.setString(2, strPassword);
		pstmt.setString(3, strLastName); 
        pstmt.setString(4, strFirstName); 
		pstmt.setString(5, strAge);
        pstmt.setString(6, strAddress);
		pstmt.setInt(7, Phone);              
	    pstmt.setInt(8, Cphone);   
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
    
    <h1><%=strFirstName%>&nbsp;<%=strLastName%> succefully added to the database.<h1>
    <p><a href="list.jsp">Click here for the listing of all employees</a></p> 		
	</body>
</html>