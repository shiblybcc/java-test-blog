<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/taglib.jsp" %>
    
    <tilesx:useAttribute name="current"/>
   
    
<!DOCTYPE>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<title><tiles:getAsString name="title" /></title>

</head>
<body>
	<div class="box-wrap">
		<header role="banner" id="fh5co-header">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="row">
						<div class="col-md-3">
							<div class="fh5co-navbar-brand">
								<a class="fh5co-logo" href="index.html">Narrow</a>
							</div>
						</div>
						<div class="col-md-9 main-nav">
							<ul class="nav text-right">
								<li class="${current == 'index' ? 'active' : ''  }"><a href='<spring:url value="/" />'>Home</a></li>
								<li class="${current == 'users' ? 'active' : ''  }"><a href='<spring:url value="/users.html" />'>Users</a></li>
								<li class="${current == 'blog' ? 'active' : ''  }"><a href="product.html">Products</a></li>
								<li><a href="about.html">About</a></li>
								<li class=""><a href="contact.html">Contact</a></li>
							</ul>
						</div>
					</div>
				</nav>
		  </div>
		</header>
		<!-- END: header -->

<tiles:insertAttribute name="body" />

<br>
<br>


	<tiles:insertAttribute name="footer" />

</div>
</body>
</html>