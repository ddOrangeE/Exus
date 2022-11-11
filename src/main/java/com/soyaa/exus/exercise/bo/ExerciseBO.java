package com.soyaa.exus.exercise.bo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.exercise.dao.ExerciseDAO;
import com.soyaa.exus.exercise.model.Diet;
import com.soyaa.exus.exercise.model.ExerciseRecord;
import com.soyaa.exus.exercise.model.Weight;

@Service
public class ExerciseBO {
	
	@Autowired
	private ExerciseDAO exerciseDAO;
	
	// 운동 계획 등록
	public int addExercise(int userId, String exercise, Integer missionId, Date missionTime, String date) {
		
		int didOrNot = 0;
		
		return exerciseDAO.insertExercise(userId, exercise, missionId, missionTime, date, didOrNot);
	}
	
	// 운동기록 수정
	public int updateExercisePlan(int userId, int exerciseId, String exercise, Integer missionId, Date missionTime) {
		
		return exerciseDAO.updateExercisePlan(exerciseId, exercise, missionId, missionTime);
		
	}
	
	// 운동기록 삭제
	public int deleteExercise(int userId, int exerciseId) {
		return exerciseDAO.deleteExercisePlan(exerciseId);
	}
	
	// 체중 기록
	public int weightRecord(int userid, double weight, String date) {
		return exerciseDAO.insertWeight(userid, weight, date);
	}
	
	// 체중 수정
	public int updateWeightRecord(int userId, double weight, int weightId) {
		
		return exerciseDAO.updateWeight(weight, weightId);
		
	}
	
	
	// 식단 등록
	public int dietRecord(int userId, String diet, Double calorie, String date) {
		return exerciseDAO.insertDiet(userId, diet, calorie, date);
	}

	// 식단 수정
	public int dietRecordUpdate(int userId, int dietId, String diet, Double calorie) {
		return exerciseDAO.updateDiet(dietId, diet, calorie);
	}
	
	// 운동기록 조회
	public List<ExerciseRecord> getExerciseList(int userId, String date) {
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(now);
		
		if(date == null) {
			date = today;
		}
		
		return exerciseDAO.selectExercise(userId, date);
	}
	
	
	// 체중조회
	public Weight getWeight(int userId, String date) {
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(now);
		
		if(date == null) {
			date = today;
		}
		
		return exerciseDAO.selectWeight(userId, date);
		
	}
	
	// 식단조회
	public List<Diet> getDietList(int userId, String date) {
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String today = formatter.format(now);
		
		if(date == null) {
			date = today;
		}
		
		return exerciseDAO.selectDiet(userId, date);
	}
	
}
