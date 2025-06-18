package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.shoaib.model.Requirements;
import com.shoaib.services.RequirmentService;

@Controller
public class RequirementController {

	@Autowired
	RequirmentService requirmentService;
	
	@RequestMapping(value="/add_requiremnet", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> add_requiremnet(@RequestParam(value="image") MultipartFile image,
			@RequestParam(value="reqdata") String reqdata){
		Map<String, Object> response = new HashMap<String,Object>();
		Gson gson = new Gson();
		Requirements requirements = gson.fromJson(reqdata, Requirements.class);
		response =  requirmentService.add_requiremnet(requirements,image);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	
	@RequestMapping(value="/get_requirement", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> get_requirement(HttpServletRequest request){
		Map<String, Object> response = new HashMap<String,Object>();
		int start = Integer.parseInt(request.getParameter("start"));
		int length = Integer.parseInt(request.getParameter("length"));
		String search = request.getParameter("search[value]");
		response = requirmentService.get_requirement(start,length,search);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	@RequestMapping(value="/delete_req", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> delete_req(HttpServletRequest request){
		Map<String, Object> response = new HashMap<String,Object>();
		String sno = request.getParameter("sno");
		response = requirmentService.delete_req(sno);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
