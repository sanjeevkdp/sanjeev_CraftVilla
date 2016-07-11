<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@page import="com.CraftVilla.www.Product"%>
<%@page import="com.CraftVillaDAO.com.ProductsDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%!List<Product> prdt = ProductsDAO.getAllProducts();%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="./css/bootstrap.min.css" rel="stylesheet"/>
<link href="./images" rel="stylesheet">
</head>

<body>
	<div class="container">
	
		<div class="row">
		
		<%		
			for(int i = 0; i < prdt.size(); i++) {
		
		%>
		<div class="col-xs-12 col-sm-6 col-md-6 col-lg-4">
			
				<div class="thumbnail">
					<img class="img-responsive img-circle" src="./images/<%= prdt.get(i).getImageUrl() %>" />
					<h3><%= prdt.get(i).getName() %></h3>
					<h4>Type: <%= prdt.get(i).getBrand() %></h4>
					<p>Price: <%= prdt.get(i).getPrice() %></p>
	     		</div> 
			</div>					
		<%
			}
		%>
			
		</div>
	</div>

</body>
</html>