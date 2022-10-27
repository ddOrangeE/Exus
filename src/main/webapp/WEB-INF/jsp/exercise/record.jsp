<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>님의 운동기록</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/static/css/header.css" type="text/css">
    <link rel="stylesheet" href="/static/css/sign_main.css" type="text/css">
    <link rel="stylesheet" href="/static/css/record.css" type="text/css">
    <link rel="stylesheet" href="/static/css/sidebar.css" type="text/css">
    
    <link href='/static/fullcalendar-5.11.3/lib/main.css' rel='stylesheet' />
  	<script src='/static/fullcalendar-5.11.3/lib/main.js'></script>
	<script src="/static/fullcalendar-5.11.3/lib/locales-all.js"></script>
	
	

</head>
<body>
    <div id="wrap">
		<c:import url="/WEB-INF/jsp/include/sign_header.jsp" />
		
		<div class="d-flex">
			<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
	
	        <div class="container">
	            <div class="mt-5">
	                <!-- 캘린더 -->
	                <div class="category-name">
	                    <h2 class="font-weight-bold pt-1 ml-2">캘린더</h2>        
	                </div>
	                <div class="mt-5">
	                    <div class="d-flex">
	                        <div class="calender mt-3" id="calendar">
								
	                        </div>
	
	                        <div class="calender-detail mt-3 ml-5">
	                        	
	                        	<div class="col-12 mt-2">	                        	
		                        	<h4 class="text-secondary">9/12</h4>
		                        	
		                        	<span class="font-weight-bold">총 운동량</span>
		                        	<div class="exercise-detail my-1">
		                        		<span class="ml-1">05:11:35</span>
		                        	</div>
		                        	
		                        	<span class="font-weight-bold">체중</span>
		                        	<div class="exercise-detail my-1">
		                        		<span class="ml-1">54kg</span>
		                        	</div>
		                        	
		                        	<span class="font-weight-bold">목표체중 까지</span>
		                        	<div class="exercise-detail my-1">
		                        		<span class="ml-1">3.4kg</span>
		                        	</div>
		                        	
		                        	<span class="font-weight-bold">오늘의 계획</span>
		                        	<div class="exercise-detail my-1">
		                        		<span class="ml-1">달리기 30분</span>
		                        	</div>
		                        	<div class="exercise-detail my-1">
		                        		<span class="ml-1">필라테스 수업1시간 듣기</span>
		                        	</div>
		                        
	                        	</div>
	                        </div>
	                    </div>
	                    <div class="d-flex justify-content-end mr-5 mt-2">
	                        <button type="button" class="btn btn-secondary mr-3">수정</button>
	                    </div>
	
	
	                </div>
	            </div>
	        </div>
		</div>

</div>




</body>
<script>

	$(document).ready(function() {
		
	    // 캘린더	    
	    var calendarEl = document.getElementById('calendar');
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      initialView: 'dayGridMonth',

	      headerToolbar: {
	            left: 'prev,next',
	            center: 'title',
	            right: 'today'
	        },
//	        locale: "ko", // 한국어 형식
	        timeZone: 'Asia/Seoul',
	        titleFormat: function (date) {
	            year = date.date.year;
	            month = date.date.month + 1;

	            return year + "년 " + month + "월";
	         },
	         selectable: true 

	    });
	    calendar.render();
		
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