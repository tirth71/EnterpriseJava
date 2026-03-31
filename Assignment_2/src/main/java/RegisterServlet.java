import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.mycompany.assignment2.util.DBUtil;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    

    private static final String INSERT_USER_SQL = "INSERT INTO user_master "
            + "(username, login_id, password, password_question, password_answer, email, phone, dob, address, city, state, country, pin) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String loginId = request.getParameter("loginId");
        String password = request.getParameter("password");
        String passwordQuestion = "What is your best friend's name?";
        String passwordAnswer = request.getParameter("passwordAnswer");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String pin = request.getParameter("pin");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DBUtil.getConnection();
                 PreparedStatement ps = conn.prepareStatement(INSERT_USER_SQL)) {

                ps.setString(1, username);
                ps.setString(2, loginId);
                ps.setString(3, password);
                ps.setString(4, passwordQuestion);
                ps.setString(5, passwordAnswer);
                ps.setString(6, email);
                ps.setString(7, phone);
                ps.setString(8, dob);
                ps.setString(9, address);
                ps.setString(10, city);
                ps.setString(11, state);
                ps.setString(12, country);
                ps.setString(13, pin);

                int result = ps.executeUpdate();

                if (result > 0) {
                    // ✅ On successful registration, redirect to login page
                    response.sendRedirect("login.jsp");
                } else {
                    response.sendRedirect("register.jsp?error=failed");
                }

            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("register.jsp");
    }
}
