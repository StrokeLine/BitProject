<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />

	<!-- Bootstrap Core CSS -->
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="/css/stylish-portfolio.css" rel="stylesheet">

	<!-- java script -->
	<script src="/js/pageScript.js"></script>
<title>Insert title here</title>
</head>
<style>
html, body{margin:0; width:100%;	height:100%;}
.wrap{
	width:100%;	height:100%;	position: relative;
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
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
      <i class="fa fa-bars"></i>
    </a>
    <nav id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle">
          <i class="fa fa-times"></i>
        </a>
        <li class="sidebar-brand">
          <a class="js-scroll-trigger" onclick="location='mainLogin'"><img alt="FreeHaGae" src="/images/logo.png" width="130px"></a>
        </li>
        <li>
          <a class="js-scroll-trigger" onclick="location='mainLogin'">Home</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#services">Shopping</a>
        </li>
        <li>
          <a class="js-scroll-trigger" onclick="location='main'">Sign out</a>
        </li>
        <li>
          <a class="js-scroll-trigger" onclick="location='myPageMain'">My page</a>
        </li>
        <li>
          <a class="js-scroll-trigger" href="#contact" onclick=$( "#menu-close").click();>Contact</a>
        </li>
      </ul>
    </nav>

	<div class="wrap">
		<div class="myPageMenu">	
		<iframe name="myPageMenu" src="myPageMenu" width="100%" height="100%" style="border:0"></iframe>
		</div>
		<div class="myPageContent">
		<iframe name="myPageContent" src="memberInfo" width="100%" height="100%" style="border:0"></iframe>
		</div>
	</div>
	
	<!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-10 mx-auto text-center">
            <h4>
              <strong>Start Bootstrap</strong>
            </h4>
            <p>3481 Melrose Place
              <br>Beverly Hills, CA 90210</p>
            <ul class="list-unstyled">
              <li>
                <i class="fa fa-phone fa-fw"></i>
                (123) 456-7890</li>
              <li>
                <i class="fa fa-envelope-o fa-fw"></i>
                <a href="mailto:name@example.com">name@example.com</a>
              </li>
            </ul>
            <br>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter fa-fw fa-3x"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-dribbble fa-fw fa-3x"></i>
                </a>
              </li>
            </ul>
            <hr class="small">
            <p class="text-muted">Copyright &copy; Your Website 2017</p>
          </div>
        </div>
      </div>
      <a id="to-top" href="#top" class="btn btn-dark btn-lg js-scroll-trigger">
        <i class="fa fa-chevron-up fa-fw fa-1x"></i>
      </a>
    </footer>
	
	<!-- Bootstrap core JavaScript -->
    <script src="/jquery/jquery.min.js"></script>
    <script src="/popper/popper.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/js/stylish-portfolio.js"></script>
	
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