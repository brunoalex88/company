package com.obruno.company.converter;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.obruno.company.daos.ClientDAO;
import com.obruno.company.models.Client;

@Component
public class ClientEditor extends PropertyEditorSupport {

	@Autowired
	ClientDAO clientDAO;
	
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Client client = clientDAO.getById(text);
		this.setValue(client);
		return;
	}
	
}
