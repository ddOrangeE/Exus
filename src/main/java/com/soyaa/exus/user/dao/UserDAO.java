package com.soyaa.exus.user.dao;

import org.apache.ibatis.annotations.Param;

public interface UserDAO {
	
	// 회원가입
	public int insertUser(
			@Param("name") String name
			, @Param("userName") String userName
			, @Param("phoneNumber") String phoneNumber
			, @Param("email") String email
			, @Param("password") String password
			, @Param("address") String address
			, @Param("sex") String sex
			, @Param("height") double height
			, @Param("weight") double weight);

}
