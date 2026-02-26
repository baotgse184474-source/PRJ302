<%-- 
    Document   : login
    Created on : 08-01-2026, 11:08:26
    Author     : tungi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- form gửi dữ liệu bằng phương thức post đến maincontroller
        action = login: cho biết xử lí login
        required = required: bất buộc nhập
        -->
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login"/>
            Username: <input type="text" name="txtUsername" required="required" /> <br/>
            Password: <input type="password" name="txtPassword" required="required"  /> <br/>
            <input type="submit" value="Login" />
        </form>
        <%
            // lấy thông báo từ maincontroler gửi qua(như "errot")
            String message = request.getAttribute("message")+""; 
            // đổi null thành ""
            message = (message.equals("null"))?"":message;
        %>
        <span style="color:red"> <%=message%></span>
    </body>
</html>
