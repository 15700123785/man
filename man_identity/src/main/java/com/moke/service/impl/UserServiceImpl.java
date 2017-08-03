package com.moke.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moke.dao.UserDao;
import com.moke.entity.User;
import com.moke.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	
	@Override
	public List<User> showUser() {
		List<User> users=userDao.showUser();
		return users;
	}

}
