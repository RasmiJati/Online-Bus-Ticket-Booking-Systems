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
	String route = request.getParameter("route");
	String price = request.getParameter("price");
	if(id != null){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");
		String sql = "Update route set Route_Id=?,Route=?,Price=? where Route_id="+id;
        PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2,route);
		ps.setString(3,price);
		int i = ps.executeUpdate();
		if(i > 0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("AfterAdminUpdate.jsp");
		  	rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("UpdateAdminPage.jsp");
			rd.forward(request, response);}
		}
		catch(SQLException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		}
%>