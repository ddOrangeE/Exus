package com.soyaa.exus.exercise;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	// 체중 등록
	@GetMapping("/weight_record")
	public Map<String, String> weightRecord(
			@RequestParam("weight") double weight
			, @RequestParam("date") String date
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.weightRecord(userId, weight, date);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 식단 등록
	@GetMapping("/diet_record")
	public Map<String, String> dietRecord(
			@RequestParam("diet") String diet
			, @RequestParam(value="calorie", required=false) Double calorie
			, @RequestParam("date") String date
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.dietRecord(userId, diet, calorie, date);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	

}
