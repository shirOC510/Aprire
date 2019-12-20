<%@page session="true" import="java.sql.*" pageEncoding="UTF-8" %>
<%
	session.invalidate();
        out.print("<script>alert('Has cerrado sesion!'); window.location.replace('login.html');</script>");
	//response.sendRedirect("login.html");
       
%>