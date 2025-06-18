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
import com.shoaib.model.Entry;
import com.shoaib.services.EntryService;

@Controller
public class EntryController {

	@Autowired
	EntryService entryService;
	
	@RequestMapping("/add_entry")
	public ResponseEntity<Map<String,Object>> add_entry(@RequestBody Entry entry){
		Map<String,Object> response = new HashMap<String,Object>();
		response = entryService.add_entry(entry);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
	@RequestMapping(value="/get_entry",method = RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> get_entry(HttpServletRequest request, HttpSession session ){
		int start = Integer.parseInt(request.getParameter("start"));
		int length = Integer.parseInt(request.getParameter("length"));
		String search = request.getParameter("search[value]");
		Map<String, Object> response = entryService.get_entry(start,length,search);
		return new ResponseEntity<Map<String,Object>>(response,HttpStatus.OK);
	}
}
