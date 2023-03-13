<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Create Post</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="/static/css/header.css" type="text/css">
        <link rel="stylesheet" href="/static/css/sidebar.css" type="text/css">
    	<link rel="stylesheet" href="/static/css/post/create.css" type="text/css">
    </head>

    <body>
        <div id="wrap">
			<c:import url="/WEB-INF/jsp/include/sign_header.jsp" />
            
            <!-- 사이드 바 -->
            <div class="d-flex">
                <c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
            <!-- 사이드 바 -->

	            <div class="container post-create">
	                <div class="my-5 d-flex justify-content-center align-items-center">
	                    <h1 class="text-secondary">create my story</h1>    
	                </div>
	                <div class="d-flex justify-content-end">
	                    <button type="button" class="btn btn-secondary col-1 mt-2" id="uploadBtn">작성</button>
	                </div>
	
	              	<textarea cols="150" rows="15" maxlength="500" id="textBox" class="form-control btn-light outline introduce-font mt-2" placeholder="내용을 입력해주세요."></textarea>
					<div class="textLengthWrap d-flex mt-1 justify-content-end">
	    				<small class="textCount text-secondary">0자</small>
	    				<small class="textTotal text-secondary">/500자</small>
	  				</div>		
	
	                <%-- 이미지 변경 또는 생성 --%>
					<div class="add-image d-flex justify-content-center align-items-center mt-1">
						<a href="#" class="font-weight-bold text-white text-decoration-none" id="imageInputBtn">이미지 변경 또는 생성</a>
						<input type="file" class="d-none" id="fileInput">
					</div>
					<%-- 이미지 변경 또는 생성 --%>
	
	
	            </div>
			</div>
        </div>
    </body>
	<script>
		$(document).ready(function() {
			
			$("#uploadBtn").on("click", function() {
				
				let content = $("#textBox").val();
				
				if($("#fileInput")[0].files.length == 0) {
					alert("이미지를 선택해주세요.");
					return;
				}
				
				let formData = new FormData();
				formData.append("content", content);
				formData.append("file", $("#fileInput")[0].files[0]);
				
				$.ajax({
					type:"post"
					, url:"/post/create"
					, data:formData
					, enctype:"multipart/form-data"
					, processData:false
					, contentType:false
					
					, success:function(data) {
						if(data.result == "success") {
							location.href = "/post/timeline/view";
						} else {
							alert("업로드 실패");
						}
					}
					, error:function() {
						alert("업로드 에러");
					}
				});
				
			});
			
			// 이미지 추가
			$("#imageInputBtn").on("click", function() {
				$("#fileInput").click();
			});
			
			$("#textBox").on("input", function (e) {
				let content = $(this).val();
			    
			    // 글자수 제한
			    if (content.length > 500) {
			    	// 100자 부터는 타이핑 되지 않도록
			        $(this).val($(this).val().substring(0, 500));
			    	content = $(this).val();
			        // 100자 넘으면 알림창 뜨도록
			        alert("글자수는 500자까지 입력 가능합니다.");
			    };
			    
			    // 글자수 세기
			    if (content.length == 0 || content == "") {
			    	$(".textCount").text("0자");
			    } else {
			    	$(".textCount").text(content.length + "자");
			    }
			    
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