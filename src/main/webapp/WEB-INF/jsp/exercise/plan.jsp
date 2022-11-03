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
								<input type="text" class="form-control btn-light outline text-center datepicker" readonly>
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
		
		$.datepicker.setDefaults({
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
		      yearSuffix: "년"
		    })

		    $(".datepicker").datepicker({
		      minDate: 0
		    })
		    
		    $('.datepicker').datepicker('setDate', 'today');
		
		/*
		$("#datepicker").datepicker({
			dateFormat: 'yy-mm-dd' //달력 날짜 형태
			,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
		    ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
		    ,changeYear: true //option값 년 선택 가능
		    ,changeMonth: true //option값  월 선택 가능                
		    //,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
		    //,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
		    //,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
		    //,buttonText: "선택" //버튼 호버 텍스트              
		    ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
		    ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
		    ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
		    ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
		    ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
		    ,minDate: "-0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
			
		});
		
		$('#datepicker').datepicker('setDate', 'today');
		
		
	       $("#datepicker").datepicker({
	           dateFormat: 'yy-mm-dd' //달력 날짜 형태
	           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
	           ,changeYear: true //option값 년 선택 가능
	           ,changeMonth: true //option값  월 선택 가능                
	           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
	           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
	           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
	           ,buttonText: "선택" //버튼 호버 텍스트              
	           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
	           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
	           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
	           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
	           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
	           ,minDate: "-0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	       });                    
	       
		
		$("#planDate").on("click", function() {
			
			$('.datepicker').datepicker();
			
		});
		*/
	  
		// 운동 등록
		$("#exercisePlanBtn").on("click", function() {
			
			let exercisePlan = $("#exercisePlan").val();
			
			let planDate = $("#planDate").val();
			
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