package com.obruno.company.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.obruno.company.models.Device;

@Repository
public class DeviceDAO {

	@PersistenceContext
	private EntityManager em;
	
	public void add(Device device) {
		em.persist(device);
	}
	
	public List<Device> list() {
		return em.createQuery("from Device d", Device.class).getResultList();
	}
	
}
