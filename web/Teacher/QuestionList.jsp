<%--
    Document   : test
    Created on : Feb 15, 2011, 10:52:57 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../style/style-sheet.css" rel="stylesheet" type="text/css">
        <link href="../style/menu.css" rel="stylesheet" type="text/css">
        <title>Question List</title>
    </head>
    <body>
        <div id="outerdiv">
            <div class="innerdiv">
                <!-- Start Header -->
                <div id="header">
                    <%@include file="TeacherMenu.html" %>
                </div>
                <!-- End Footer -->

                <!-- Start Content -->
                <div id="content">
                    <div class="content">
                        <form action="../student" method="post">
                            <table width="100%" cellpadding="3" cellspacing="3" align="center">
                                <tr height="40">
                                    <td align="center" colspan="4">
                                        <h2>Question List</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100%">
                                        <div style="width: 870px;height: 350px;overflow: auto;">
                                            <table width="100%">
                                                <tr class="listheading">

                                                    <td align="center">
                                                        &nbsp;Subject&nbsp;Name&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;Question&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;Answer&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;Option 1&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;Option 2&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;Option 3&nbsp;
                                                    </td>
                                                    <td align="center">
                                                        &nbsp;Option 4&nbsp;
                                                    </td>                                                    
                                                </tr>

                                                <%

                                                            Connection con = null;
                                                            ResultSet rs = null;
                                                            Statement st = null;                                                           
                                                            String subname = null;
                                                            String ques = null;
                                                            String ans = null;
                                                            String opt1 = null;
                                                            String opt2 = null;
                                                            String opt3 = null;
                                                            String opt4 = null;


                                                            try {
                                                                con = connection.getDBConnection.makeConn();
                                                                st = con.createStatement();
                                                                String sql = "select sub_id,question,answer,option1,option2,option3,option4 from question_master";
                                                                rs = st.executeQuery(sql);
                                                                while (rs.next()) {
                                                                    subname = rs.getString(1);
                                                                    ques = rs.getString(2);
                                                                    ans = rs.getString(3);
                                                                    opt1 = rs.getString(4);
                                                                    opt2 = rs.getString(5);
                                                                    opt3 = rs.getString(6);
                                                                    opt4 = rs.getString(7);

                                                %>
                                                <tr class="text-1">
                                                   
                                                    <td align="center"><%=subname%></td>
                                                    <td align="center"><%=ques%></td>
                                                    <td align="center"><%=ans%></td>
                                                    <td align="center"><%=opt1%></td>
                                                    <td align="center"><%=opt2%></td>
                                                    <td align="center"><%=opt3%></td>
                                                    <td align="center"><%=opt4%></td>                                                    
                                                </tr>
                                                <%
                                                                }
                                                                con.close();
                                                                st.close();


                                                            } catch (Exception e) {
                                                            }

                                                %>


                                            </table>
                                        </div>
                                    </td>
                                </tr>


                            </table>
                        </form>
                    </div>

                </div>
                <!-- End Content -->
                <!-- Start Footer -->
                <div id="footer">
                    <%@include file="../Footer.html" %>
                </div>
                <!-- End Footer -->
            </div>
        </div>
    </body>
</html>
