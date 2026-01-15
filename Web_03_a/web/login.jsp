<%-- 
    Document   : newjsp
    Created on : Jan 15, 2026, 10:25:32 AM
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
        <form action="MainController" method="post">
    Username: <input type="text" name="txtUsername"><br>
    Password: <input type="password" name="txtPassword"><br>
    <input type="submit" value="Login">
</form>
    </body>
</html>
