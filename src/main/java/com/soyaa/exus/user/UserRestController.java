package com.soyaa.exus.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.soyaa.exus.user.bo.UserBO;
import com.soyaa.exus.user.model.User;

@RestController
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
			, @RequestParam(value="height", required=false) Double height
			, @RequestParam(value="weight", required=false) Double weight ) {
		
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
	
	// 아이디 중복 확인 기능
	@GetMapping("/duplicate_id")
	public Map<String, Boolean> isDuplicate(@RequestParam("userName") String userName) {
		
		boolean isDuplicate = userBO.isDuplicate(userName);

		Map<String, Boolean> result  = new HashMap<>();
		
		// 중복시 {"id_duplicate":true}
		// 중복이 아닌 경우 {"id_duplicate:false}
		
		if(isDuplicate) {
			result.put("id_duplicate", true);
		} else {
			result.put("id_duplicate", false);
		}
		
		return result;
	}
	
	// 로그인 기능
	@PostMapping("/signin")
	public Map<String, String> signin(
			@RequestParam("id") String id
			, @RequestParam("password") String password
			, HttpServletRequest request) {
		
		User user = userBO.getUser(id, password);
		
		Map<String, String> result = new HashMap<>();
		
		if(user != null) {
			result.put("result", "success");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("userName", user.getUserName());
			
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	

}
