package com.shoaib.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shoaib.dao.CommonDao;
import com.shoaib.model.LoginCredentials;
import com.shoaib.model.Requirements;
import com.shoaib.utils.Utils;

@Controller
public class HomeController {
	
	@Autowired
	CommonDao commonDao;

	@RequestMapping(value = "/displayimage", method = RequestMethod.GET)
	public ResponseEntity<byte[]> displayAssociateImage(HttpServletRequest request) throws IOException {
		String url = request.getParameter("url");
		HttpHeaders headers = new HttpHeaders();
		InputStream in = null;
		try {
			in = new FileInputStream(Utils.staticimages + "/" + url);
		} catch (Exception e) {
			System.out.println(e);
		}
		byte[] media = IOUtils.toByteArray(in);
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		ResponseEntity<byte[]> responseEntity = new ResponseEntity(media, headers, HttpStatus.OK);
		return responseEntity;
	}
	@RequestMapping(value="/")
	public ModelAndView home(HttpServletResponse response) throws IOException{
		ModelAndView mv = new ModelAndView("Website/index");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("status", "Active");
		List<Requirements> req = (List<Requirements>)commonDao.getDataByMap(map, new Requirements(), null, null, 0, -1);
		mv.addObject("req", req);
		return mv;
	}
	@RequestMapping(value="/dashboard")
	public ModelAndView test(HttpServletRequest request, HttpSession session) throws IOException{
		String email = request.getParameter("email");
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("email", email);
		List<LoginCredentials> login = (List<LoginCredentials>)commonDao.getDataByMap(map, new LoginCredentials(), null, null, 0, -1);
		if(login.size() >0) {
			session.setAttribute("logindata", login.get(0));
			return new ModelAndView("AdminPanel/Dashboard/dashboard");
		}else {
			return new ModelAndView("redirect:./");
		}
		
	}
	@RequestMapping(value="/adminlogin")
	public ModelAndView adminlogin(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/login");
	}
	@RequestMapping(value="/manage_entry")
	public ModelAndView branch(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/Entry/new_entry");
	}
	@RequestMapping(value="/interview_slip")
	public ModelAndView interview_slip(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/Pdf/interview_slip");
	}
	@RequestMapping(value="/new_interviewer")
	public ModelAndView new_interviewer(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/InterviewDetails/add_interviewers");
	}
	@RequestMapping(value="/manage_requirements")
	public ModelAndView manage_requirements(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/Requirments/requirments");
	}
}
