/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Academics;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    Connection con = null;
    ResultSet rs = null;
    PreparedStatement pst = null;
    String uname = null;
    String pass = null;
    String utype = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        utype = request.getParameter("cmbtype");
        uname = request.getParameter("name");
        pass = request.getParameter("password");

        if (pass != null) {
            try {
                con = connection.getDBConnection.makeConn();
                String query = "select id from " + utype + " where id='" + uname + "'and pwd='" + pass + "'";
                
                pst = con.prepareStatement(query);
                rs = pst.executeQuery();
                if (rs.next()) {
                    if (utype.equals("admin")) {
                        session.setAttribute("ADMIN", uname);
                        response.sendRedirect("Admin/StudentList.jsp");
                    } else if (utype.equals("student")) {

                        session.setAttribute("STUDENT", uname);
                        response.sendRedirect("Student/StudentAccount.jsp");

                    } else if (utype.equals("teacher")) {

                        session.setAttribute("TEACHER", uname);
                        response.sendRedirect("Teacher/TeacherAccount.jsp");
                    }

                } else {

                    session.setAttribute("LOGIN", "Invalid Username/Password");
                    response.sendRedirect("Login.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }


        }

    }
}
