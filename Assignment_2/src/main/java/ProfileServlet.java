import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Get user ID from session
        int userId = (int) session.getAttribute("userId");

        // Get all updated form values
        String username = request.getParameter("username");
        String loginId = request.getParameter("loginId");
        String newPassword = request.getParameter("password");
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

            // Change DB name & password as needed
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/yourdb", "root", "password"
            );

            String sql;

            // If user entered a new password, update it
            if (newPassword != null && !newPassword.trim().isEmpty()) {

                sql = "UPDATE users SET username=?, loginId=?, password=?, passwordAnswer=?, email=?, phone=?, dob=?, address=?, city=?, state=?, country=?, pin=? WHERE id=?";

                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, username);
                ps.setString(2, loginId);
                ps.setString(3, newPassword); // Update password
                ps.setString(4, passwordAnswer);
                ps.setString(5, email);
                ps.setString(6, phone);
                ps.setString(7, dob);
                ps.setString(8, address);
                ps.setString(9, city);
                ps.setString(10, state);
                ps.setString(11, country);
                ps.setString(12, pin);
                ps.setInt(13, userId);

                ps.executeUpdate();

                // Update password in session also
                session.setAttribute("password", newPassword);

            } else {
                // Update without changing password
                sql = "UPDATE users SET username=?, loginId=?, passwordAnswer=?, email=?, phone=?, dob=?, address=?, city=?, state=?, country=?, pin=? WHERE id=?";

                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, username);
                ps.setString(2, loginId);
                ps.setString(3, passwordAnswer);
                ps.setString(4, email);
                ps.setString(5, phone);
                ps.setString(6, dob);
                ps.setString(7, address);
                ps.setString(8, city);
                ps.setString(9, state);
                ps.setString(10, country);
                ps.setString(11, pin);
                ps.setInt(12, userId);

                ps.executeUpdate();
            }

            // Update all session values
            session.setAttribute("username", username);
            session.setAttribute("loginId", loginId);
            session.setAttribute("passwordAnswer", passwordAnswer);
            session.setAttribute("email", email);
            session.setAttribute("phone", phone);
            session.setAttribute("dob", dob);
            session.setAttribute("address", address);
            session.setAttribute("city", city);
            session.setAttribute("state", state);
            session.setAttribute("country", country);
            session.setAttribute("pin", pin);

            // Redirect back with success message
            response.sendRedirect("profile.jsp?success=1");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("profile.jsp?error=1");
        }

    }

}
