package com.soyaa.exus.exercise.bo;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.exercise.dao.ExerciseDAO;

@Service
public class ExerciseBO {
	
	@Autowired
	private ExerciseDAO exerciseDAO;
	
	// 운동 계획 등록
	public int addExercise(int userId, String exercise, Integer missionId, Date missionTime, String date) {
		
		int didOrNot = 0;
		
		return exerciseDAO.insertExercise(userId, exercise, missionId, missionTime, date, didOrNot);
	}

}
