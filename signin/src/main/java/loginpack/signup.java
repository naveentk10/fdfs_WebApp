package loginpack;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/SignupServlet")
public class signup extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public signup() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "jdbc:postgresql://localhost:5432/Signup";
        String dbuser = "postgres";
        String dbpass = "admin";
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();

        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(url, dbuser, dbpass);
            String sql = "INSERT INTO login (username, password) VALUES (?, ?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                request.setAttribute("username", username);
                request.getRequestDispatcher("sign.jsp").forward(request, response);
            } else {
                out.println("<h3>Error: Unable to sign up. Please try again.</h3>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
