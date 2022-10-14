package com.soyaa.exus.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	// 회원가입 화면
	@GetMapping("/user/signup/view")
	public String signupView() {
		return "user/signup";
	}
	
	// 로그인 화면
	@GetMapping("/user/signin/view")
	public String signunView() {
		return "user/signin";
	}
}
