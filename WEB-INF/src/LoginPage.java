import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class LoginPage extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject", "root", "");
				String select = "select Email,Password from register where Email = ? and Password = ?";
				PreparedStatement stmt = c.prepareStatement(select);
				stmt.setString(1, email);
				stmt.setString(2, password);
				ResultSet rs = stmt.executeQuery();
				if(rs.first()){
					if(request.getParameter("email").length()>0 && request.getParameter("password").length()>0){
						RequestDispatcher rd = request.getRequestDispatcher("ChangeRecord.jsp");
	        			rd.forward(request, response);
	        		}
				}else{
					RequestDispatcher rd = request.getRequestDispatcher("LoginPage.jsp");
	        		rd.forward(request, response);
				}
			}catch(ClassNotFoundException e){
				out.println(e);	
			}catch(SQLException es){
				System.err.println(es.getMessage());
			}
		}
	public static void main(String[] args){
		new LoginPage();
	}
}