<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
	<head>
		<title>Login Page JSP</title>
	</head>
	<body>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject", "root", "");
		String select = "select Email,Password from register where Email = ? and Password = ?";
		PreparedStatement stmt = c.prepareStatement(select);
		stmt.setString(1, email);
		stmt.setString(2, password);
		ResultSet rs = stmt.executeQuery();
		if(rs.first()){
			if(request.getParameter("email").length()>0 && request.getParameter("password").length()>0){
				RequestDispatcher rd = request.getRequestDispatcher("../ChangeRecord.html");
    			rd.forward(request, response);
       		}
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("../LoginPage.html");
       		rd.forward(request, response);
%>
<h1>Login Failed</h1>
<%
		}
	}catch(ClassNotFoundException e){
		out.println(e);	
	}catch(SQLException es){
		System.err.println(es.getMessage());
	}
%>		
	</body>
</html>