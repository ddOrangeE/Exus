package com.soyaa.exus.exercise.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

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
}
