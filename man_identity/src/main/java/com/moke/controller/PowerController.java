package com.moke.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/power")
public class PowerController {

	@RequestMapping("/show")
	public String show(){
		return "power/power";
	}
	
	@RequestMapping("/list")
	public String list(){
		return "power/power_list";
	}
	
	@RequestMapping("/modifyShow")
	public String modfiyPower(){
		return "power/power_xg";
	}
}
