import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RegisterPage extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if(request.getParameter("name").length()>0 && request.getParameter("address").length()>0 && request.getParameter("contact").length()>0 && request.getParameter("email").length()>0 && request.getParameter("password").length()>0){
				try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");
						String insert = "insert into register(Name,Address,Contact,Email,Password) values(?,?,?,?,?)";
						PreparedStatement stmt = con.prepareStatement(insert);
						stmt.setString(1,name);
						stmt.setString(2,address);
						stmt.setString(3,contact);
						stmt.setString(4,email);
						stmt.setString(5,password);
						int i=stmt.executeUpdate();  
						if(i>0){  
							RequestDispatcher rd = request.getRequestDispatcher("BookingPage.jsp");
					    	rd.forward(request, response);
					   	}
				}catch(Exception f){
					System.err.println(f.getMessage());
				}	
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("RegisterPage.jsp");
		    rd.forward(request, response);
	    }
	}
	public static void main(String[] args) {
		new RegisterPage();
	}
}