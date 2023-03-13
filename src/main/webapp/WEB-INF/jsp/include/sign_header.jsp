<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<header>
			<div class="d-flex">						
				<a href="#" class="text-decoration-none">
					<h1 class="text-white font-weight-bold pt-1 pl-2">Exus</h1>
				</a>
				
				<div class="d-flex align-items-center col-3 pl-3">
					<a href="#" class="mt-1" id="sideBarIcon">
					<i class="bi bi-list text-white h3"></i>
					</a>
					<h5 class="text-secondary font-weight-bold pl-2 mt-3">나의 운동기록</h5>
				</div>	
				
				<div class="d-flex justify-content-end col-8 pl-5">
					<%-- 아이콘 --%>
					<div class="d-flex align-items-center justify-content-end px-5 col-9">
						<a href="#" class="mb-1"><i class="bi bi-house-fill text-white h4 pl-5"></i></a>
						<a href="#"><i class="bi bi-heart-fill text-white h4 pl-3"></i></a>
						<a href="#" class="mb-1"><i class="bi bi-chat-fill text-white h4 pl-3"></i></a>
					</div>
					<%-- 아이콘 --%>
					
					<%-- 닉네임 / 프로필 사진 --%>
					<div class="d-flex align-items-center justify-content-end col-3">
						
						<div class="px-3 d-flex align-items-center">						
							<h5 class="text-white pr-4">${userName }</h5>
							<a href="#">
								<img src="#" alt="프로필 사진 " width="100" height="50" id="userNameUpdateBtn">													
							</a>
						</div>
					</div>
				</div>
				
				
			</div>
		</header>
		
		
		<div  id="updateBtn" class="align-items-end flex-column px-3 d-none">
			<div>		
				<div class="user-or-team d-flex justify-content-center align-items-center">
					<a href="#" class="text-dark font-weight-bold text-decoration-none mr-2">${userName }</a>
				</div>
			</div>
			
			<!-- captin 일때 트로피 -->
			<div>		
				<div class="user-or-team d-flex justify-content-center align-items-center">
					<a href="#" class="text-dark font-weight-bold text-decoration-none">${userName } <i class="bi bi-trophy"></i></a>
				</div>
			</div>
						
			<div>		
				<div class="user-or-team d-flex justify-content-center align-items-center">
					<a href="#" class="text-dark font-weight-bold text-decoration-none">정보수정</a>
				</div>
			</div>
		</div>
		
