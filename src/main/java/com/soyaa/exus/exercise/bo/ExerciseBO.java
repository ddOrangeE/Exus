package com.soyaa.exus.exercise.bo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.exercise.dao.ExerciseDAO;
import com.soyaa.exus.exercise.model.ExerciseRecord;

@Service
public class ExerciseBO {
	
	@Autowired
	private ExerciseDAO exerciseDAO;
	
	// 운동 계획 등록
	public int addExercise(int userId, String exercise, Integer missionId, Date missionTime, String date) {
		
		int didOrNot = 0;
		
		return exerciseDAO.insertExercise(userId, exercise, missionId, missionTime, date, didOrNot);
	}
	
	// 체중 기록
	public int weightRecord(int userid, double weight, String date) {
		return exerciseDAO.insertWeight(userid, weight, date);
	}
	
	// 식단 등록
	public int dietRecord(int userId, String diet, Double calorie, String date) {
		return exerciseDAO.insertDiet(userId, diet, calorie, date);
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
	
}
