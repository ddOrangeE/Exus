<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<div class="wrapper sidebar-all d-none">
		    <!-- Sidebar -->
		    <nav id="sidebar">
		        <ul class="list-unstyled components pt-3">
		            <li class="active mb-3">
		                <a href="#exerciseMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle font-weight-bold text-dark">나의 운동기록</a>
		                <ul class="collapse list-unstyled" id="exerciseMenu">
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">캘린더</a>
		                    </li>
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">오늘의 계획</a>
		                    </li>
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">내 체중변화</a>
		                    </li>
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">내 운동계획 등록하기</a>
		                    </li>
		                </ul>
		            </li>
		            
		            <li class="active my-3">
		                <a href="#comunityMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle font-weight-bold text-dark">커뮤니티</a>
		                <ul class="collapse list-unstyled" id="comunityMenu">
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">우리 동네 랭킹</a>
		                    </li>
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">우리 동네 이야기</a>
		                    </li>
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">팀 가입</a>
		                    </li>
		                </ul>
		            </li>
		            
		            <li class="active my-3">
		                <a href="#event" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle font-weight-bold text-dark">이벤트</a>
		                <ul class="collapse list-unstyled" id="event">
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">대회 안내</a>
		                    </li>
		                    <li class="my-2">
		                        <a href="#" class="font-weight-bold small-menu">오늘의 미션</a>
		                    </li>
		                </ul>
		            </li>
		        </ul>
		    </nav>
		</div>
		
		<script>
			$(document).ready(function() {
				
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