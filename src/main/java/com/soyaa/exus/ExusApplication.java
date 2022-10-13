package com.soyaa.exus;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})   // database 설정 미루기
public class ExusApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExusApplication.class, args);
	}

}
