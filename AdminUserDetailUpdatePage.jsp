<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    String id = request.getParameter("id");
    try{
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");  
        Statement stmt=con.createStatement(); 
        String sql= "SELECT *FROM `register` WHERE User_Id ="+id;
        ResultSet resultSet = stmt.executeQuery(sql); 
        while(resultSet.next()){
%>
<html>
    <head>
        <title>Admin User Detail Update Form</title>
        <link rel="stylesheet" type="text/css" href="css/RegisterPage.css"/>
    </head>
    <body>            
        <div class = "register">
          <h1>Register</h1>
            <form action = "UpdateAdminUserDetailProcess.jsp" method = "post">
                <p>User Id</p>
                    <input type="hidden" name="id" value="<%=resultSet.getString(1) %>">
                    <input type="text" name="id" maxlength="0" value="<%=resultSet.getString(1) %>">
                <p>Name</p><input type = "text" name = "name" value = "<%=resultSet.getString(2)%>"/>
                <p>Address</p><input type = "text" name = "address" value="<%=resultSet.getString(3)%>"/>
                <p>Contact</p><input type = "text" name = "contact" value="<%=resultSet.getString(4)%>"/>
                <p>Email</p><input type = "text" name = "email" value="<%=resultSet.getString(5)%>"/><br/>
                <button>Register</button></h3>
            </form>
        </div>
        <%
            }
            con.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
        %>
    </body>
</html>