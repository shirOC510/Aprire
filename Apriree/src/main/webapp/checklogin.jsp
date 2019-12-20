<%-- 
    Document   : checklogin
    Created on : 06/12/2019, 12:36:14 PM
    Author     : BRAYAN LIPE
--%>

<%@page contentType="text/html"%>
<%@page session="true" import="java.sql.*" pageEncoding="UTF-8" %>

<%
Connection conexion=null;
String mensaje = "";
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/aprire_database?serverTimezone=UTC";
String tabla_nombre = "usuarios";
String usuario = "root";
String clave = "";
try{
	Class.forName("com.mysql.jdbc.Driver");
	conexion = DriverManager.getConnection(url,usuario,clave);
	String nombre = request.getParameter("nombre");
        String perfil = request.getParameter("perfil");
	String contrasena = request.getParameter("contrasena");

	String select_value = "SELECT * FROM " + tabla_nombre + " WHERE nombre='" + nombre + "'";
	Statement st=conexion.createStatement();
	ResultSet rs = st.executeQuery(select_value);
	while(rs.next())
	{
		if(rs.getObject("contrasena").equals(contrasena)){
			session.setAttribute("loggedin", "true");
			response.sendRedirect("shop.jsp");
			return;
		}
	}
	out.print("<script>alert('Usuario o constraseña incorrectos!'); window.location.replace('login.html');</script>");
	conexion.close();
}catch(Exception ex){
	out.println(ex.toString());
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
