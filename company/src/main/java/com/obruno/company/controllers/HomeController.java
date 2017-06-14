package com.obruno.company.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {
	private static final String CLASS_NAME = "HomeController.";
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		System.out.println(CLASS_NAME + "index()");
		return new ModelAndView("/index");
	}
	
}
