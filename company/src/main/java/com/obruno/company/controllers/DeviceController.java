package com.obruno.company.controllers;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.obruno.company.converter.ClientEditor;
import com.obruno.company.daos.ClientDAO;
import com.obruno.company.daos.DeviceDAO;
import com.obruno.company.models.Client;
import com.obruno.company.models.Device;
import com.obruno.company.models.Type;

@Controller
@Transactional
@RequestMapping("/device")
public class DeviceController {
	private static final String CLASS_NAME = "DeviceController.";
	
	@Autowired
	DeviceDAO deviceDAO;
	
	@Autowired
	ClientDAO clientDAO;

	@Autowired
	ClientEditor clientEditor;
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		System.out.println(CLASS_NAME + "initBinder(WebDataBinder binder)");
		binder.registerCustomEditor(Client.class, clientEditor);
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add(Device device) {
		System.out.println(CLASS_NAME + "add(Device device)");
		List<Client> clients = clientDAO.list();
		
		ModelAndView modelAndView = new ModelAndView("/add");
		modelAndView.addObject("types", Type.values());
		modelAndView.addObject("clientes", clients);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Device device, 
			BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		System.out.println(CLASS_NAME + "save(@Valid Device device, BindingResult bindingResult, RedirectAttributes redirectAttributes)");
		
		if (bindingResult.hasErrors()) {
			System.out.println(bindingResult);
			return add(device);
		}
		
		deviceDAO.add(device);
		redirectAttributes.addFlashAttribute("sucesso", "Device cadastrado com sucesso");
		return new ModelAndView("redirect:/device/add");
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		System.out.println(CLASS_NAME + "list()");
		
		ModelAndView modelAndView = new ModelAndView("/device/list");
		modelAndView.addObject("devices", deviceDAO.list());
		return modelAndView;
	}

}
