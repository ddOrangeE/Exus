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
	
	
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<link rel="stylesheet" href="/static/css/header.css" type="text/css">
	<link rel="stylesheet" href="/static/css/sidebar.css" type="text/css">
	<link rel="stylesheet" href="/static/css/plan.css" type="text/css">
	<link rel="stylesheet" href="/static/css/datepicker.css" type="text/css">

</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/sign_header.jsp" />
		
		<div class="d-flex">
			<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
	
	        <div class="container plan">
				<%-- 운동 전체 --%>
				<div class="container-fluid row justify-content-center align-items-center mt-4">
					<div class="sign-up">
						
						<%-- 날짜 선택 --%>
						<div class="d-flex my-3">				
							<span class="text-secondary font-weight-bold col-3 mt-1">날짜 선택</span>
							<div class="d-flex col-9 ml-2 justify-content-center align-items-center">
								<input type="text" class="form-control btn-light outline text-center datepicker inp" value="${date }" readonly>
							</div>
						</div>
						<%-- 날짜 선택 --%>
		
						<%-- 운동계획 --%>			
						<span class="text-secondary font-weight-bold col-3 my-3">운동계획</span>	
						<div class="d-flex my-3">
							<input type="text" placeholder="운동계획을 등록해주세요." class="form-control btn-light outline" id="exercisePlan">
							<button type="button" class="btn btn-dark ml-1" id="exercisePlanBtn">등록하기</button>
						</div>
						
						<div class="mb-3">
							<c:forEach var="exerciseRecord" items="${exerciseRecordList }">
							<div class="d-flex">
								<input type="text" class="form-control btn-light outline my-1 exercise-plan" id="exercisePlan${exerciseRecord.id }" value="${exerciseRecord.exercise }">
								<button type="button" class="btn btn-sm ml-1 my-1 update-btn exerciseUpdateBtn" data-exercise-id="${exerciseRecord.id }">수정</button>
								<button type="button" class="btn btn-sm ml-1 my-1 delete-btn">삭제</button>								
							</div>
							</c:forEach>
						</div>
						<%-- 운동계획 --%>
						
						<%-- 현재 체중 --%>
						<div class="d-flex my-3 weightInfo">				
							<span class="text-secondary font-weight-bold col-3 mt-1">현재 체중</span>
							<div class="d-flex col-9 ml-2 justify-content-start align-items-center">
								<input type="text" class="form-control btn-light outline text-center col-3" id="weight" value="${weight.weight }">
								<h5 class="ml-1">kg</h5>
								
								<div class="d-flex justify-content-end col-9">
									<c:choose>
										<c:when test="${empty weight.weight }">
											<button type="button" class="btn btn-dark mr-1" id="weightAddBtn">등록</button>
										</c:when>
										
										<c:otherwise>
											<button type="button" class="btn btn-sm update-btn">수정</button>
											<button type="button" class="btn btn-sm mx-1 delete-btn">삭제</button>
										</c:otherwise>
									</c:choose>								
								</div>
								
							</div>
						</div>
						<%-- 현재 체중 --%>
						
						<%-- 오늘의 식단 --%>
						<span class="text-secondary font-weight-bold col-3 my-3">오늘의 식단</span>	
						<div class="d-flex my-3 justify-content-between">
							<input type="text" class="form-control btn-light outline col-5" id="dietInput">
							<input type="text" class="form-control btn-light outline col-3 mr-5" id="calorieInput">
							<button type="button" class="btn btn-dark ml-1" id="dietRecordBtn">등록하기</button>
						</div>
						
						<div class="mb-3">
							
							<c:forEach var="dietList" items="${dietList }">
							<div class="d-flex justify-content-between my-1">
								<input type="text" class="form-control btn-light outline my-1 diet" value="${dietList.diet } ${dietList.calorie }kcal">
								<button type="button" class="btn btn-sm ml-1 my-1 update-btn">수정</button>
								<button type="button" class="btn btn-sm ml-1 my-1 delete-btn">삭제</button>
							</div>
							</c:forEach>

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
		
		var weightInfo = false;
		
		$(".datepicker").on("change", function() {
			
			let date = $(".datepicker").val();
			
			if(date == "") {
				alert("날짜를 선택해주세요.");
				return;
			}
			
			location.href="/exercise/plan/view?date=" + date;
			
		});
		
		
		// 식단 등록
		$("#dietRecordBtn").on("click", function() {
			
			let diet = $("#dietInput").val();
			let calorie = $("#calorieInput").val();
			let date = $(".datepicker").val();
			
			if(diet == "") {
				alert("식단을 입력해주세요.");
				return;
			}
			
			if(calorie == "") {
				alert("칼로리 없이 등록하시겠습니까?");
			}
			
			$.ajax({
				type:"get"
				, url:"/exercise/diet_record"
				, data:{"diet":diet, "calorie":calorie, "date":date}
				, success:function(data) {
					if(data.result == "success") {
						location.reload();
					} else {
						alert("식단 등록 실패");
					}
				}
				, error:function() {
					alert("식단 기록 에러");
				}
			});
		});
		
		// datepiker
		$(".datepicker").datepicker({
		      closeText: "닫기",
		      prevText: "이전달",
		      nextText: "다음달",
		      currentText: "오늘",
		      monthNames: ["1월", "2월", "3월", "4월", "5월", "6월",
		        "7월", "8월", "9월", "10월", "11월", "12월"
		      ],
		      monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월",
		        "7월", "8월", "9월", "10월", "11월", "12월"
		      ],
		      dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
		      dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
		      dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
		      weekHeader: "주",
		      dateFormat: "yy-mm-dd", // 날짜형태 예)yy년 m월 d일
		      firstDay: 0,
		      isRTL: false,
		      showMonthAfterYear: true,
		      yearSuffix: "년",
		      //minDate: 0
		    });
		    
		    //$('.datepicker').datepicker('setDate', 'today');
	
		// 체중등록
		$("#weightAddBtn").on("click", function() {
			
			let weight = $("#weight").val();
			
			let planDate = $(".datepicker").val();
			
			let today = $.datepicker.formatDate($.datepicker.ATOM, new Date());    
			
			if(planDate > today) {
				alert("체중을 등록할 수 없는 일자입니다.");
				return;
			}
			
			if(weight == "") {
				alert("체중을 입력해주세요.");
				return;
			}
			
			if(!$.isNumeric(weight)) {
				alert("체중을 확인해주세요.");
				return;
			}
			
			
			$.ajax({
				type:"get"
				, url:"/exercise/weight_record"
				, data:{"weight":weight, "date":planDate}
				, success:function(data) {
					if(data.result == "success") {
						location.reload();
					} else {
						alert("체중 등록 실패");
					}
				}
				, error:function() {
					alert("체중 등록 에러");
				}
				
			});
	  
		});
		
		
		// 운동기록 수정
		$(".exerciseUpdateBtn").on("click", function() {
			
			let date = $(".datepicker").val();
			
			let exerciseId = $(this).data("exercise-id");
			
			let exercisePlan = $("#exercisePlan" + exerciseId).val();
			
			
			if(exercisePlan == "") {
				alert("수정할 내용을 입력해주세요.");
				return;
			}
			
			$.ajax({
				type:"post"
				, url:"/exercise/update"
				, data:{"exercise":exercisePlan, "exerciseId":exerciseId}
			
				, success:function(data) {
					if(data.result == "success") {
						location.href="/exercise/plan/view?date=" + date;
					} else {
						alert("운동계획 수정 실패");
					}
				}
				, error:function() {
					alert("운동계획 수정 에러");
				}
			});
			
			
			
			
		});
		
		
		
		// 운동기록
		$("#exercisePlanBtn").on("click", function() {
			
			let exercisePlan = $("#exercisePlan").val();
			
			let planDate = $(".datepicker").val();
			
			if(exercisePlan == "") {
				alert("운동 계획을 입력해주세요.");
				return;
			}
			
			$.ajax({
				type:"post"
				, url:"/exercise/create"
				, data:{"exercise":exercisePlan, "date":planDate}
				, success:function(data) {
					if(data.result == "success") {
						location.reload();
					} else {
						alert("운동계획 등록 실패");
					}
				}
				, error:function() {
					alert("운동계획 등록 에러");
				}
				
			});
			
		});
		
		
		
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