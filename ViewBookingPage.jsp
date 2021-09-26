<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
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
                .anchor{
                    margin: 20px auto;
                    text-align: center;
                }
                a{
                    padding: 10px;
                    margin: 20px;
                    background-color: teal;
                    text-decoration: none;
                    display: inline-block;
                    color: #eee; 
                    font-size: 25px;
                }
        </style>
    </head>
    <body>
        <div class = "anchor">
            <a href = "ViewLogin.jsp"> Go Back</a>
        </div>
        <div align = "center">
            <table border = "2" width = "900">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Ticket_on_date</th>
                    <th>Route</th>
                    <th>Price</th>
                    <th>Number_of_days</th>
                    <th>Number_of_people</th>
                    <th>Total_Amount</th>
                </tr>
                <%
                    String name = request.getParameter("name");
                    if(request.getParameter("name").length()>0){
                    try{
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");   
                        Statement stmt=con.createStatement(); 
                        ResultSet rs = stmt.executeQuery("select *from booking where Name = '"+name+"' ");
                        while(rs.next()){
                %>
                <tr>
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><%=rs.getString(4) %></td>
                <td><%=rs.getString(5) %></td>
                <td><%=rs.getString(6) %></td>
                <td><%=rs.getString(7) %></td>
                <td><%=rs.getString(8) %></td>
                </tr>
                <%
                    }
                    con.close();
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    }else out.println("Error!!");
                %>
            </table>   
        </div>
    </body>
</html>