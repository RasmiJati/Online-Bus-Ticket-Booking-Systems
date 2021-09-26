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
	String uname = request.getParameter("uname");
	String tod = request.getParameter("departingdate");
	String route = request.getParameter("route");
	route = route.substring(0,route.indexOf(','));
	String price = request.getParameter("price");
	String days = request.getParameter("numdays");
	String people = request.getParameter("numpeople");
	String total = request.getParameter("totalFare");
	if(id != null){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");
		String sql = "Update booking set User_Id=?,Name=?,Ticket_on_date=?,Route=?,Price=?,Number_of_days=?,Number_of_people=?,Total_Fare=? where User_ID='"+id+"' and Name = '"+uname+"'";
        PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2,uname);
		ps.setString(3,tod);
		ps.setString(4,route);
		ps.setString(5,price);
		ps.setString(6,days);
		ps.setString(7,people);
		ps.setString(8,total);
		int i = ps.executeUpdate();
		if(i > 0)
		{
			RequestDispatcher rd = request.getRequestDispatcher("AfterUpdate.jsp");
		  	rd.forward(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("UpdateBookingPage.jsp");
			rd.forward(request, response);}
		}
		catch(SQLException sql)
		{
		request.setAttribute("error", sql);
		out.println(sql);
		}
		}
%>