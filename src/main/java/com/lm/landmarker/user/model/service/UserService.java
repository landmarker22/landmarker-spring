package com.lm.landmarker.user.model.service;





import java.util.ArrayList;
import java.util.Map;

import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.user.model.vo.User;



public interface UserService {
	
	//마이페이지 이동시 내가올린 게시물정보 가져오기
	//ArrayList<Gallery/* 게시물 만든거 오면 가져오기 */> myGallery(int user_no);
	//마이페이지 이동시 내가 스크랩한 게시물 가져오기
	//ArrayList<Gallery> myScrap(int user_no);
	
	User selectUser(int user_no);
	
	int boardCount(int user_no);
	
	int scrapCount(int user_no);

	ArrayList<Gallery> selectScrapList(int user_no);

	ArrayList<Gallery> selectMygallery(Map<String, Object> map);

}
