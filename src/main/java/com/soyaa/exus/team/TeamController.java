package com.soyaa.exus.team;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/team")
public class TeamController {

	// 팀 생성 화면
	@GetMapping("/create/view")
	public String createTeamView() {
		return "team/create_team";
	}
	
	
	
}
