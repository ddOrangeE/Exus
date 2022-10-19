<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soyaa 님의 메인</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	     
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/header.css" type="text/css">
	<link rel="stylesheet" href="/static/css/sign_main.css" type="text/css">

</head>
<body>
	<div id="wrap">
	<%--
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
	 --%>
		<header>
			<div class="d-flex">			
				<a href="#" class="text-decoration-none col-6">
					<h1 class="text-white font-weight-bold pt-1 ml-2">Exus</h1>
				</a>
				
				<div class="d-flex justify-content-end col-6">
					<%-- 아이콘 --%>
					<div class="d-flex align-items-center mr-5">
						<a href="#"><i class="bi bi-house-fill text-white h4"></i></a>
						<a href="#"><i class="bi bi-heart-fill text-white h4 ml-3 mt-1"></i></a>
						<a href="#"><i class="bi bi-chat-fill text-white h4 ml-3"></i></a>
					</div>
					<%-- 아이콘 --%>
					
					<%-- 닉네임 / 프로필 사진 --%>
					<div class="d-flex align-items-center ml-3">
						<h5 class="text-white mr-2">soyaa</h5>
						<img src="#" alt="프로필 사진">
					</div>
				</div>
			</div>
		</header>
		
	</div>

</body>
</html>