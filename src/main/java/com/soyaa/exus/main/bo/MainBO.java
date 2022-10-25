package com.soyaa.exus.main.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soyaa.exus.main.WeatherInfoDAO;

@Service
public class MainBO {
	
	@Autowired
	private WeatherInfoDAO weatherInfoDAO;

	public String selectWeather() {
		weatherInfoDAO.wetherInfo();
		return "hello";
	}
}
