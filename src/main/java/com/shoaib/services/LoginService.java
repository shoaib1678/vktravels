package com.shoaib.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shoaib.dao.CommonDao;
import com.shoaib.model.LoginCredentials;

@Service
public class LoginService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> checklogin(String email, String password) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("email", email);
			map.put("password", password);
			List<LoginCredentials> data = (List<LoginCredentials>)commonDao.getDataByMap(map, new LoginCredentials(), null, null, 0, -1);
			if(data.size() > 0) {
				response.put("status", "Success");
				response.put("message", "Login Successfully");
			}else {
				response.put("status", "Failed");
				response.put("message", "Please enter valid email or password");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}
}
