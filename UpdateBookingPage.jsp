<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
class routeInfo{
    String rname;
    int price;
    public routeInfo(String rname,int price){
        this.rname = rname;
        this.price = price;
    }
    public String getRoute(){
        return rname;
    }
    public int getPrice(){
        return price;
    }
}
ArrayList<routeInfo> routes = new ArrayList<routeInfo>();
try{
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");  
    Statement stmt=con.createStatement(); 
    String sql= "SELECT Route,Price FROM `route` WHERE 1";
    ResultSet rs = stmt.executeQuery(sql); 
    while(rs.next()){
        routes.add(new routeInfo(rs.getString(1),rs.getInt(2)));
    }
    con.close();  
}catch(Exception e){ System.out.println("Database Errors: "+e);
}
%>

<%
    String id = request.getParameter("id");
    try{
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");  
        Statement stmt=con.createStatement(); 
        String sql= "SELECT *FROM `booking` WHERE User_Id = "+id ;
        ResultSet resultSet = stmt.executeQuery(sql); 
        while(resultSet.next()){
%>



<html>
    <head>
        <title>Booking Form</title>
        <link rel="stylesheet" type="text/css" href="css/BookingPage.css"/>
    </head>
    <body>
        <div class = "book">
            <h1><b>TICKET BOOKING FORM</b></h1>
            <form action="UpdateProcess.jsp" method="post">
                <div class = "input-group">
                    <label>User Id</label>
                    <input type="hidden" name="id" value="<%=resultSet.getString(1) %>">
                    <input type="text" name="id" maxlength="0" value="<%=resultSet.getString(1) %>">
                </div><br/>    
                <div class="input-group">
                    <label>Name</label>
                    <input type="text" name="uname" maxlength="0" value="<%=resultSet.getString(2)%>"/>
                </div><br/>

                <div class="input-group">
                    <label>Ticket on date</label>
                    <input type="date" name="departingdate" value="<%=resultSet.getString(3)%>"/>
                </div><br/>
                        
                <div class="input-group">
                    <label>Route:</label>
                    
                        <select name='route' id='route' onchange='view(this)'> 
                            <option><%=resultSet.getString(4)%></option>
                            
                        <%
                        for(int i=0;i<routes.size();i++){
                            String str = routes.get(i).getRoute()+","+ routes.get(i).getPrice();
                            out.write("<option value='"+str+"'>");
                            out.write(str.substring(0,str.indexOf(','))+"</option>");
                           }
                           
                    %>
                </select>
                </div><br/>

                <div class="input-group">
                    <label>Price:</label>
                    <input type='text' name='price' id='price' maxlength="0" value="<%=resultSet.getString(5)%>"/>
                </div><br/>
                       
                <div class="input-group">
                    <label>Number of days</label> <input type="number" name="numdays" id = "days" value="<%=resultSet.getString(6)%>"/>
                </div><br/>
                       
                <div class="input-group">
                    <label>Number of people</label> <input type="number" name="numpeople" id = "people" onchange="show(this)" value="<%=resultSet.getString(7)%>"/>
                </div><br/>
                
                <div class = "input-group">
                    <label>Total Fare:</label> 
                    <input type="text" name="totalFare" id = "totalFare" maxlength="0" value="<%=resultSet.getString(8)%>"/>
                </div>     
                <br/><br/>        
                <div class="input-group">
                    <button type="submit" name="submit" class = "btn">Book</button>           
                </div>    
            </form>
        </div>
        <script>
            function view(){
                var route = document.getElementById('route');
                var pr = route[route.selectedIndex].value;
                var price = pr.substring(pr.indexOf(',')+1);
                document.getElementById('price').value = price; 
            }
            function show(){
                price = document.getElementById("price").value;
                days = document.getElementById("days").value;
                people = document.getElementById("people").value;
                document.getElementById("totalFare").value = price*days*people;
            }
        </script>
        <%
            }
            con.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
        %>
     </body>
</html>

