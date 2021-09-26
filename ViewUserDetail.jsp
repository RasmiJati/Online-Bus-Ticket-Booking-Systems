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
            <a href = "SearchUserDetail.jsp"> Search</a>
            <a href = "AdminUserDetailChangeRecord.jsp"> Go Back</a>
        </div>
        <div align = "center">
            <table border = "2" width = "900">
                <tr>
                    <th>User Id</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Contact Number</th>
                    <th>Email</th>
                </tr>
                <%
                    try{
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");   
                        Statement stmt=con.createStatement(); 
                        ResultSet rs = stmt.executeQuery("select *from register");
                        while(rs.next()){
                %>
                <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                    <td><%=rs.getString(3) %></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5) %></td>
                </tr>
                <%
                    }
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>   
        </div>
    </body>
</html>