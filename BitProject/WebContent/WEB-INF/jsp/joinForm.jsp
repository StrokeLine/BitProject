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
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="/css/freelancer.min.css" rel="stylesheet">

<script type="text/javascript">
/* 	function petInfo(url) {
		if (url == '') {
			location.reload(true);
			return;
		}
		$(".pet_info_view").load(url);
	}; */
//  아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
    var idCheck = 0;
    var pwdCheck = 0;
    //아이디 체크하여 가입버튼 비활성화, 중복확인.
    function checkId() {
        var inputed = $('#emailid').val();
        $.ajax({
            data : {
                id : inputed
            },
            url : "checkID",
            success : function(data) {
                if(inputed=="" && data=='0') {
                    $("#inputjoin").prop("disabled", true);
                    $("#inputjoin").css("background-color", "#aaaaaa");
                    $("#emailid").css("background-color", "#FFCECE");
                    idCheck = 0;
                } else if (data == '0') {
                    $("#emailid").css("background-color", "#B0F6AC");
                    idCheck = 1;
                    if(idCheck==1 && pwdCheck == 1) {
                        $("#inputjoin").prop("disabled", false);
                        $("#inputjoin").css("background-color", "#4CAF50");
                        signupCheck();
                    } 
                } else if (data == '1') {
                    $("#inputjoin").prop("disabled", true);
                    $("#inputjoin").css("background-color", "#aaaaaa");
                    $("#emailid").css("background-color", "#FFCECE");
                    idCheck = 0;
                } 
            }
        });
    }

    function checkPwd() {
        var inputed = $('#password').val();
        var reinputed = $('#cpassword').val();
        if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
            $("#inputjoin").prop("disabled", true);
            $("#inputjoin").css("background-color", "#aaaaaa");
            $("#cpassword").css("background-color", "#FFCECE");
        }
        else if (inputed == reinputed) {
            $("#cpassword").css("background-color", "#B0F6AC");
            pwdCheck = 1;
            if(idCheck==1 && pwdCheck == 1) {
                $("#inputjoin").prop("disabled", false);
                $("#inputjoin").css("background-color", "#4CAF50");
                signupCheck();
            }
        } else if (inputed != reinputed) {
            pwdCheck = 0;
            $("#inputjoin").prop("disabled", true);
            $("#inputjoin").css("background-color", "#aaaaaa");
            $("#cpassword").css("background-color", "#FFCECE");
            
        }
    }
    //닉네임 입력하지 않았을 경우 가입버튼 비활성화
    function signupCheck() {
        var nickname = $("#mem_name").val();
        var MobilePhone = $("#mPhone").val();
        if(nickname=="" || MobilePhone=="") {
            $("#inputjoin").prop("disabled", true);
            $("#inputjoin").css("background-color", "#aaaaaa");
        } else {
        }
    }
    
 	// email check function
    function email_check(email) {    
        
        var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        return (email != '' && email != 'undefined' && regex.test(email)); 
    }

    // check when email input lost foucus
    function on_blur(){
      
    	var email = $('#emailid').val();
      // if value is empty then exit
      if( email == '' || email == 'undefined') return;

      // valid check
      if(! email_check(email) ) {
      	$("#result_check").text('Not valid email.');
        $(this).focus();
        return false;
      }
      else {
      	$("#result_check").text('Email address test OK.');
      }
    }
    
</script>
</head>

<body id="page-top" class="body_join">

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
	<section>
		<div class="container">
			
				<div class="row">
					<div class="col-md-8">
						<h1 class="entry-title">
							<span><img alt="" src="/images/signup.png" class="img-responsive"></span>
						</h1>
						<hr>
						<form class="form-horizontal" method="post" action="joinPro" name="signup" id="signup" enctype="multipart/form-data">
							<div class="form-group">
								<label class="control-label col-sm-3">Email ID <span class="text-danger">*</span></label>
								<div class="col-md-8 col-sm-9">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span> 
										<input type="text" class="form-control" name="m_email" id="emailid" placeholder="Enter your Email ID" value=""
										oninput="javascript:checkId();" onblur="on_blur()">
									</div>
									<div id="result_check"></div>
									<span id="idchk"></span>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-3">Set Password <span class="text-danger">*</span></label>
								<div class="col-md-5 col-sm-8">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-expeditedssl" aria-hidden="true"></i></span> 
										<input type="password" class="form-control" name="m_password" id="password" placeholder="Choose password (5-15 chars)" value=""
										oninput="checkPwd()">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3">Confirm Password <span
									class="text-danger">*</span>
								</label>
								<div class="col-md-5 col-sm-8">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-expeditedssl" aria-hidden="true"></i></span> 
										<input type="password" class="form-control" id="cpassword" placeholder="Confirm your password" value=""
										oninput="checkPwd()">
								</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3">Nick Name <span
									class="text-danger">*</span></label>
								<div class="col-md-8 col-sm-9">
									<input type="text" class="form-control" name="m_name" id="mem_name" placeholder="Enter your Name here" value=""
									oninput="checkId()">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-sm-3">Mobile Phone <span
									class="text-danger">*</span></label>
								<div class="col-md-5 col-sm-8">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-mobile" aria-hidden="true"></i></span> 
										<input type="text" class="form-control" name="m_tel" id="mPhone" placeholder="Enter your Mobile Phone number." value=""
										oninput="checkId()">
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-sm-3">Profile Photo <br>
									<small>(optional)</small></label>
								<div class="col-md-5 col-sm-8">
									<div class="input-group">
										<span class="input-group-addon" id="file_upload"><i class="fa fa-file-image-o" aria-hidden="true"></i></span> 
										<input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="" aria-describedby="file_upload">
									</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-xs-offset-3 col-xs-10">
									<button type="submit" class="btn btn-info" id="inputjoin" disabled="disabled">	회원가입 <i class="fa fa-check" aria-hidden="true"></i> 	</button>
									<button type="reset" class="btn btn-danger"	onclick="location='main'"> 가입취소 <i class="fa fa-times" aria-hidden="true"></i>	</button>
								</div>
							</div>
						</form>
					</div>
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

	

</body>
</html>