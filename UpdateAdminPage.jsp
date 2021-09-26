<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    String id = request.getParameter("id");
    try{
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");  
        Statement stmt=con.createStatement(); 
        String sql= "SELECT *FROM `route` WHERE Route_id = "+id ;
        ResultSet resultSet = stmt.executeQuery(sql); 
        while(resultSet.next()){
%>
<html>
    <head>
        <title>Admin or Route Form</title>
        <link rel="stylesheet" type="text/css" href="css/RoutePage.css"/>
    </head>
    <body>            
        <div class = "route">
            <h1>Admin/Route Form</h1>

            <form action = "UpdateAdminProcess.jsp" method = "post">

                <div class = "input-group">
                    <label>Id</label>
                    <input type="hidden" name="id" value="<%=resultSet.getString(1) %>">
                    <input type="text" name="id" maxlength="0" value="<%=resultSet.getString(1) %>">
                </div><br/>    
             
                <div class="input-group">
                   <label> Route </label>
                    <select name="route">
                        <option ><%=resultSet.getString(2)%></option>
                        <option value="Kathmandu To Pokhara">Kathmandu To Pokhara</option>
                        <option value="Kathmandu To Lumbini">Kathmandu To Lumbini</option>
                        <option value="Kathmandu To Gorkha">Kathmandu To Gorkha</option>
                        <option value="Kathmandu To Mustang">Kathmandu To Mustang</option>
                        <option value="Kathmandu To Janakpur">Kathmandu To Janakpur</option>
                        <option value="Kathmandu To Chitlang">Kathmandu To Chitlang</option>
                    </select>
                </div><br/>

                <div class="input-group">
                   <label> Price </label> <input type="text" name="price" value="<%=resultSet.getString(3)%>"/>
                </div><br/>

                <div class="input-group">
                    <button type="submit" name="submit" class = "btn">Submit</button>
                </div>
            </form>
            <a  href = "AdminChangeRecord.jsp">Go Back</a>
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