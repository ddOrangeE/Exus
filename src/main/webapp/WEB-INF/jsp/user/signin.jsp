<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	     
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/signup.css" type="text/css">
	<link rel="stylesheet" href="/static/css/header.css" type="text/css">

</head>
<body>
	
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<%-- 로그인 전체 --%>
		<div class="container-fluid row justify-content-center align-items-center mt-4">
			<div class="sign-up">
				<h1 class="text-center">로그인</h1>
				
				<%-- 사용자 이름 또는 이메일 --%>
				<input type="text" placeholder="사용자 이름 또는 이메일" class="form-control btn-light outline my-4">
				<%-- 사용자 이름 또는 이메일 --%>
				
				<%-- 비밀번호 --%>
				<input type="password" placeholder="비밀번호" class="form-control btn-light outline my-4">
				<%-- 비밀번호 --%>
				
				<button class="btn btn-dark form-control my-4">로그인</button>
				
				<div class="d-flex justify-content-between">
					<div class="col-5">					
						<hr>
					</div>
					<span class="col-2 text-center text-secondary">또는</span>
					<div class="col-5">
						<hr>
					</div>
				</div>
				
				<div class="outline rounded">
					<div class="row justify-content-center align-items-center">
						<span class="text-secondary font-weight-bold mt-2">계정이 없으신가요?</span>					
					</div>
					<div class="mt-4 pb-5">
						<div class="bg-mint z-index1 w-100 justify-content-center align-items-center d-flex">
							<a href="#" class="text-decoration-none z-index2">						
								<h3 class="text-dark font-weight-bold z-index3">회원가입 하러 가기</h3>
							</a>
						</div>
					</div>
					
				
				</div>
				
			</div>
			<footer>
				<span></span>
			</footer>
		</div>
		<%-- 회원가입 전체 --%>
			
	</div>
	
</body>
</html>