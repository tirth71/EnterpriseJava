/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import com.mycompany.assignment2.util.DBUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String loginId = (String) session.getAttribute("loginId");

        String answer = request.getParameter("answer");
        String newPassword = request.getParameter("newPassword");

        try (Connection con = DBUtil.getConnection()) {

            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM user_master WHERE login_id=? AND password_answer=?"
            );
            ps.setString(1, loginId);
            ps.setString(2, answer);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                PreparedStatement update = con.prepareStatement(
                    "UPDATE user_master SET password=? WHERE login_id=?"
                );
                update.setString(1, newPassword);
                update.setString(2, loginId);
                update.executeUpdate();

                session.invalidate();
                response.sendRedirect("login.jsp?msg=reset");
            } else {
                response.sendRedirect("resetPassword.jsp?error=wrong");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("resetPassword.jsp?error=server");
        }
    }
}
