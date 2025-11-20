package com.lgdx.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// Spring Boot에서는 FC가 Controller를 찾기 위한 작업이 자동으로 진행된다!
// SpringBoot1Application.java 에서 진행

@Controller
public class MyViewController {
	// - 화면을 띄워주기만 하는 컨트롤러
	
	@GetMapping("/")
	public String goHome() {
		return "Main";
	}
	
	@GetMapping("/goUpdate")
	public String goUpadate() {
		return "UpdateMember";
		
	}
}
