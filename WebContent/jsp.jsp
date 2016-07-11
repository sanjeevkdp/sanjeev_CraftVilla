<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@page import="com.CraftVilla.www.Product" %>
    <%@page import="com.CraftVillaDAO.com.ProductsDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%! List<Product> prdt=ProductsDAO.getAllProducts(); 
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1px solid black" width="100%" >

<tr>
       <td>name</td>
       <td>brand</td>
       <td>price</td>
       <td>image</td>
</tr>
<% for(int i=1;i<prdt.size();i++){ %>
<tr>
			<td><%=prdt.get(i).getName() %></td>
			<td><%=prdt.get(i).getBrand() %></td>
			<td><%=prdt.get(i).getPrice() %></td>
			<td><%=prdt.get(i).getImageUrl() %>.</td>
		</tr>
<%} %>

</table>
</body>
</html>