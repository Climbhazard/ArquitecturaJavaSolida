<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="com.arquitecturajava.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Libros</title>
</head>
<body>
	<select name="categoria">
		<option value="seleccionar">seleccionar</option>
		<%
			ResultSet resultSet = null;
			try {
				String sql = "select isbn, titulo, categoria from Libros";
				resultSet = DataBaseHelper.seleccionarRegistros(sql);
				while (resultSet.next()) {
		%>
		<option value="<%=resultSet.getString("categoria")%>"><%=resultSet.getString("categoria")%></option>
		<%
			}
		%>
	</select>
	<br />
	<%
		//Movemos el cursor al inicio del resultSet
			resultSet.beforeFirst();
			while (resultSet.next()) {
	%>
	<%=resultSet.getString("isbn")%>
	<%=resultSet.getString("titulo")%>
	<%=resultSet.getString("categoria")%>
	<br />
	<%
		}
		} catch (SQLException e) {
			System.out.println("Error accediendo a	la base de datos : "
					+ e.getMessage());
		} finally {
			//6
			if (resultSet != null) {
				try {
					resultSet.close();
				} catch (SQLException e) {
					System.out.println("Error al cerrar el resultset : "
							+ e.getMessage());
				}
			}
		}
	%>
	<a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
</body>
</html>