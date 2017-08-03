package com.moke.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moke.entity.User;
import com.moke.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/show")
	public ModelAndView showUser(){
		ModelAndView mav=new ModelAndView();
		List<User> users=userService.showUser();
		mav.setViewName("/index");
		mav.addObject("users", users);
		return mav;
	}
	
	@RequestMapping("/showUser")
	public String showUserPage(){
		return "user/user";
	}
	
	@RequestMapping("/showPerson")
	public String showPerson(){
		return "user/userManage";
	}
}
