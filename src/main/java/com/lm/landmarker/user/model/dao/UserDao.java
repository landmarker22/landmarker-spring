package com.lm.landmarker.user.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lm.landmarker.user.model.vo.User;
import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.user.model.vo.User;

@Repository("userDao")
public class UserDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public UserDao() {}
	
	public User dupCheck(String user_email) {
		return session.selectOne("userMapper.dupCheck", user_email);
	}
	
	public int insertUser(User user) {
		return session.insert("userMapper.insertUser", user);
	}

	public User selectUser(String user_email) {
		return session.selectOne("userMapper.selectUser", user_email);
	}

	public User selectUserInfo(int user_no) {
		return session.selectOne("userMapper.selectUserInfo", user_no);
	}

	public int boardCount(int user_no) {
		return session.selectOne("userMapper.galleryCount", user_no);
	}
	
	public int scrapCount(int user_no) {
		return session.selectOne("userMapper.likeCount", user_no);
	}

	public ArrayList<Gallery> selectScrapList(int user_no) {
		List<Gallery> list = session.selectList("userMapper.likeList", user_no);
		return (ArrayList<Gallery>)list;
		
	}

	public ArrayList<Gallery> selectMygallery(Map<String, Object> map) {
		List<Gallery> list = session.selectList("userMapper.selectMygallery", map);
		return (ArrayList<Gallery>)list;
	}

	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return session.update("userMapper.updateUser", user);
	}
}
