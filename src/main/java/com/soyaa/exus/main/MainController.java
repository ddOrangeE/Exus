package com.soyaa.exus.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exus")
public class MainController {

	@GetMapping("/main")
	public String exusMainView() {
		return "exus/main";
	}
	
}
