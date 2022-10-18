package com.soyaa.exus.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.user.dao.UserDAO;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	// 회원가입
	public int addUser(
			String name
			, String userName
			, String phoneNumber
			, String email
			, String password
			, String address
			, String sex
			, double height
			, double weight) {
		
		return userDAO.insertUser(name, userName, phoneNumber, email, password, address, sex, height, weight);
		
	}
	
}
