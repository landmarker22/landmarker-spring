package com.lm.landmarker.user.model.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lm.landmarker.user.model.dao.UserDao;
import com.lm.landmarker.user.model.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public User dupCheck(String email) {
		return userDao.dupCheck(email);
	}
	
	@Override
	public int insertUser(User user) {
		return userDao.insertUser(user);
	}
	
	@Override
	public User selectUser(String user_email) {
		return userDao.selectUser(user_email);
	}

}
