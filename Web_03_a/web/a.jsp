<%-- 
    Document   : a
    Created on : Jan 15, 2026, 10:33:53 AM
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
        <%-- 
getAtribute trả về object, muốn dùng UserDTO phải ép kiểu 
        
        --%>
        <%
            UserDTO user = (UserDTO)request.getAttribute("user"); 
        %>

        Welcome <%=user.getFullName()%>,<br/>
        Bang dieu khien <br/>
        Tinh nang 1 <br/>
        Tinh nang 2 <br/>
        Tinh nang 3 <br/>
    </body>
</html>
