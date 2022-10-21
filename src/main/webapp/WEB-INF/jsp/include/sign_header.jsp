<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<header>
			<div class="d-flex">						
				<a href="#" class="text-decoration-none">
					<h1 class="text-white font-weight-bold pt-1 ml-2">Exus</h1>
				</a>
				
				<div class="d-flex align-items-center col-5 ml-3">
					<a href="#" class="mt-1" id="sideBarIcon">
					<i class="bi bi-list text-white h3"></i>
					</a>
					<h5 class="text-secondary font-weight-bold ml-2 mt-3">나의 운동기록</h5>
				</div>	
				
				<div class="d-flex justify-content-end col-6 ml-5">
					<%-- 아이콘 --%>
					<div class="d-flex align-items-center mx-5">
						<a href="#" class="mb-1"><i class="bi bi-house-fill text-white h4 ml-5"></i></a>
						<a href="#"><i class="bi bi-heart-fill text-white h4 ml-3"></i></a>
						<a href="#" class="mb-1"><i class="bi bi-chat-fill text-white h4 ml-3"></i></a>
					</div>
					<%-- 아이콘 --%>
					
					<%-- 닉네임 / 프로필 사진 --%>
					<div class="d-flex align-items-center ml-3">
						<a href="#" class="text-decoration-none">						
							<h5 class="text-white mr-2" id="userNameUpdateBtn">${userName }</h5>
						</a>
						<img src="#" alt="프로필 사진 " width="100" height="50" class="ml-3">
					</div>
				</div>
				
				
			</div>
		</header>
		
		<div class="d-flex justify-content-end">		
			<div class="updateUser d-none justify-content-center align-items-center" id="updateBtn">
				<a href="#" class="text-white font-weight-bold">정보수정</a>
			</div>
		</div>
		
