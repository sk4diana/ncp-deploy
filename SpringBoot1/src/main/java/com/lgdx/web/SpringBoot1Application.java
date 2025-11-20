package com.lgdx.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

// @SpringBoot1Application : 해당 클래스의 위치르 기준으로, 하위에 있는 파일을
// 							 읽어 Spring Boot의 설정을 자동적으로 진행하는 클래스!

// @ComponentScan : @Controlle, @RestController, @Servieces, @Repository

@SpringBootApplication
public class SpringBoot1Application extends SpringBootServletInitializer{
	
	// 내장 톰캣이 아닌 외부 톰캣을 사용하기 위한 설정 (.jsp 동작 시키기 위해)
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		// TODO Auto-generated method stub
		return builder.sources(SpringBoot1Application.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(SpringBoot1Application.class, args);
	}

}
