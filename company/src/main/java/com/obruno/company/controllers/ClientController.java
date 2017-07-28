package com.obruno.company.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
	private static final String CLASS_NAME = "ClientController.";
	
	@Autowired
	private ClientDAO clientDAO;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add(Client client) {
		System.out.println(CLASS_NAME + "add(Client client)");
		return new ModelAndView("/client/add");
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView save(@Valid Client client, BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(CLASS_NAME + "save(@Valid Client client, BindingResult result, RedirectAttributes redirectAttributes)");
		
		if (result.hasErrors())
			return add(client);
		
		refactor(client);
		clientDAO.add(client);
		
		redirectAttributes.addFlashAttribute("sucesso", "Cliente cadastrado com sucesso!");
		return new ModelAndView("redirect:/client/add");		
	}
	
	private void refactor(Client client) {
		String telefone = client.getTelefone();
		telefone = telefone.replaceAll("[^\\d]", "");
		client.setTelefone(telefone);
		
		client.setBairro(client.getBairro().toUpperCase());
		client.setEndereco(client.getEndereco().toUpperCase());
		client.setNome(client.getNome().toUpperCase());
		client.setNumero(client.getNumero().toUpperCase());
	}
	
}
