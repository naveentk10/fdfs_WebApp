package loginpack;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
/**
 * Servlet implementation class LogServelt
 */
@WebServlet("/LoginServlet")
public class LogServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String jdbcURL = "jdbc:postgresql://localhost:5432/Signup";
	        String dbUser = "postgres";
	        String dbPassword = "admin";
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        PrintWriter out = response.getWriter();
	        response.setContentType("text/html");

	        try {
	            Class.forName("org.postgresql.Driver");
	            Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
	            String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
	            PreparedStatement stmt = conn.prepareStatement(sql);
	            stmt.setString(1, username);
	            stmt.setString(2, password);

	            ResultSet rs = stmt.executeQuery();

	            if (rs.next()) {
	                HttpSession session = request.getSession();
	                session.setAttribute("username", username);
	                response.sendRedirect("mainhtml/main.jsp");
	            }
	            else {
	            	 request.setAttribute("errorMessage", "Incorrect username or password.");
	                 RequestDispatcher dispatcher = request.getRequestDispatcher("sign.jsp");
	                 dispatcher.forward(request, response);
	            }
	            rs.close();
	            stmt.close();
	            conn.close();

	        } catch (Exception e) {
	            e.printStackTrace();
	            out.println("<h1>Database connection failed: " + e.getMessage() + "</h1>");
	        }
	}

}
