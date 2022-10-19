package com.soyaa.exus.user.dao;

import org.apache.ibatis.annotations.Param;

import com.soyaa.exus.user.model.User;

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
			, @Param("height") Double height
			, @Param("weight") Double weight);

	// 아이디 중복확인
	public int selectCountuserName(@Param("userName") String userName);
	
	// 로그인
	public User selectUser(
			@Param("userName") String userName
			, @Param("email") String email
			, @Param("password") String password);
}
