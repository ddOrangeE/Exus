package com.soyaa.exus.team;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.soyaa.exus.team.bo.TeamBO;

@RestController
@RequestMapping("/team")
public class TeamRestController {

	@Autowired
	private TeamBO teamBO;
	
	// 팀 생성 기능
	@PostMapping("/create")
	public Map<String, String> createTeam(
			@RequestParam("name") String name
			, @RequestParam("introduce") String introduce
			, @RequestParam("personnel") Integer personnel
			, @RequestParam("file") MultipartFile file
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = teamBO.addTeam(userId, name, introduce, personnel, file);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
		
	
}
