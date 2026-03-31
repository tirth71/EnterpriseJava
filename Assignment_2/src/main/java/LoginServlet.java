
import com.mycompany.assignment2.util.DBUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String loginId = request.getParameter("loginId");
        String password = request.getParameter("password");

        try (Connection con = DBUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                    "SELECT user_id, username FROM user_master WHERE login_id=? AND password=?"
            );
            ps.setString(1, loginId);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession(true);
                session.setAttribute("user", rs.getString("username"));
                session.setAttribute("userId", rs.getInt("user_id"));
                
                String remember = request.getParameter("remember");
                if ("yes".equals(remember)) {
                    jakarta.servlet.http.Cookie ck =
                            new jakarta.servlet.http.Cookie("loginId", loginId);
                    ck.setMaxAge(7 * 24 * 60 * 60);
                    response.addCookie(ck);
                }

                response.sendRedirect("home.jsp");

            } else {
                response.sendRedirect("login.jsp?error=invalid");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=server");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
