<%@ page import="java.sql.*" %> 

<html> 
<head> 
<title>Connection with mysql database</title>
</head> 
<body>
<h1>Connection status</h1>
<% 
try {
	out.println("Search Driver");
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
	out.println("Driver found");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bodgeitdb","root","");  
    if(!connection.isClosed())
         out.println("Successfully connected to " + "MySQL server using TCP/IP...");
    connection.close();
}catch(Exception ex){
    out.println("Unable to connect to database.");
}
%>
</font>
</body> 
</html>