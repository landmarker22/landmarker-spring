package com.lm.landmarker.user.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lm.landmarker.common.Paging;
import com.lm.landmarker.gallery.model.vo.Gallery;
import com.lm.landmarker.user.model.service.UserService;
import com.lm.landmarker.user.model.vo.User;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userService;
	
	// 테스트 함수 --------------------------------
	@RequestMapping("mypage.do")
	public ModelAndView myInfoMethod(ModelAndView mv, @RequestParam(name = "page", required = false) String page) {
		
		//리퀘스트로 세션에서 아이디 값 가져오게 수정해서 적용해야함
		
		int user_no=1;//테스트 유저번호(홍길동)
		
		User user = userService.selectUserInfo(user_no);
		//유저객체 가져옴
	
		int board_count = userService.boardCount(user_no);
		int scrap_count =  userService.scrapCount(user_no);
		
		//-------------------------페이징처리한 올린 게시물 가져오기--------
		int currentPage = 1;
		if (page != null) {
			currentPage = Integer.parseInt(page);
		}
		
		// 페이징 계산 처리 ----- 별도의 클래스로 작성해서 사용해도 됨 -----
		int limit = 6; // 한 페이지에 출력할 목록 갯수
		// 페이지 수 계산을 위해 총 목록갯수 조회
		int listCount = userService.boardCount(user_no);
		// 페이지 수 계산
		// 주의 : 목록이 11개이면, 페이지 수는 2가 됨 (나머지 목록 1개도 출력페이지가 1개 필요함)
		int maxPage = (int) ((double) listCount / limit + 0.9);
		// 현재 페이지가 포함된 페이지 그룹의 시작값 지정 (뷰 아래쪽에 표시할 페이지수를 10개씩 한 경우)
		int startPage = (int) ((double) currentPage / 10 + 0.9);
		// 현재 페이지가 포함된 페이지그룹의 끝값
		int endPage = startPage + 10 - 1;

		if (maxPage < endPage) {
			endPage = maxPage;
		}

		// 쿼리문에 전달할 현재 페이지에 출력할 목록의 첫행과 끝행 객체 처리
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		//Paging paging = new Paging(startRow, endRow);
		
		Map<String,Object> map = new HashMap<>();
		map.put("user_no", user_no);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		ArrayList<Gallery> gallerylist = userService.selectMygallery(map);
//		----------------------올린게시물 코드 끝
		
		//--------------------스크랩 가져오기 코드
		
		ArrayList<Gallery> likelist = userService.selectScrapList(user_no);
		
		if(user != null) {
			mv.addObject("maxPage", maxPage);
			mv.addObject("currentPage", currentPage);
			mv.addObject("startPage", startPage);
			mv.addObject("endPage", endPage);
			mv.addObject("limit", limit);
			mv.addObject("gallerylist", gallerylist);
			mv.addObject("likelist", likelist);
			mv.addObject("board_count", board_count);
			mv.addObject("scrap_count", scrap_count);
			mv.addObject("user", user);
			mv.setViewName("user/mypage");
		}
		
		return mv;
	}
	@RequestMapping("userupdate.do")
	public String UpdateUser(HttpServletRequest request, @RequestParam(name="username",required = false) String user_name) {
		
//		HttpSession session = request.getSession();
//		User user = (User)session.getAttribute("loginUser");
		
		int user_no=1;//테스트 유저번호(홍길동)
		
		User user = userService.selectUserInfo(user_no);
		//유저객체 가져옴
		
		if(user_name != null && user_name != "") {
		user.setUser_name(user_name);
		}
		
		if(userService.updateUser(user) > 0) {
			return "redirect:mypage.do";//???
		}else {
			System.out.println("닉네임 변경 실패");
			return "user/myPage";
		}
	}
	
}
