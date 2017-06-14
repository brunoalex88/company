package com.obruno.company.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.obruno.company.models.Role;

@Repository
public class RoleDAO {
	private static final String CLASS_NAME = "RoleDAO.";
	
	@PersistenceContext
	private EntityManager em;
	
	public void add(Role role) {
		System.out.println(CLASS_NAME + "add(Role role)");
		em.persist(role);
	}
	
}
