<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta http-equiv="Content-Type" content="text⁄html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Hand Made - Pet Product</title>

<!-- Bootstrap core CSS -->
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">

<script type="text/javascript">
	function petInfo(url) {
		if (url == '') {
			location.reload(true);
			return;
		}
		$(".pet_info_view").load(url);
	};
	
</script>
</head>

<body id="page-top">

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
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='main'" style="cursor: pointer">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='main#portfolio'">Shopping</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='loginForm'" style="cursor: pointer">Sign in</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" onclick="location='joinForm'" style="cursor: pointer">Sign up</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<section>
		<div class="container">
				
				<div class="col-md-6 col-md-offset-3">
					<form method="post" action="joinPro" role="join">
						<div class="join-header">
							<img alt="" src="/images/signup.png" class="img-responsive">
						</div>
						
						<div class="form-group">
							<label for="join_email">이메일(아이디)</label>
								<div class="input-group">
									<input type="email"  required class="form-control" name="m_email" placeholder="이메일을 입력하세요" maxlength="20" oninput="checkEmail()">
										<span class="input-group-btn">
											<button id="checkbtn" class="btn btn-success"> <i class="fa fa-check" aria-hidden="true"></i> 중복확인 </button>
										</span>
								</div>
								<div id="checkMsg"></div>
						</div>

						<div class="form-group">
							<label for="InputPassword1">비밀번호</label> 
							<input type="password" class="form-control" id="InputPassword1" name="m_password" placeholder="비밀번호를 입력하세요" maxlength="20">
						</div>
						<div class="form-group">
							<label for="InputPassword2">비밀번호 확인</label> 
							<input type="password" class="form-control" id="InputPassword2" name="m_repassword" placeholder="비밀번호를 한 번 더 입력하세요" maxlength="20">
							<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
						</div>

						<div class="form-group">
							<label for="join_nick">별명</label>
								<div class="input-group">
									<input type="text" class="form-control" name="m_name" placeholder="별명을 입력하세요" maxlength="20">
										<span class="input-group-btn">
											<button class="btn btn-success"> <i class="fa fa-check" aria-hidden="true"></i> 중복확인 </button>
										</span>
								</div>
						</div>

						<div class="form-group">
							<label for="join_tel">휴대전화</label>
							<div class="input_tel">
								<input type="tel" class="form-control" name="m_tel" placeholder="'-'를 제외한 휴대전화 번호를 입력하세요" maxlength="15">
									<span class="envelope">
										<button class="btn btn-success"> <i class="fa fa-envelope-o" aria-hidden="true"></i> 인증번호 전송 </button>
									</span>
							</div>
						</div>

						<div class="form-group">
							<label for="VerificationCode">인증번호 입력</label>
							<div class="input_tel">
								<input type="text" class="form-control" name="m_tel_check" placeholder="인증번호를 입력하세요">
									<span class="pencil">
										<button class="btn btn-success"> <i class="fa fa-pencil" aria-hidden="true"></i> 인증번호 입력 </button>
									</span>
							</div>
						</div>

						<div class="joinImg">
							<label for="join_img">프로필사진</label> 
							<input type="file" name="m_img" class="form-control">
						</div>

						<!-- <div class="pet_Info" id="pet_Info">
							<input type="radio" name="inputpet" value="registration" onclick="petInfo('petInfo')">펫 등록 
							<input type="radio"	name="inputpet" value="non-registered">등록안함
							<div class="pet_info_view"></div>
						</div> -->

						<div class="form-group text-center">

							<button type="submit" class="btn btn-info">회원가입 <i class="fa fa-check" aria-hidden="true"></i> </button>
							<button type="reset" class="btn btn-danger" onclick="location='main'">가입취소 <i class="fa fa-times" aria-hidden="true"></i></button>
						</div>
					</form>
					
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