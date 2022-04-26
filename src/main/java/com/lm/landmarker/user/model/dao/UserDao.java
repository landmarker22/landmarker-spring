package com.lm.landmarker.user.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.user.model.vo.User;

@Repository("userDao")
public class UserDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public User selectUser(int user_no) {
		return session.selectOne("userMapper.selectUser", user_no);
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

}
