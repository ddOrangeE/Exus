package com.soyaa.exus.exercise;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.soyaa.exus.exercise.bo.ExerciseBO;
import com.soyaa.exus.exercise.model.ExerciseRecord;

@Controller
@RequestMapping("/exercise")
public class ExerciseController {

	@Autowired
	private ExerciseBO exerciseBO;
	
	@GetMapping("/record/view")
	public String exerciseRecord() {
		
		
		return "exercise/record";
	}
	
	@GetMapping("/plan/view")
	public String exercisePlan(@RequestParam(value="date", required=false) String date
			, HttpServletRequest request
			, Model model) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<ExerciseRecord> exerciseRecordList = exerciseBO.getExerciseList(userId, date);
		
		model.addAttribute("exerciseRecordList", exerciseRecordList);
		
		return "exercise/plan";
	}
	
	
}
