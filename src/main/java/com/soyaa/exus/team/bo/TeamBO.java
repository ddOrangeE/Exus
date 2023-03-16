package com.soyaa.exus.team.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.soyaa.exus.common.FileManagerService;
import com.soyaa.exus.team.dao.TeamDAO;

@Service
public class TeamBO {

	@Autowired
	private TeamDAO teamDAO;
	
	// 팀 생성
	public int addTeam(
			int userId, String name, String introduce, int personnel, MultipartFile file) {
		
		String imagePath = FileManagerService.saveFile(userId, file);
		
		if(imagePath == null) {
			return 0;
		}
		
		return teamDAO.insertTeam(userId, name, introduce, personnel, imagePath);
		
	}
}
