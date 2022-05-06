package com.lm.landmarker.user.model.service;


import java.util.ArrayList;
import java.util.Map;

import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.landmark.model.vo.Landmark;
import com.lm.landmarker.user.model.vo.User;

public interface UserService {



	int insertUser(User user);

	User selectUser(String user_email);

	User dupCheck(String email);

	
	// 송상언
	User selectUserInfo(int user_no);
	
	int boardCount(int user_no);
	
	int scrapCount(int user_no);

	ArrayList<Gallery> selectScrapList(int user_no);

	ArrayList<Gallery> selectMygallery(Map<String, Object> map);

	int updateUser(User user);

	int updateBadge(User user);

	int replyCount(int user_no);

	ArrayList<Landmark> landmarkSearch(String search);

}
