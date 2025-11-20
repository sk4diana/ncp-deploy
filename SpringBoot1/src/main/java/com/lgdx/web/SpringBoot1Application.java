package com.lgdx.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBoot1Application : 해당 클래스의 위치르 기준으로, 하위에 있는 파일을
// 							 읽어 Spring Boot의 설정을 자동적으로 진행하는 클래스!

// @ComponentScan : @Controlle, @RestController, @Servieces, @Repository

@SpringBootApplication
public class SpringBoot1Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBoot1Application.class, args);
	}

}
