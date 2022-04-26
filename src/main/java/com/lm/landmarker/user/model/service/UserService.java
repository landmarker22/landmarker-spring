package com.lm.landmarker.user.model.service;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.lm.landmarker.user.model.vo.User;

public interface UserService {



	int insertUser(User user);

	User selectUser(String user_email);

	User dupCheck(String email);



}
