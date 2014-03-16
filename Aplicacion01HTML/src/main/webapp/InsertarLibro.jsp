<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.arquitecturajava.*"%>

<%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String categoria = request.getParameter("categoria");

	String sql = "insert into Libros (isbn, titulo, categoria) values "
			+ "('" + isbn + "','" + titulo + "','" + categoria + "')";

	int filas = DataBaseHelper.modificarRegistro(sql);

	response.sendRedirect("MostrarLibros.jsp");
%>