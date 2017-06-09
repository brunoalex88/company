package com.obruno.company.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.obruno.company.models.Client;

@Repository
public class ClientDAO {

	@PersistenceContext
	private EntityManager manager;
	
	public void add(Client client) {
		manager.persist(client);
	}
	
	public List<Client> list() {
		return manager.createQuery("from Client", Client.class).getResultList();
	} 
	
	public List<Integer> getIds() {
		return manager.createQuery(
				"select c.id from Client c", Integer.class).getResultList();
	}
	
	public Client getById(String id) {
		TypedQuery<Client> query = manager.createQuery(
				"from Client c where c.id = :id", Client.class);
		
		Client c = query.setParameter("id", Integer.parseInt(id)).getSingleResult();
		return c;
		
	}
	
}