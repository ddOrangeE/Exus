package com.soyaa.exus.post.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.soyaa.exus.common.FileManagerService;
import com.soyaa.exus.post.dao.PostDAO;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	// 게시글 정보를 전달받아서 저장
	public int addPost(int userId, String content, MultipartFile file) {
		
		String imagePath = FileManagerService.saveFile(userId, file);
		
		// 임시 미션아이디
		int missionId = 1;
		
		// 파일 업로드가 문제가 있으면, insert 진행하지 않고, 입력이 진행되지 않는다는 return 값 만들어주기
		if(imagePath == null) {
			return 0;
		}
		
		return postDAO.insertPost(userId, missionId, content, imagePath);
	}
	
}
