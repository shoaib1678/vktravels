package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shoaib.model.Branch;
import com.shoaib.services.BranchService;

@Controller
public class BranchController {
	
	@Autowired
	BranchService branchService;
	
	@RequestMapping("/add_branch")
	public ResponseEntity<Map<String,Object>> add_branch(@RequestBody Branch branch){
		Map<String,Object> response = new HashMap<String,Object>();
		response = branchService.add_branch(branch);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	@RequestMapping(value="/get_branch",method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> get_branch(HttpServletRequest request, HttpSession session ){
		int start = Integer.parseInt(request.getParameter("start"));
		int length = Integer.parseInt(request.getParameter("length"));
		Map<String, Object> response = branchService.get_branch(start,length);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
