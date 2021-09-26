import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class UpdateBookingPage extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String uname = request.getParameter("uname");
		String tod = request.getParameter("departingdate");
		String route = request.getParameter("route");
		route = route.substring(0,route.indexOf(','));
		String price = request.getParameter("price");
		String days = request.getParameter("numdays");
		String people = request.getParameter("numpeople");
		String total = request.getParameter("totalFare");
		if(request.getParameter("uname").length()>0 && request.getParameter("departingdate").length()>0){
				try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");
					Statement stmt=con.createStatement();
					String select = "Select Name from register";
					if(uname == select){
					String update = "update booking set Ticket_on_date = "+tod+",Route = "+route+",Price = "+price+",Number_of_days = "+days+",Number_of_people = "+people+",Total_Fare = "+total+" where Name = '"+uname+"'";
					stmt.executeUpdate(update);  
					RequestDispatcher rd = request.getRequestDispatcher("AfterUpdate.jsp");
				 	rd.forward(request, response);
					}
				}catch(ClassNotFoundException e){
					out.println(e);	
				}catch(SQLException es){
					System.err.println(es.getMessage());
				}
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("UpdateBookingPage.jsp");
		    rd.forward(request, response);
	    }
	}
	public static void main(String[] args) {
		new UpdateBookingPage();
	}
}