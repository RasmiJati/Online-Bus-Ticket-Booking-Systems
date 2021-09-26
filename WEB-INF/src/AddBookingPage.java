import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class AddBookingPage extends HttpServlet{
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
					String insert = "insert into booking(Name,Ticket_on_date,Route,Price,Number_of_days,Number_of_people,Total_Fare) values('"+uname+"','"+tod+"','"+route+"','"+price+"','"+days+"','"+people+"','"+total+"')";
					int i=stmt.executeUpdate(insert);  
					if(i>0){  
							RequestDispatcher rd = request.getRequestDispatcher("EndPage.jsp");
					    	rd.forward(request, response);
					   	}
				}catch(ClassNotFoundException e){
					out.println(e);	
				}catch(SQLException es){
					System.err.println(es.getMessage());
				}
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("BookingPage.jsp");
		    rd.forward(request, response);
	    }
	}
	public static void main(String[] args) {
		new AddBookingPage();
	}
}