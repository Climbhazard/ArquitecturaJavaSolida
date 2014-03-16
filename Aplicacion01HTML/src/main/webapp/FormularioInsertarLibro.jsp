<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ejemplo01</title>
<script type="text/javascript" src="js/validacion.js"></script>
<link type="text/css" rel="stylesheet" href="css/formato.css" />
</head>
<body>
	<form action="InsertarLibro.jsp" method="post"
		onsubmit="return validacion();">
		<fieldset>
			<legend>Formulario alta libro</legend>
			<p>
				<label for="isbn">ISBN : </label> <input id="isbn" type="text"
					name="isbn" />
			</p>
			<p>
				<label for="titulo">Título : </label> <input id="titulo" type="text"
					name="titulo" />
			</p>
			<p>
				<label for="categoria">Categoría : </label> <input id="categoria"
					type="text" name="categoria" />
			</p>
			<p>
				<input type="submit" value="Insertar" />
			</p>
		</fieldset>
	</form>
</body>
</html>