package com.moke.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

	@RequestMapping("/show")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/modifyPwShow")
	public String modifyPwShow(){
		return "user/ch_pw";
	}
	@RequestMapping("/exit")
	public String exit(){
		return "login";
	}
}
