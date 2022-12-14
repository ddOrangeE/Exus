package com.soyaa.exus.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soyaa.exus.main.bo.MainBO;

@Controller
@RequestMapping("/exus")
public class MainController {

	@Autowired
	private MainBO mainBO;
	
	@GetMapping("/view")
	public String exusMainView() {
		return "exus/main";
	}
	
	@GetMapping("/main/view") 
	public String signInMain(Model model) {
		
		Map<String, String> weatherResult = mainBO.selectWeather();
		model.addAttribute("weatherResult", weatherResult);
		
		return "/exus/sign_main";
	}
	
	
	
}
