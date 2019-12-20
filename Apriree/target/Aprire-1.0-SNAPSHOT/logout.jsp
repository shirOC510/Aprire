<%-- 
    Document   : logout
    Created on : 06/12/2019, 01:03:48 PM
    Author     : BRAYAN LIPE
--%>
<%@page session="true" import="java.sql.*" pageEncoding="UTF-8" %>
<%
	session.invalidate();
        out.print("<script>alert('Has cerrado sesion!'); window.location.replace('login.html');</script>");
	//response.sendRedirect("login.html");
       
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <h1>Saliste del tu cuenta</h1>
    </body>
</html>
