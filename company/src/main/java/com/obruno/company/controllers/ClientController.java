package com.obruno.company.controllers;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.obruno.company.daos.ClientDAO;
import com.obruno.company.models.Client;

@Controller
@Transactional
@RequestMapping("/client")
public class ClientController {

	@Autowired
	private ClientDAO clientDAO;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add(Client client) {
		return new ModelAndView("/client/add");
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Client client, BindingResult result, RedirectAttributes redirectAttributes) {
		if (result.hasErrors())
			return add(client);
		
		clientDAO.add(client);
		
		redirectAttributes.addFlashAttribute("sucesso", "Cliente cadastrado com sucesso!");
		return new ModelAndView("redirect:/client/add");		
	}
	
}
