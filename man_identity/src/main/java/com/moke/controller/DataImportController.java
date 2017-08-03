package com.moke.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/data")
public class DataImportController {
	
	@RequestMapping("/show")
	public String show(){
		
		return "data/data";
	}
	
	@RequestMapping("/showList")
	public String showList(){
		
		return "data/data_list";
	}

}
