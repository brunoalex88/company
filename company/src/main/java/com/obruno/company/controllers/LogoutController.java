package com.obruno.company.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/logout")
public class LogoutController {
	private static final String CLASS_NAME = "LogoutController.";
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView login() {
		System.out.println(CLASS_NAME + "login()");
		return new ModelAndView("/logout");
	}
	
}
