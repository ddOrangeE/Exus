package com.soyaa.exus.exercise.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ExerciseDAO {

	public int insertExercise(
			@Param("userId") int userId
			, @Param("exercise") String exercise
			, @Param("missionId") Integer missionId
			, @Param("missionTime") Date missionTime
			, @Param("date") String date
			, @Param("didOrNot") int didOrNot);
	
}
