<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./checkerboard.css"/>

<meta charset="ISO-8859-1">
<title>Checkerboard</title>
</head>
<body>
	<div id="wrapper">
		<%
			int x = Integer.parseInt(request.getParameter("width"));
			int y = Integer.parseInt(request.getParameter("height"));
		%>
		<h1>Welcome</h1>

		<%
			for (int i = 0; i < y; i++) {
		%>
		<div class="row">
			<%
				for (int j = 0; j < x; j++) {
					if ((i + j) % 2 == 0) {
			%>
			<div class="boxes color1"></div>
			<%
					} if ((i + j) % 2 == 1) {
			%>
			<div class="boxes color2"></div>
			<%
					}
				}
			}
			%>
		</div>
	</div>
</body>
</html>