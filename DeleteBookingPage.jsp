<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="css/ChangeRecord.css"/>
        
    </head>
    <body>
        <div>
            <a href = "ChangeRecord.jsp">Go Back</a>    
        </div> 
        <%
            String name = request.getParameter("name");
            String id=request.getParameter("userid");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject", "root", "");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("DELETE FROM booking WHERE User_Id ='"+id+"' and Name = '"+name+"' ");
                out.println("<h1>Ticket cancelled successfully</h1>");
            }
            catch(Exception e)
            {
            System.out.print(e);
            e.printStackTrace();
            }
        %>

    </body>
</html>


