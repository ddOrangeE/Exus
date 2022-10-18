package com.soyaa.exus.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	// 회원가입 화면
	@GetMapping("/signup/view")
	public String signupView() {
		return "user/signup";
	}
	
	// 로그인 화면
	@GetMapping("/signin/view")
	public String signunView() {
		return "user/signin";
	}
	
	// 정보수정 화면
	@GetMapping("/revise/view")
	public String reviseView() {
		return "user/revise";
	}
}
