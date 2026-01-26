<%-- 
    Document   : a
    Created on : Jan 19, 2026, 3:19:19 PM
    Author     : User
--%>

<%@page import="models.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO user = (UserDTO) session.getAttribute("user");
            if (user != null) {

        %>
        Welcome <%=user.getFullName()%>,<br/>
        <a href="MainController?action=logout"> Logout</a> <br/><!-- comment -->
        Bang dieu khien <br/><!-- comment -->
        Tinh nang 1 <br/>
        Tinh nang 2 <br/>
        Tinh nang 3 <br/><!-- comment -->
        <%
            } else {
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
