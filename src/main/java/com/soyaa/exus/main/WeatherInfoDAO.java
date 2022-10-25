package com.soyaa.exus.main;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

@Component
public class WeatherInfoDAO {

	private String vilage_weather_url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst";
	
	private String service_key = "fmZktyC9n6LxWuvyWdn03R0h5PkDJvrTKk7Q9EA9gR8VrQr4RHKidxDp/Pgd7pjzidRjsmueKX5qzFGV6fL5xg==";

	private Object restOperations;
	
	public Map<String, String> wetherInfo() {
		
		Date today = new Date();
		
		SimpleDateFormat formatterDate = new SimpleDateFormat("yyyyMMdd");
		
		// "20221025" 기준 날짜
		String base_date = formatterDate.format(today);
		
		// 날씨 값
		SimpleDateFormat formatterTime = new SimpleDateFormat("HH00"); 
		
		String base_time = formatterTime.format(today);
		
		int nx = 60;
		int ny = 128;
		
		HttpHeaders headers = new HttpHeaders();
		headers.set(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
		HttpEntity<Object> entity = new HttpEntity<>(headers);
		
		String urlTemplate = UriComponentsBuilder.fromHttpUrl(vilage_weather_url)
				.queryParam("servicekey","{servicekey}")
				.queryParam("dataType","{dataType}")
				.queryParam("base_date","{base_date}")
				.queryParam("base_time","{base_time}")
				.queryParam("nx","{nx}")
				.queryParam("ny","{ny}")
				.encode()
				.toUriString();
		
		Map<String, Object> params = new HashMap<>();
		params.put("servicekey", service_key);
		params.put("dataType", "JSON");
		params.put("base_date", base_date);
		params.put("base_time", base_time);
		params.put("nx", nx);
		params.put("ny", ny);
		
		RestTemplate restTemplate = new RestTemplate();
		
		ResponseEntity<JSONObject> response = restTemplate.exchange(
				urlTemplate
				, HttpMethod.GET
				, entity
				, JSONObject.class
				, params);
		
		return null;
		
		
		
	}
	
	

	
	
}
