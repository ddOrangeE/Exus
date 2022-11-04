package com.soyaa.exus.exercise.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.soyaa.exus.exercise.model.ExerciseRecord;

@Repository
public interface ExerciseDAO {

	// 운동계획 등록
	public int insertExercise(
			@Param("userId") int userId
			, @Param("exercise") String exercise
			, @Param("missionId") Integer missionId
			, @Param("missionTime") Date missionTime
			, @Param("date") String date
			, @Param("didOrNot") int didOrNot);
	
	// 체중 기록
	public int insertWeight(
			@Param("userId") int userId
			, @Param("weight") double weight
			, @Param("date") String date);
	
	// 식단 기록
	public int insertDiet(
			@Param("userId") int userId
			, @Param("diet") String diet
			, @Param("calorie") Double calorie
			, @Param("date") String date);
	
	// 운동계획 조회
	public List<ExerciseRecord> selectExercise(
			@Param("userId") int userId
			, @Param("date") String date);
}
