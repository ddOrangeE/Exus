package com.soyaa.exus.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostDAO {
	
	// 게시물 작성
	public int insertPost(
			@Param("userId") int userId
			, @Param("missionId") int missionId
			, @Param("content") String content
			, @Param("imagePath") String imagePath);

}
