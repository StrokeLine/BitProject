<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<!-- Bootstrap css -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom css -->
<!-- <link rel="stylesheet" href="/css/main.css" type="text/css"> -->

<!-- Bootstrap and javaScript -->
<script src="/jquery/jquery.min.js"></script>
<script src="/popper/popper.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>

<script src="/js/pageScript.js"></script>
<title>FreeHaGae</title>
</head>
<body>

	<div id="wrap">

		<!-- header -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-pink fixed-top">
			<div class="container">
				<a class="navbar-brand" href="#"><img alt="FreeHaGae Home" src="/images/logo.png" class="logo"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="#">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Services</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<div id="container"  style="display: inline-block;">
									
			<div id="content">
				<jsp:include page="container.jsp" />
			</div>
				
		</div>

	</div>

	<footer class="py-5 bg-pink">
		<p class="m-0 text-center text-white">Copyright &copy; Your
			Website 2017</p>
	</footer>

</body>
</html>