<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운동계획 등록하기</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	     
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	
	<link rel="stylesheet" href="/static/css/header.css" type="text/css">
	<link rel="stylesheet" href="/static/css/sidebar.css" type="text/css">
	<link rel="stylesheet" href="/static/css/plan.css" type="text/css">


</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/sign_header.jsp" />
		
		<div class="d-flex">
			<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
	
	        <div class="container plan">
				<%-- 정보수정 전체 --%>
				<div class="container-fluid row justify-content-center align-items-center mt-4">
					<div class="sign-up">
						
						<%-- 날짜 선택 --%>
						<div class="d-flex my-3">				
							<span class="text-secondary font-weight-bold col-3 mt-1">날짜 선택</span>
							<div class="d-flex col-9 ml-2 justify-content-center align-items-center">
								<h5 class="mr-2"><i class="bi bi-arrow-left-circle"></i></h5>
								<input type="text" class="form-control btn-light outline text-center" value="2022-11-01" readonly>
								<h5 class="ml-2"><i class="bi bi-arrow-right-circle"></i></h5>
							</div>
						</div>
						<%-- 날짜 선택 --%>
		
						<%-- 운동계획 --%>			
						<span class="text-secondary font-weight-bold col-3 my-3">운동계획</span>	
						<div class="d-flex my-3">
							<input type="text" placeholder="운동계획을 등록해주세요." class="form-control btn-light outline">
							<button type="button" class="btn btn-dark ml-1">등록하기</button>
						</div>
						
						<div class="mb-3">
							<div class="d-flex">
								<input type="text" class="form-control btn-light outline my-1 exercise-plan" value="달리기">
								<button type="button" class="btn btn-secondary ml-1 my-1">수정하기</button>								
							</div>
							
							<div class="d-flex">
								<input type="text" class="form-control btn-light outline my-1 exercise-plan" value="필라테스 1시간">
								<button type="button" class="btn btn-secondary ml-1 my-1">수정하기</button>
							</div>
						</div>
						<%-- 운동계획 --%>
						
						<%-- 현재 체중 --%>
						<div class="d-flex my-3">				
							<span class="text-secondary font-weight-bold col-3 mt-1">현재 체중</span>
							<div class="d-flex col-9 ml-2 justify-content-start align-items-center">
								<input type="text" class="form-control btn-light outline text-center col-3">
								<h5 class="ml-1">kg</h5>
							</div>
						</div>
						<%-- 현재 체중 --%>
						
						<%-- 오늘의 식단 --%>
						<span class="text-secondary font-weight-bold col-3 my-3">오늘의 식단</span>	
						<div class="d-flex my-3 justify-content-between">
							<input type="text" class="form-control btn-light outline col-5">
							<input type="text" class="form-control btn-light outline col-3 mr-5">
							<button type="button" class="btn btn-dark ml-1">등록하기</button>
						</div>
						
						<div class="mb-3">
							<div class="d-flex justify-content-between my-1">
								<input type="text" class="form-control btn-light outline col-5 diet">
								<input type="text" class="form-control btn-light outline col-3 mr-5 diet">
								<button type="button" class="btn btn-secondary ml-1">수정하기</button>
							</div>
							
							<div class="d-flex justify-content-between my-1">
								<input type="text" class="form-control btn-light outline col-5 my-1 diet">
								<input type="text" class="form-control btn-light outline col-3 mr-5 my-1 diet">
								<button type="button" class="btn btn-secondary ml-1 my-1">수정하기</button>
							</div>
							
							
						</div>
						<%-- 오늘의 식단 --%>
						
						<button class="btn btn-dark form-control my-3">등록하기</button>
					</div>
					<footer>
						<span></span>
					</footer>
				</div>
				<%-- 정보수정 전체 --%>
	        
	        </div>
	   	</div>
		
	</div>
	
	

</body>
<script>
	$(document).ready(function() {
		// 사이드바
	  	var sideBar = false;
	  	$("#sideBarIcon").on("click", function() {
	  		if(!sideBar) {
	  			$(".sidebar-all").removeClass("d-none");
	  			sideBar = true;
	  		} else {
	  			$(".sidebar-all").addClass("d-none");
				sideBar = false;
			}
	  			
		});
	});

</script>
</html>