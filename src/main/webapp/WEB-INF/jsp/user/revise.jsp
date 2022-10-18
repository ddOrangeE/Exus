<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soyaa님 정보수정</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	     
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/user.css" type="text/css">
	<link rel="stylesheet" href="/static/css/header.css" type="text/css">

</head>
<body>
	
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<%-- 정보수정 전체 --%>
		<div class="container-fluid row justify-content-center align-items-center mt-4">
			<div class="sign-up">
				<h1 class="text-center">정보 수정하기</h1>
				
				<%-- 성명입력 --%>
				<input type="text" placeholder="김소연" class="form-control btn-light outline mt-4 mb-3">
				<%-- 성명입력 --%>

				<%-- 사용자이름 --%>				
				<div class="d-flex my-3">
					<input type="text" placeholder="soyaa" class="form-control btn-light outline">
					<button type="button" class="btn btn-dark ml-1">중복확인</button>
				</div>
				<%-- 사용자이름 --%>
				
				<%-- 휴대폰 번호 --%>
				<div class="d-flex my-3">				
					<span class="text-secondary font-weight-bold col-3 mt-1">휴대폰 번호</span>
					<div class="d-flex col-9 ml-2">
						<input type="text" class="form-control col-3 btn-light outline" placeholder="010">
						<span class="mx-2 col-1">-</span>
						<input type="text" class="form-control col-3 btn-light outline" placeholder="1111">
						<span class="mx-2 col-1">-</span>
						<input type="text" class="form-control col-3 btn-light outline" placeholder="2222">
					</div>
				</div>
				<%-- 휴대폰 번호 --%>
				
				<%-- 이메일 --%>
				<div class="d-flex justify-content-between my-3">
					<input type="text" class="form-control col-5 btn-light outline" placeholder="asdf">
					<span class="mt-1">@</span>
					<input type="text" class="form-control col-5 btn-light outline" placeholder="naver.com">
				</div>
				<%-- 이메일 --%>
				
				<%-- 비밀번호 --%>
				<input type="password" placeholder="비밀번호를 입력하세요" class="form-control btn-light outline my-3">
				<input type="password" placeholder="비밀번호 확인" class="form-control btn-light outline mt-3 mb-4">
				<%-- 비밀번호 --%>
				
				<%-- 주소 --%>
				<span class="text-secondary font-weight-bold">내 동네 위치 설정하기</span>
				<div class="d-flex justify-content-between mt-2 mb-4">
					<input type="text" class="form-control col-3 btn-light outline" placeholder="성남">
					<span class="text-dark font-weight-bold mt-1 mr-4 ml-1">시</span>
					<input type="text" class="form-control col-3 btn-light outline ml-2" placeholder="수정">
					<span class="text-dark font-weight-bold mt-1 mr-4 ml-1">구</span>
					<input type="text" class="form-control col-3 btn-light outline ml-2" placeholder="창곡">
					<span class="text-dark font-weight-bold mt-1 mr-4 ml-1">동</span>
				</div>
				<%-- 주소 --%>
				
				<%-- 키/몸무게 --%>
				<span class="text-secondary font-weight-bold">키 / 목표 몸무게 (선택)</span>
				<div class="d-flex mt-2 mb-4">
					<input type="text" class="form-control col-3 btn-light outline" placeholder="166">
					<span class="text-dark font-weight-bold ml-1 mt-1">cm</span>
					<input type="text" class="form-control col-3 btn-light outline ml-5" placeholder="232">
					<span class="text-dark font-weight-bold ml-1 mt-1">kg</span>
				</div>
				<%-- 키/몸무게 --%>
				
				<textarea cols="60" rows="3" maxlength="100" id="textBox" class="form-control btn-light outline introduce-font" placeholder="짧은 소개"></textarea>
				<div class="textLengthWrap d-flex mt-1 justify-content-end">
    				<small class="textCount text-secondary">0자</small>
    				<small class="textTotal text-secondary">/100자</small>
  				</div>				

				
				<%-- 이미지 변경 또는 생성 --%>
				<div class="add-image d-flex justify-content-center align-items-center mt-4">
					<a href="#" class="font-weight-bold text-white text-decoration-none">이미지 변경 또는 생성</a>
					<input type="file" class="d-none">
				</div>
				<%-- 이미지 변경 또는 생성 --%>
				
				<button class="btn btn-dark form-control my-3">수정하기</button>
			</div>
			<footer>
				<span></span>
			</footer>
		</div>
		<%-- 정보수정 전체 --%>
			
	</div>
	
<script>

$(document).ready(function() {
	
	$("#textBox").on("input", function (e) {
		let content = $(this).val();
	    
	    // 글자수 제한
	    if (content.length > 100) {
	    	// 100자 부터는 타이핑 되지 않도록
	        $(this).val($(this).val().substring(0, 100));
	    	content = $(this).val();
	        // 100자 넘으면 알림창 뜨도록
	        alert("글자수는 100자까지 입력 가능합니다.");
	    };
	    
	    // 글자수 세기
	    if (content.length == 0 || content == "") {
	    	$(".textCount").text("0자");
	    } else {
	    	$(".textCount").text(content.length + "자");
	    }
	    
	});
	
});


</script>
	
</body>
</html>