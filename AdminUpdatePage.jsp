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
                .anchor a{
                    padding: 10px;
                    margin: 20px;
                    background-color: teal;
                    text-decoration: none;
                    display: inline-block;
                    color: #eee; 
                    font-size: 25px;
                }
                a{
                    padding: 10px;
                    margin: 20px;
                    background-color: skyblue;
                    text-decoration: none;
                    display: inline-block;
                    color: brown; 
                    font-size: 15px;
                    font-weight: bold;
                }
        </style>
    </head>
    <body>
        <div class = "anchor">
            <a href = "UpdateAdminLogin.jsp"> Go Back</a>
        </div>
        <div align = "center">
            <table border = "2" width = "900">
                <tr>
                    <th>Route Id</th>
                    <th>Route</th>
                    <th>Price</th>
                    <th>Update</th>
                </tr>
                <%
                    String id = request.getParameter("id");
                    try{
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");   
                        Statement stmt=con.createStatement(); 
                        ResultSet rs = stmt.executeQuery("select *from route where Route_Id ="+id);
                        while(rs.next()){
                %>

                <tr>
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><a href="UpdateAdminPage.jsp?id=<%=rs.getString(1)%>">Update</a></td>
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