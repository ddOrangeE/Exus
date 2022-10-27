package com.soyaa.exus.exercisse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ExerciseController {

	@GetMapping("/exercise/record/view")
	public String exerciseRecord() {
		return "exercise/record";
	}
	
}
