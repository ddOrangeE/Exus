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
		
		int count = exerciseBO.addExercise(userId, exercise, missionId, missionTime, date);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	// 운동계획 수정
	@PostMapping("/update")
	public Map<String, String> updateExercisePlan(
			@RequestParam("exerciseId") int exerciseId
			, @RequestParam("exercise") String exercise
			, @RequestParam(value="missionId", required=false) Integer missionId
			, @RequestParam(value="missionTime", required=false) Date missionTime
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.updateExercisePlan(userId, exerciseId, exercise, missionId, missionTime);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 운동계획 삭제
	@GetMapping("/delete")
	public Map<String, String> exerciseDelete(
			@RequestParam("exerciseId") int exerciseId
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.deleteExercise(userId, exerciseId);
		
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
	
	// 체중 수정
	@GetMapping("/weight_record/update")
	public Map<String, String> weightRecordUpdate(
			@RequestParam("weight") double weight
			, @RequestParam("weightId") int weightId
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.updateWeightRecord(userId, weight, weightId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	// 체중 삭제
	@GetMapping("/weight_record/delete")
	public Map<String, String> weightRecordDelete(
			@RequestParam("weightId") int weightId
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.deleteWeightRecord(userId, weightId);
		
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
	
	// 식단 수정
	@GetMapping("/diet_record/update")
	public Map<String, String> dietRecordUpdate(
			@RequestParam("dietId") int dietId
			, @RequestParam("diet") String diet
			, @RequestParam(value="calorie", required=false) Double calorie
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.dietRecordUpdate(userId, dietId, diet, calorie);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	
	}
	
	// 식단 삭제
	@GetMapping("/diet_record/delete")
	public Map<String, String> dietRecordDelete(
			@RequestParam("dietId") int dietId
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = exerciseBO.dietRecordDelete(userId, dietId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	
	

}
