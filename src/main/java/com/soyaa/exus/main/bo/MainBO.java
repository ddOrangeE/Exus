package com.soyaa.exus.main.bo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.main.dao.WeatherInfoDAO;

@Service
public class MainBO {
	
	@Autowired
	private WeatherInfoDAO weatherInfoDAO;

	public Map<String, String> selectWeather() {
		Map<String, String> weatherMap = weatherInfoDAO.wetherInfo();
		
		Map<String, String> weatherResult = new HashMap<>();
		
		// - 하늘상태(SKY) 코드 : 맑음(1), 구름많음(3), 흐림(4)
		
		if(weatherMap.get("SKY") == "1") {
			weatherMap.replace("SKY", "맑음");
		} else if(weatherMap.get("SKY") == "2") {
			weatherMap.replace("SKY", "비/눈");
		} else if(weatherMap.get("SKY") == "3") {
			weatherMap.replace("SKY", "구름많음");
		} else {
			weatherMap.replace("SKY", "흐림");
		}
		
		String PCP = weatherMap.get("PCP");
		weatherResult.put("PCP", PCP); // 강수량
		
		String REH = weatherMap.get("REH"); 
		weatherResult.put("REH", REH); // 습도
		
		String TMP = weatherMap.get("TMP"); // 기온
		weatherResult.put("TMP", TMP);
		
		String UUU = weatherMap.get("UUU"); // 풍속성분 (동서)
		weatherResult.put("UUU", UUU);
		
		String VVV = weatherMap.get("VVV"); // 풍속성분 (남북)
		weatherResult.put("VVV", VVV);
		
		String WSD = weatherMap.get("WSD"); // 풍속
		weatherResult.put("WSD", WSD);
		
		return weatherResult;
	}
}
