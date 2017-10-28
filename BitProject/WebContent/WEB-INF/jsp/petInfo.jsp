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

<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">FreeHaGae</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fa fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='main'" style="cursor: pointer">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='main#portfolio'">Shopping</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='loginForm'" style="cursor: pointer">Sign in</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='joinForm'" style="cursor: pointer">Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- Container -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<form class="form-horizontal" method="post" action="" name="petSignup" id="petSignup" enctype="multipart/form-data">
						
						<div class="form-group">
							<h4>Pet Info</h4>
							<label>Pet Name</label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="petName" id="addPet_name" placeholder="Enter your Pet Name.">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label>Pet Breeds</label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-heart" aria-hidden="true"></i></span>
									<select id="addPet_breeds">
										<option selected disabled value="0">견종을 선택해주세요.</option>
									</select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label>Pet Birthday</label>
							<div class="col-md-5 col-sm-8"></div>
						</div>
						
					</form>
				</div>
			</div> <!-- end row -->
		</div><!-- end container -->
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
	

</body>

</html>
