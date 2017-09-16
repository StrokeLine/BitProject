<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="메인페이지" />
<meta name="Description" content="메인페이지" />
<link rel="stylesheet" href="/css/main.css" type="text/css">
<script src="/js/pageScript.js"></script>
<title>FreeHaGae</title>
</head>
<body>
	
	<div id="wrap">

	    <div id="header">
			<jsp:include page="header.jsp" />
			
		</div>
	    
	    <div id="container">
	
		    <div id="sidebar">left menu</div>
		    
	        <div id="content">
	        	<jsp:include page="container.jsp" />
	   		</div>
	   		
		    <div id="extra">right menu</div>
	
	    </div>
	    
	    
	    
    <div id="footer">
    	<%@ include file="footer.jsp" %>
    </div>
    
</div>
	
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="/bootstrap/js/bootstrap.js"></script>

</body>
</html>