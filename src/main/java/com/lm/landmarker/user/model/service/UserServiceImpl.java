package com.lm.landmarker.user.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.user.model.dao.UserDao;
import com.lm.landmarker.user.model.vo.User;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public User selectUser(int user_no) {		
		return userDao.selectUser(user_no);
	}

	@Override
	public int boardCount(int user_no) {

		return userDao.boardCount(user_no);
	}

	@Override
	public int scrapCount(int user_no) {
		return userDao.scrapCount(user_no);
	}

	@Override
	public ArrayList<Gallery> selectScrapList(int user_no) {
		return userDao.selectScrapList(user_no);
	}

	@Override
	public ArrayList<Gallery> selectMygallery(Map<String, Object> map) {	
		return userDao.selectMygallery(map);
	}

}
