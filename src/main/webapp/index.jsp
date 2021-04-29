<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
</head>
<body>
<h2>Hello World!</h2>
<%
Class.forName("org.postgresql.Driver");

//String url = System.getenv("DATABASE_URL");
String user = System.getenv("BD_USER");
String pass = System.getenv("BD_PASS");
String conexao = System.getenv("BD_URL");

//jdbc:postgresql://host:port/database
//jdbc:postgresql://ec2-34-225-103-117.compute-1.amazonaws.com:5432/d2jbk2r3cs382m
Connection c = DriverManager.getConnection(conexao, user, pass);
%>

<%=c.getMetaData().getDatabaseProductName()%> <br>
<%=c.getMetaData().getDatabaseProductVersion()%>
</body>
</html>
