<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

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
		
		<%-- 회원가입 전체 --%>
		<div class="container-fluid row justify-content-center align-items-center mt-4">
			<div class="sign-up">
				<h1 class="text-center">회원가입</h1>
				
				<%-- 성명입력 --%>
				<input type="text" placeholder="성명을 입력하세요" class="form-control btn-light outline mt-4 mb-3" id="nameInput">
				<%-- 성명입력 --%>

				<%-- 사용자이름 --%>				
				<div class="d-flex my-3">
					<input type="text" placeholder="사용자 이름을 입력하세요" class="form-control btn-light outline" id="userNameInput">
					<button type="button" class="btn btn-dark ml-1">중복확인</button>
				</div>
				<%-- 사용자이름 --%>
				
				<%-- 휴대폰 번호 --%>
				<div class="d-flex my-3">				
					<span class="text-secondary font-weight-bold col-3 mt-1">휴대폰 번호</span>
					<div class="d-flex col-9 ml-2">
						<input type="text" class="form-control col-3 btn-light outline" id="mpStartInput">
						<span class="mx-2 col-1 mt-1">-</span>
						<input type="text" class="form-control col-3 btn-light outline" id="mpMiddleInput">
						<span class="mx-2 col-1 mt-1">-</span>
						<input type="text" class="form-control col-3 btn-light outline" id="mpEndInput">
					</div>
				</div>
				<%-- 휴대폰 번호 --%>
				
				<%-- 이메일 --%>
				<div class="d-flex justify-content-between my-3">
					<input type="text" class="form-control col-5 btn-light outline" placeholder="이메일을 입력하세요" id="emailInput">
					<span class="mt-1">@</span>
					<select class="form-control col-5 btn-light outline" id="emailDomainInput">
							 <option value="" selected>--선택--</option>
							 <option value="1">직접입력</option>
							 <option value="naver.com">naver.com</option>
							 <option value="hanmail.net">hanmail.net</option>
							 <option value="hotmail.com">hotmail.com</option>
							 <option value="nate.com">nate.com</option>
							 <option value="yahoo.co.kr">yahoo.co.kr</option>
							 <option value="gmail.com">gmail.com</option>
					</select>				
				</div>
				<div class="d-flex justify-content-end">
					<input type="text" class="form-control col-5 btn-light outline d-none" id="writeDomain">
				</div>
				<%-- 이메일 --%>
				
				<%-- 비밀번호 --%>
				<input type="password" placeholder="비밀번호를 입력하세요" class="form-control btn-light outline my-3" id="passwordInput">
				<input type="password" placeholder="비밀번호 확인" class="form-control btn-light outline mt-3 mb-4" id="passwordConfirmInput">
				<%-- 비밀번호 --%>
				
				<%-- 주소 --%>
				<span class="text-secondary font-weight-bold">내 동네 위치 설정하기</span>
				<div class="d-flex justify-content-between mt-2 mb-4">
					<input type="text" class="form-control col-3 btn-light outline" id="siInput">
					<span class="text-dark font-weight-bold mt-1 mr-4 ml-1">시</span>
					<input type="text" class="form-control col-3 btn-light outline ml-2" id="guInput">
					<span class="text-dark font-weight-bold mt-1 mr-4 ml-1">구</span>
					<input type="text" class="form-control col-3 btn-light outline ml-2" id="dongInput">
					<span class="text-dark font-weight-bold mt-1 mr-4 ml-1">동</span>
				</div>
				<%-- 주소 --%>
				
				<%-- 성별 --%>
				<div class="mb-4">
				<span class="text-secondary font-weight-bold mr-5">성별</span>
				<small class="mx-5"><input type="radio" name="chk_sex" value="man">남성</small>
				<small class="ml-5"><input type="radio" name="chk_sex" value="woman">여성</small>
				</div>
				<%-- 성별 --%>
				
				<%-- 키/몸무게 --%>
				<span class="text-secondary font-weight-bold">키 / 목표 몸무게 (선택)</span>
				<div class="d-flex mt-2 mb-4">
					<input type="text" class="form-control col-3 btn-light outline" id="heightInput">
					<span class="text-dark font-weight-bold ml-1 mt-1">cm</span>
					<input type="text" class="form-control col-3 btn-light outline ml-5" id="weightInput">
					<span class="text-dark font-weight-bold ml-1 mt-1">kg</span>
				</div>
				<%-- 키/몸무게 --%>
				
				<button class="btn btn-dark form-control my-3" id="signupBtn">가입하기</button>
			</div>
			<footer>
				<span></span>
			</footer>
		</div>
		<%-- 회원가입 전체 --%>
			
	</div>
	
	<script>
		$(document).ready(function() {
			
			var domain = "";
			$("#emailDomainInput").on("change", function() {
				
				let selectValue = $(this).val();
				
				if(selectValue == "") {
					domain == "";
					$("#writeDomain").addClass("d-none");
					alert(domain);
				} else if(selectValue == 1) {
					$("#writeDomain").removeClass("d-none");
					domain = $("#writeDomain").val();
					alert(domain);
				} else {
					$("#writeDomain").addClass("d-none");
					domain = $("#emailDomainInput").val();
					alert(domain);
				}
				
			});
			
			
			$("#signupBtn").on("click", function(e) {
				
				e.preventDefault();
				
				let email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
				
				let name = $("#nameInput").val();
				let userName = $("#userNameInput").val();
				let phoneNumber = $("#mpStartInput").val() + "-" + $("#mpMiddleInput").val() + "-" + $("#mpEndInput").val();
				let email = $("#emailInput").val() + "@" + domain;
				let password = $("#password").val();
				let passwordConfirm = $("#passwordConfirmInput").val();
				let address = $("#siInput").val() + "시" + $("#guInput").val() + "구" + $("#dongInput").val() + "동";
				let sex = $("input[name=sex]:checked").val();
				let height = $("#heightInput").val();
				let weight = $("#weightInput").val();
				
				if(name == "") {
					alert("이름을 입력해주세요.");
				}
				
				if(userName == "") {
					alert("사용자 이름을 입력해주세요.");
				}
				
				if($("#mpStartInput").val() == "" || $("#mpMiddleInput").val() == "" || $("#mpEndInput").val() == "") {
					alert("핸드폰 번호를 입력해주세요.");
				}
				
				if($("#emailInput").val() == "" || domain == "") {
					alert("이메일을 입력해주세요.");
				}
				
				alert(name + userName + phoneNumber + email);
			});
			
		});
	</script>
	
</body>
</html>