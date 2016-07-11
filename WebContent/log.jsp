<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="com.CraftVilla.www.Product"%>
<%@page import="com.CraftVillaDAO.com.ProductsDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%!List<Product> prdt = ProductsDAO.getAllProducts();%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./css/bootstrap.min.css" rel="stylesheet" />
<link href="./css/bootstrap-theme.css"rel="stylesheet">
<link href="">
<link href="./images" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript">

</script>
</head>
<body>

	<div role="navigation" class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" data-target="#navbarCollapse"
					data-toggle="collapse" class="navbar-toggle">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">CraftVilla</a>
			</div>
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Service</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div
				class="col-lg-7 col-lg-offset-1 col-sm-7 col-sm-offset-1 col-lg-push-4 col-sm-push-4">
				<div id="the-slider" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#the-slider" data-slide-to="0" class="active"></li>
						<li data-target="#the-slider" data-slide-to="1"></li>
						<li data-target="#the-slider" data-slide-to="2"></li>
						<li data-target="#the-slider" data-slide-to="3"></li>
						<li data-target="#the-slider" data-slide-to="4"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images/1.jpg" class="img-responsive" alt="">
						</div>
						<div class="item">
							<img src="images/2.jpg" class="img-responsive" alt="">
						</div>
						<div class="item">
							<img src="images/31.jpg" class="img-responsive" alt="">
						</div>
						<div class="item">
							<img src="images/4.jpg" class="img-responsive" alt="" >
						</div>
						<div class="item">
							<img src="images/5.jpg" class="img-responsive" alt="">
						</div>


					</div>
					<!--RIGHT AND LEFT MOVES USING CAROUSEL-->
					<a class="left carousel-control" href="#the-slider" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" area-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#the-slider" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" area-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				
							<%
								for (int i = 0; i < prdt.size(); i++) {
							%>
                              <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4"><br/>
								<div class="thumbnail">
									<img class="img-responsive img-rounded"
										src="./images/<%=prdt.get(i).getImageUrl()%>" style="height:100px;width:200px;" />
									<h3><%=prdt.get(i).getName()%></h3>
									<h4>
										Type:
										<%=prdt.get(i).getBrand()%></h4>
									<p>
										Price:
										<%=prdt.get(i).getPrice()%></p>
								</div>
								</div>
							<%
								}
							%>
				
			</div>


			<aside class="col-lg-4 col-sm-4 col-lg-pull-8 col-sm-pull-8">
			<ul class="nav nav-pills nav-stacked">
			    <li><h3>Category</h3></li>
				<li class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle" href="#">Saree<b class="caret"></b></a>
				<ul role="menu" class="dropdown-menu">
				<li><a href="#">abc</a></li>
				<li><a href="#">xyz</a></li>
				<li><a href="#">simple</a></li>
				
				</ul>
				
				
				</li>
				<li><a href="#">Jewellery</a></li>
				<li><a href="#">Carpet</a></li>
				<li><a href="#">Sculpture</a></li>
				<li><a href="#">Floor</a></li>

			</ul>
			</aside>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>