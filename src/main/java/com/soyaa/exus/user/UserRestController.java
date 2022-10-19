package com.soyaa.exus.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.soyaa.exus.user.bo.UserBO;

@Controller
@RequestMapping("/user")
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	// 회원가입 기능
	@PostMapping("/signup")
	public Map<String, String> signup(
			@RequestParam("name") String name
			, @RequestParam("userName") String userName
			, @RequestParam("phoneNumber") String phoneNumber
			, @RequestParam("email") String email
			, @RequestParam("password") String password
			, @RequestParam("address") String address
			, @RequestParam("sex") String sex
			, @RequestParam("height") Double height
			, @RequestParam("weight") Double weight ) {
		
		int count = userBO.addUser(name, userName, phoneNumber, email, password, address, sex, height, weight);
		
		Map<String, String> result = new HashMap<>();
		
//		response(json)	
//		성공시	{"result":"success"}
//		실패시	{"result":"fail"}
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}

		return result;
	}
	

}
