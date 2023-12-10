package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shoaib.services.LoginService;

@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/checklogin")
	public ResponseEntity<Map<String,Object>> checklogin(HttpServletRequest request){
		Map<String,Object> response = new HashMap<String,Object>();
		String email = request.getParameter("email");
		String password = request.getParameter("pasword");
		response = loginService.checklogin(email,password);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
