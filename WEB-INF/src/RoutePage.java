import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class RoutePage extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String route = request.getParameter("route");
		String price = request.getParameter("price");
		if (request.getParameterMap().containsKey("route")){
			if(request.getParameter("route").length()>0 && request.getParameter("price").length()>0){
				try{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject","root","");
					String insert = "insert into route(Route,Price) values(?,?)";
					PreparedStatement stmt = con.prepareStatement(insert);
					stmt.setString(1,route);
					stmt.setString(2,price);
					int i=stmt.executeUpdate();  
					if(i>0){  
						RequestDispatcher rd = request.getRequestDispatcher("AdminChangeRecord.jsp");
					   	rd.forward(request, response);
				 	}
				}catch(ClassNotFoundException e){
				out.println(e);	
				}catch(SQLException es){
				System.err.println(es.getMessage());
				}	
			}
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("RoutePage.jsp");
		    rd.forward(request, response);
	    }
}
	public static void main(String[] args) {
		new RoutePage();
	}
}