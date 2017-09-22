<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<script type="text/javascript">
	function petInfo(url) {
		if (url == '') {
			location.reload(true);
			return;
		}
		$(".pet_Info").load(url);
	};
</script>
</head>
<body id="page-top">
	<div class="wrap">

		<!-- Navigation -->
		<section>
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
						href="#portfolio">Shopping</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='loginForm'">Sign in</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						onclick="location='joinForm'">Sign up</a></li>
				</ul>
			</div>
		</div>
		</nav>
		</section>
		
		
		<section>
		<div class="joinId" id="joinId">
			<label for="join_id">아이디(이메일)</label> <input type="text"
				class="form-control" id="join_inputID" placeholder="이메일을 입력하세요">
			<button type="button" class="btn btn-info">중복확인</button>
		</div>

		<div class="joinPw" id="joinPw">
			<label for="join_pw">비밀번호</label> <input type="password"
				class="form-control" id="join_inputPW" placeholder="비밀번호를 입력하세요">
			<input type="password" class="form-control" id="join_inputRPW"
				placeholder="비밀번호를 한 번 더 입력하세요">
		</div>

		<div class="joinNick" id="joinNick">
			<label for="join_nick">닉네임</label> <input type="text"
				class="form-control" id="join_inputNICK" placeholder="닉네임을 입력하세요">
			<button type="button" class="btn btn-warning">중복확인</button>
		</div>

		<div class="joinTel" id="joinTel">
			<label for="join_tel">전화번호</label> <input type="text"
				class="form-control" id="join_inputTEL" placeholder="전화번호를 입력하세요">
			<button type="button" class="btn btn-danger">인증</button>
		</div>

		<div class="pet_Info" id="pet_Info">
			<button type="button" class="btn btn-info"
				onclick="petInfo('petInfo')">반려견 등록</button>
		</div>

		<!-- <div class="pet_view"></div> -->
		<form action="mainLogin" method="post">
			<input type="hidden" name="m_index" value="0"> <input
				type="hidden" name="m_name" value="aaa"> <input
				type="hidden" name="m_tel" value="010-4567-4564"> <input
				type="hidden" name="m_tel_check" value="false"> <input
				type="hidden" name="m_email" value="aaa@aaa.com"> <input
				type="hidden" name="m_email_check" value="false"> <input
				type="hidden" name="m_password" value="aaa"> <input
				type="hidden" name="m_img" value=""> <input type="hidden"
				name="m_admin" value="false"> <input type="hidden"
				name="m_date" value="2017-07-25"> <input type="submit"
				value="회원가입">
		</form>
		<div class="join_Bt" id="join_Bt">
			<!-- <button type="submit" class="btn btn-primary">회원가입</button> -->
			<button type="reset" class="btn btn-success"
				onclick="location='main'">취소</button>
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
						Freelance is a free to use, open source Bootstrap theme created by
						<a href="http://startbootstrap.com">Start Bootstrap</a>.
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
</html>