package com.moke.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/history")
public class HistoryController {

	@RequestMapping("/show")
	public String show(){
		return "history/history";
	}
	
	@RequestMapping("/showPage")
	public String showPage(){
		return "history/historyByMode";
	}
	
	@RequestMapping("/listByService")
	public String listByService(){
		return "history/listByService";
	}
	
	@RequestMapping("/listByUser")
	public String listByUser(){
		return "history/listByUser";
	}
}
