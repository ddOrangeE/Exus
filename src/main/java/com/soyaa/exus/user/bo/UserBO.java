package com.soyaa.exus.user.bo;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.common.EncryptUtils;
import com.soyaa.exus.user.dao.UserDAO;
import com.soyaa.exus.user.model.User;

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
			, Double height
			, Double weight) {
		
		// 비밀번호 암호화
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(name, userName, phoneNumber, email, encryptPassword, address, sex, height, weight);
		
	}
	
	// 아이디 중복 확인 
	public boolean isDuplicate(String userName) {
		int count = userDAO.selectCountuserName(userName);
		return count != 0;
	}
	
	// 로그인 기능
	public User getUser(String id, String password) {
		String userName = null;
		String email = null;
		
		Pattern p = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(id);
		
		if(m.find()) {
			email = id;
		} else {
			userName = id;
		}
		
		String encryptPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUser(userName, email, encryptPassword);
	}
	
}
