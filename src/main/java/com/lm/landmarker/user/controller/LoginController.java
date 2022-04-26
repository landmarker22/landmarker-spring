package com.lm.landmarker.user.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.lm.landmarker.user.model.service.KakaoService;
import com.lm.landmarker.user.model.service.UserService;
import com.lm.landmarker.user.model.vo.User;

@Controller
public class LoginController {
	
    /* NaverLoginBO */
    private NaverLoginBO naverLoginBO;
    private String apiResult = null;
    
    @Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }
    
    @Autowired
	private UserService userService;
 
  //로그인 첫 화면 요청 메소드
    @RequestMapping(value ="naverLogin.do", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(Model model, HttpSession session) {
        
        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        JSONObject url = new JSONObject();
        
        url.put("url", naverAuthUrl);
//        model.addAttribute("url", naverAuthUrl);        
        /* 생성한 인증 URL을 View로 전달 */
        return url.toJSONString();
    }
 
    //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value = "naverCallback.do", method = { RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, User user)
            throws IOException, ParseException {
        System.out.println("여기는 callback");
        OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
        apiResult = naverLoginBO.getUserProfile(oauthToken);
        model.addAttribute("result", apiResult);
        
      //2. String형식인 apiResult를 json형태로 바꿈
      		JSONParser parser = new JSONParser();
      		Object obj = parser.parse(apiResult);
      		JSONObject jsonObj = (JSONObject) obj;
      		//3. 데이터 파싱
      		//Top레벨 단계 _response 파싱
      		JSONObject response_obj = (JSONObject) jsonObj.get("response");
      		System.out.println(response_obj);
      		//response의 name값 파싱
      		String name = (String)response_obj.get("name");
      		String email = (String)response_obj.get("email");

      		//중복된 이메일이 있으면 그대로 사용, 아니면 새로 적용
      		if(userService.dupCheck(email) != null) {
      			user = userService.dupCheck(email);
      		}else {
      			user.setUser_name(name);
      			user.setUser_email(email);
      			if(userService.insertUser(user) > 0) {
 
      			}else {

      			}
      		}
      		user = userService.selectUser(email);
      		System.out.println(user.toString());
        
        session.setAttribute("loginUser", user);
        /* 네이버 로그인 성공 페이지 View 호출 */
        return "common/main";
    }
    
    
    //카카오 로그인
    @Autowired
	private KakaoService ms;

	@RequestMapping(value="/kakaoLogin.do", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session, User user) throws Exception {
		System.out.println("#########" + code);
		String access_Token = ms.getAccessToken(code);
		HashMap<String, Object> userInfo = ms.getUserInfo(access_Token);
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		session.setAttribute("loginUser", user);
		
		
		  String email = (String) userInfo.get("email"); 
		  String name = (String) userInfo.get("nickname");
		  
		  if(userService.dupCheck(email) != null) { 
			  user = userService.dupCheck(email);
		  }else { 
			  user.setUser_name(name); user.setUser_email(email);
		  if(userService.insertUser(user) > 0) {
			  
		  
		  }else {

		  } 
		  
		  }
		  
		  user = userService.selectUser(email);
		 
		return "common/main";
    }
	


	

	@RequestMapping(value="logout.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session, Model model)throws IOException {
		System.out.println("logout");
		session.invalidate();

		return "common/main";
	}
}


