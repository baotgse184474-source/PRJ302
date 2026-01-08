<%-- 
    Document   : MainController
    Created on : Jan 8, 2026, 5:10:08 PM
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
 String txtUsername = request.getParameter("txtUsername");
            String txtPassword = request.getParameter("txtPassword");
            
            String url = "";
            
            if(txtUsername.equalsIgnoreCase("admin")
               && txtPassword.equals("admin")){
                url = "a.jsp";
            }else{
                url = "b.jsp";
            }
            
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
                </body>
</html>
