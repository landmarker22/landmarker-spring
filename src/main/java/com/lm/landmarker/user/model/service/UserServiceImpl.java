package com.lm.landmarker.user.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.landmark.model.vo.Landmark;
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

	@Override
	public User selectUserInfo(int user_no) {		
		return userDao.selectUserInfo(user_no);
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
	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public ArrayList<Gallery> selectScrapList(int user_no) {
		return userDao.selectScrapList(user_no);
	}

	@Override
	public ArrayList<Gallery> selectMygallery(Map<String, Object> map) {	
		return userDao.selectMygallery(map);
	}

	@Override
	public int updateBadge(User user) {
		// TODO Auto-generated method stub
		return userDao.updateBadge(user);
	}

	@Override
	public int replyCount(int user_no) {
		return userDao.replyCount(user_no);
	}

	@Override
	public ArrayList<Landmark> landmarkSearch(String search) {
		return userDao.landmarkSearch(search);
	}

	
	// 장고 로그인
	@Override
	public int insertLink(Map<String, String> map) {
		return userDao.insertLink(map);
	}

	@Override
	public int deleteKey(String link_key) {
		return userDao.deleteKey(link_key);
	}

	@Override
	public int deleteDate() {
		return userDao.deleteDate();
	}

	@Override
	public int selectLink(String link_key) {
		return userDao.selectLink(link_key);
	}
}
