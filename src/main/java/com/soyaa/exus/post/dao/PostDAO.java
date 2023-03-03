package com.soyaa.exus.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostDAO {
	
	// 게시물 작성
	public int insertPost(
			@Param("authorId") int authorId
			, @Param("keyword") String keyword
			, @Param("content") String content
			, @Param("imagePath") String imagePath);

}
