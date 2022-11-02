package com.soyaa.exus.exercise;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.soyaa.exus.exercise.bo.ExerciseBO;

@RestController
@RequestMapping("/exercise")
public class ExerciseRestController {
	
	@Autowired
	private ExerciseBO exerciseBO;
	
	// 운동 계획 등록 (미션x)
	@PostMapping("/create")
	public Map<String, String> planExercise(
			@RequestParam("exercise") String exercise
			, @RequestParam(value="missionId", required=false) Integer missionId
			, @RequestParam(value="missionTime", required=false) Date missionTime
			, @RequestParam("date") String date
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.addExercise(userId, exercise, userId, missionTime, date);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	

}
