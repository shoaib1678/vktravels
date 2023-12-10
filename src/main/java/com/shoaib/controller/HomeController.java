package com.shoaib.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView test(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/dashboard");
	}
	@RequestMapping(value="/adminlogin")
	public ModelAndView adminlogin(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/login");
	}
	@RequestMapping(value="/branch")
	public ModelAndView branch(HttpServletResponse response) throws IOException{
		return new ModelAndView("AdminPanel/branch");
	}
}
