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
        <%-- form gửi data đến maincontroller--%>
        
        <%--
action: nơi dữ liệu gửi đến method: gửi bằng post
        --%>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login" />
            Username: <input type="text" name="txtUsername" /> <br/>
            Password: <input type="password" name="txtPassword" /> <br/>
            <input type="submit" value="Login" />
        </form>
        <%-- hiển thị lỗi nếu có --%>
        
        <%
            // nhận giá trị từ LoginController và lấy từ lệnh Request
            // +"": phòng trường hợp ko có message - null + "" --> "null"
            String message = request.getAttribute("message")+"";
            message = (message.equals("null"))?"":message;
        %>
        <%-- In biến message ra HTML--%>
        <span style="color:red"><%=message%></span>
        
    </body>
</html>
