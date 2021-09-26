<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="css/ChangeRecord.css"/>
        
    </head>
    <body>
        <div>
            <a href = "DeleteAdminLogin.jsp">Go Back</a>    
        </div> 
        <%
            String id=request.getParameter("rid");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject", "root", "");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("DELETE FROM route WHERE Route_Id ='"+id+"'");
                out.println("<h1>Route Deleted successfully</h1>");
            }
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
        %>

    </body>
</html>


