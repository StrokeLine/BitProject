<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hand Made - Pet Product</title>

<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">

</head>
<style>
html, body{margin:0; width:100%;	height:100%;}
.wrap{
	width:100%;	height:700px;	position: relative;
}
.myPageMenu{
	display:inline-block;	float:left;	width:200px;	height:100%;
}
.myPageContent{
	display: inline-block;	position: absolute;	left:200px;	right: 0;	height:100%; overflow:hidden;
}
</style>

<body  background="/images/bg2.jpg">
	
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">FreeHaGae</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='mainLogin'" style="cursor: pointer">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Shopping</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='main'" style="cursor: pointer">Sign out</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='myPageMain'" style="cursor: pointer">My page</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<section>
	<div class="wrap">
		<div class="myPageMenu">	
			<iframe name="myPageMenu" src="myPageMenu" width="100%" height="100%" style="border:0px;"></iframe>
		</div>
		<div class="myPageContent">
			<iframe name="myPageContent" src="memberInfo" width="100%" height="100%" style="border: 0px;"></iframe>
		</div>
	</div>
	</section>
	
	<!-- Footer -->
	<footer class="text-center">
		<div class="footer-above">
			<div class="container">
				<div class="row">
					<div class="footer-col col-md-4">
						<h3>Location</h3>
						<p>
							3481 Melrose Place <br>Beverly Hills, CA 90210
						</p>
					</div>
					<div class="footer-col col-md-4">
						<h3>Around the Web</h3>
						<ul class="list-inline">
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-facebook"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-google-plus"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-twitter"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-linkedin"></i>
							</a></li>
							<li class="list-inline-item"><a
								class="btn-social btn-outline" href="#"> <i
									class="fa fa-fw fa-dribbble"></i>
							</a></li>
						</ul>
					</div>
					<div class="footer-col col-md-4">
						<h3>About Freelancer</h3>
						<p>
							Freelance is a free to use, open source Bootstrap theme created
							by <a href="http://startbootstrap.com">Start Bootstrap</a>.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-below">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">Copyright &copy; Your Website 2017</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-top d-lg-none">
		<a class="btn btn-primary js-scroll-trigger" href="#page-top"> <i
			class="fa fa-chevron-up"></i>
		</a>
	</div>
	
	<!-- Bootstrap core JavaScript -->
	<script src="/jquery/jquery.min.js"></script>
	<script src="/popper/popper.min.js"></script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="/jquery-easing/jquery.easing.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="/js/jqBootstrapValidation.js"></script>
	<script src="/js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="/js/freelancer.min.js"></script>
	
</body>

<!-- 
<body>
<div>
	<iframe name="myPageMenu" src="myPageMenu" onload="reSize(this)" frameborder="0" scrolling="no" style="width: 20%;"></iframe>
	<iframe name="myPageContent" src="memberInfo" onload="reSize(this)" frameborder="0" scrolling="no" style="width: 79%;"></iframe>
</div>
<script type="text/javascript" src="/js/bootstrap.js"></script>
</body>

<script type="text/javascript">
	function reSize(i) {
		var newHeight = document.body.offsetHeight;
		i.height = newHeight;
	}
</script>
 -->
</html>