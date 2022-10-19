package com.soyaa.exus.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exus")
public class MainController {

	@GetMapping("/view")
	public String exusMainView() {
		return "exus/main";
	}
	
	@GetMapping("/main/view") 
	public String signInMain() {
		return "/exus/sign_main";
	}
	
	
	
}
