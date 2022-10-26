package com.soyaa.exus.main.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.boot.configurationprocessor.json.JSONArray;
import org.springframework.boot.configurationprocessor.json.JSONException;
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

	private String vilage_weather_url = "http://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst";
	
	private String service_key = "fmZktyC9n6LxWuvyWdn03R0h5PkDJvrTKk7Q9EA9gR8VrQr4RHKidxDp/Pgd7pjzidRjsmueKX5qzFGV6fL5xg==";
	
	public Map<String, String> wetherInfo() {
		
		Date today = new Date();
		
		SimpleDateFormat formatterDate = new SimpleDateFormat("yyyyMMdd");
		
		// "20221025" 기준 날짜
		String base_date = formatterDate.format(today);
		
		// 날씨 값
		SimpleDateFormat formatterTime = new SimpleDateFormat("1700"); 
		
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
		
		ResponseEntity<String> response = restTemplate.exchange(
				urlTemplate
				, HttpMethod.GET
				, entity
				, String.class
				, params);
	
		String string = response.getBody();
		
		Map<String, String> weatherMap = new HashMap<>();
		
		try {
			JSONObject jsonObject = new JSONObject(string);
		
			JSONArray jsonArray = jsonObject.getJSONObject("response").getJSONObject("body").getJSONObject("items").getJSONArray("item");
			
			for(int i = 0; i < jsonArray.length(); i++) {
				JSONObject obj = jsonArray.getJSONObject(i);
				String category = obj.getString("category");
				String fcstValue = obj.getString("fcstValue");
				
				weatherMap.put(category, fcstValue);
			}
			
		} catch (JSONException e) {

			e.printStackTrace();
		}
		
		
//		//JSON Object로 body를 얻어본다...
//		JSONObject jObj = response.getBody();
//
//		//JSON object의 key를 뽑아본다...
//		Iterator keys = jObj.keys();
//
//		//JSON object의 key를 String 리스트에 담아버릴것이다..
//		List<String> stringKey = new ArrayList<>();
//
//		//이제 이 key는 제겁니다.
//		while(keys.hasNext()) {
//			String key = keys.next().toString();
//			stringKey.add(key);
//		}
				
		return weatherMap;
	}
	
	

	
	
}
