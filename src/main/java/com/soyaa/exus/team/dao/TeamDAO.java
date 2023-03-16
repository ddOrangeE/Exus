package com.soyaa.exus.team.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TeamDAO {

	// 팀 생성
	public int insertTeam (
			@Param("userId") int userId
			, @Param("name") String name
			, @Param("introduce") String introduce
			, @Param("personnel") int personnel
			, @Param("imagePath") String imagePath);
}
