package com.soyaa.exus.exercise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exercise")
public class ExerciseController {

	@GetMapping("/record/view")
	public String exerciseRecord() {
		return "exercise/record";
	}
	
	@GetMapping("/plan/view")
	public String exercisePlan() {
		return "exercise/plan";
	}
	
	
}
