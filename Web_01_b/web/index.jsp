<%-- 
    Document   : index
    Created on : Jan 5, 2026, 4:39:33 PM
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
        <h1> HTML Forms </h1> 
        <form action="index.html">
            Textbox <input type ="text" name="txtText" size="5"/> <br/>
            Password <input type ="password" name ="txtPassword"/> <br/>
            Hidden <input type="hidden" name ="txtHidden" value=""/> <br/>
            Male <input type ="checkbox" name ="txtMale" value="ON" checked = "checked"/> <br/>
            Status  <input type ="radio" name ="txtStatus" value="Single" checked ="checked"/> Single <br/>
            <input type ="radio" name ="txtStatus" value="Married"/> Married <br/>
            <input type ="radio" name ="txtStatus" value="Divorsed"/> Divorsed <br/>
            ComboBox <select name="txtCombo">
                <option value="1">JSP and Servlet </option>
                <option value="2">EJB</option>
            </select><br>
            Multiple <select name ="txtMul" multiple size="3">
                <option value="JSP">JSP and Servlet </option>
                <option value="EJB">EJB</option>
                <option value ="Java"> Core Java </option>
            </select><br/>
            TextArea 
            <textarea name ="txtArea" rows="4" cols="20">
                    This is a form parameters demo!!!!
            </textarea><br> 
            <input type="submit" name="txtSubmit" value ="Submit Query">
            <input type="submit" name="txtRegister" value="Register">
            <input type="reset" name ="txtReset">
            <input type ="button" name ="txtB" value="JavaScript" onclick="">
            </form>

    </body>
</html>
