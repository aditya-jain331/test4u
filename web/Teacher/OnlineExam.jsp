<%-- 
    Document   : OnlineExam
    Created on : Feb 28, 2011, 2:08:05 PM
    Author     : Administrator
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
        <title>Online Exam</title>
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
                        <form action="../examQuestion" method="post">
                            <table  cellpadding="3" cellspacing="3" align="center">
                                <tr>
                                    <td align="center" colspan="4">
                                        <h2>Online Exams</h2>
                                    </td>
                                </tr>
                                <%
                                            String msg = null;
                                            msg = (String) session.getAttribute("MSG");
                                            if (msg != null) {
                                %>
                                <tr>
                                    <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                                </tr>
                                <%
                                                session.removeAttribute("MSG");
                                            } else {
                                                session.setAttribute("MSG", "");
                                            }
                                %>
                                <tr>
                                    <td class="text">Subject</td>
                                    <td>

                                        <select name="cmbsubject" id="cmbsubject" class="text_input" style="width: 200px;">
                                            <option value="na" > - - - - - Select - - - - -</option>
                                            <option value="Java" >Java</option>
                                            <option value="C" >C</option>
                                            <option value="Data Structure">Data Structure</option>
                                            <option value="DBMS" >DBMS</option>
                                            <option value="O.S" >O.S</option>
                                        </select>

                                    </td>



                                </tr>
                                <tr>
                                    <td class="text" rowspan="2">
                                        Question
                                    </td>
                                    <td rowspan="2">
                                        <textarea style="width: 200px;height: 50px;" id="txtquestion" name="txtquestion" class="text_input"></textarea>
                                    </td>
                                    <td class="text">
                                        Answer
                                    </td>
                                    <td><input type="text" id="txtanswer" name="txtanswer" class="text_input" size="35"></td>
                                </tr>

                                <tr>
                                    <td class="text">
                                        Option 1
                                    </td>
                                    <td><input type="text" id="txtoption1" name="txtoption1" class="text_input" size="35"></td>

                                </tr>
                                <tr>
                                    <td class="text">
                                        Option 2
                                    </td>
                                    <td><input type="text" id="txtoption2" name="txtoption2" class="text_input" size="35"></td>
                                    <td class="text">
                                        Option 3
                                    </td>
                                    <td><input type="text" id="txtoption3" name="txtoption3" class="text_input" size="35"></td>
                                </tr>
                                <tr>
                                    <td class="text">
                                        Option 4
                                    </td>
                                    <td><input type="text" id="txtoption4" name="txtoption4" class="text_input" size="35"></td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                    <td colspan="4" align="center">
                                        <input type="submit" id="btnsubmit" name="btnsubmit" value="Submit">
                                        <input type="reset" id="btnreset" name="btnreset" value="Reset">
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


