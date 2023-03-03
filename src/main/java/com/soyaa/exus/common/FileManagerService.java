package com.soyaa.exus.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {

	public static final String FILE_UPLOAD_PATH = "D:\\99김소연\\spring\\exus\\upload";
	
	private static Logger logger = LoggerFactory.getLogger(FileManagerService.class);

	// 파일을 저장할 수 있는 메소드
	public static String saveFile(int authorId, String keyword, MultipartFile file) {
		
		// authorId_unixtime
		// 2_29192120
		String directoryName = "/" + authorId + keyword + "_" + System.currentTimeMillis() + "/";
		
		// 디렉토리 생성
		String filePath = FILE_UPLOAD_PATH + directoryName;
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			// 디렉토리 생성 실패 로그 추가
			logger.error("FileManagerService - saveFile : file 디렉토리 생성 에러" + filePath);
			return null;
		}
		
		try {
			byte[] bytes = file.getBytes();
			
			String fileFullPath = filePath + file.getOriginalFilename();
			
			Path path = Paths.get(fileFullPath);
			
			Files.write(path, bytes);
			
		} catch (IOException e) {
			e.printStackTrace();
			
			// 파일 저장 실패 로그
			logger.error("FileManagerService - saveFile : 파일 저장 실패");
			return null;
		}
		
		return "/images" + directoryName + file.getOriginalFilename();
	}
	
	
}
