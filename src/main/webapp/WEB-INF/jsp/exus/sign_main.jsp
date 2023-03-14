<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${userName }님의 메인</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	     
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/header.css" type="text/css">
	<link rel="stylesheet" href="/static/css/sign_main.css" type="text/css">
	<link rel="stylesheet" href="/static/css/sidebar.css" type="text/css">

</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/sign_header.jsp" />
		
		<div class="d-flex">
			<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
			
			<div class="main">
				<!-- 랭킹 -->
				<div class="d-flex justify-content-center">
					<div class="ranking mt-5">
						
						<div>
							<h4 class="text-secondary mt-2 ml-3 font-weight-bold">Ranking</h4>
						</div>
						
						<div class="d-flex justify-content-between mx-3">				
							<div class="rankingCount"></div>
							<div class="rankingCount"></div>
							<div class="rankingCount"></div>
						</div>
						
						<div class="d-flex justify-content-end mt-1 mr-3">
							<a href="#" class="small">Ranking Heart 보러가기</a>				
						</div>
					
					</div>
				
				</div>
				<!-- 랭킹 -->
				
				<!-- 인기글 / 날씨 -->
				<div class="d-flex justify-content-center mt-2">
					<div class="d-flex justify-content-between section2">
						<div class="popular-contents mr-2">
							<div>
								<h4 class="text-secondary mt-2 ml-3 font-weight-bold">우리 동네 인기글</h4>
							</div>
							
							<div class="d-flex justify-content-between mx-3">
								<div class="contents"></div>
								<div class="contents"></div>
								<div class="contents"></div>
							</div>
							
							<div class="d-flex justify-content-between mx-3 mt-4">
								<div class="contents"></div>
								<div class="contents"></div>
								<div class="contents"></div>
							</div>
						</div>

						<!-- 날씨 -->
						<div class="weather">
							<h5 class="text-secondary mt-2 ml-2">오늘의 우리동네 현재 <span class="text-success font-weight-bold">날씨</span>는?</h5>
							<div class="weather-phrases m-2">
								<h3 class="font-weight-bold">오늘은 건강하게 실내운동 추천^^</h3>
							</div>
							<div class="weather-info m-2">
								
								<!-- 온도 -->
								<div class="pl-3 pb-2 weather-detail-padding1">
									<div class="d-flex">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">온도</small>
										</div>			
										<small class="font-weight-bold ml-5">${weatherResult.TMP }°</small>					
									</div>
									<small class="ml-1 font-weight-bold text-info">어제보다 3.9° 낮아요 ↓</small>
								</div>
								
								<!-- 체감 -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">체감</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">12.8° </small>
								</div>
								
								<!-- 날씨 -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">날씨</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">${weatherResult.SKY }</small>
								</div>
								
								<!-- 강수량  -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">강수량</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">${weatherResult.PCP }</small>
								</div>
								
								
								<!-- 습도 
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">습도</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">${weatherResult.REH }%</small>
								</div> -->

								
								<!-- 바람 -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">바람</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">${weatherResult.WSD }m/s</small>
								</div>
								
								<!-- 미세먼지 -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">미세먼지</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">좋음</small>
								</div>
								
								<!-- 초미세먼지 -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">초미세먼지</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">좋음</small>
								</div>
								
								<!-- 자외선 -->
								<div class="d-flex">
									<div class="pl-3 py-2">
										<div class="weather-detail d-flex justify-content-center align-items-center">
											<small class="font-weight-bold text-white">자외선</small>
										</div>								
									</div>
									<small class="font-weight-bold ml-5 mt-1">보통</small>
								</div>
								
							
							</div>
							
							
						
						</div>
						<!-- 날씨 -->

						
					</div>		
				</div>
				<!-- 인기글 / 날씨 -->
				
				<!-- 운동기록 / 오늘의 미션 -->
				<div class="d-flex justify-content-center mt-2">
					<div class="d-flex justify-content-between section2">
						<div class="exercise-record mr-2 mb-5"></div>
						<div class="mission"></div>			
					</div>
				</div>
				<!-- 운동기록 / 오늘의 미션 -->
				
		</div>
		</div>
		


		
	</div>	


</body>

<script>

	$(document).ready(function() {
		
		// 사이드바
		//var sideBar = false;
		//$("#sideBarIcon").on("click", function() {
			//if(!sideBar) {
				//$(".sidebar-all").removeClass("d-none");
				//sideBar = true;
			//} else {
				//$(".sidebar-all").addClass("d-none");
				//sideBar = false;
			//}
			
		//});
		
		
		var updateBtnResult = false;
		
		$("#userNameUpdateBtn").on("click", function() {
			
			if(!updateBtnResult) {
				updateBtnResult = true;
				$("#updateBtn").removeClass("d-none");	
				$("#updateBtn").addClass("d-flex");
			} else {
				updateBtnResult = false;
				$("#updateBtn").addClass("d-none");
				$("#updateBtn").removeClass("d-flex");
			}
			
			
		});
		
	});

</script>
</html>