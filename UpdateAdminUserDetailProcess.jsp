<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
    <head>
        <title></title>
        <style>
             body{
                    margin: 0;
                    background-image: url('image/pokhara.jfif');
                    background-repeat: no-repeat;
                    background-attachment: fixed;
                    background-size: cover;
                }
        </style>
    </head>
    <body>
    	</body></html>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String contact = request.getParameter("contact");
	String email = request.getParameter("email");
	if(id != null){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");
		String sql = "Update register set User_Id=?,Name=?,Address=?,Contact=?,Email=? where User_id="+id;
        PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2,name);
		ps.setString(3,address);
		ps.setString(4,contact);
		ps.setString(5,email);
		int i = ps.executeUpdate();
		if(i > 0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("AfterAdminUserDetailUpdate.jsp");
		  	rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("UpdateAdminUserDetailProcess.jsp");
			rd.forward(request, response);}
		}
		catch(SQLException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		}
%>