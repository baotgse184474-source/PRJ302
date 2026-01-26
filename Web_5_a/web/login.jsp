<%-- 
    Document   : login
    Created on : Jan 19, 2026, 3:13:55 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="MainController" method ="post">
            <input type ="hidden" name="action" value="login" /><!-- comment -->
            Username: <input type="text" name="txtUsername" /><!-- comment -->
            Password: <input type="password" name="txtPassword" /> <br/><!-- comment -->
            <input type ="submit" value="Login" />
            
            
        </form>
        <%
            String message = request.getAttribute("message")+"";
            message = (message.equals("null"))?"":message;
            %>
            <span style="color:red"><%=message%></span>
    </body>
</html>
