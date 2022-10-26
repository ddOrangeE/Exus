package com.soyaa.exus.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.soyaa.exus.main.dao.WeatherInfoDAO;

@RestController
public class MainRestController {

	@Autowired
	private WeatherInfoDAO weatherInfoDAO;
	
	@GetMapping("/weather")
	public Map<String, String> weatherInfo() {
		
		return weatherInfoDAO.wetherInfo();
	}
	
}
