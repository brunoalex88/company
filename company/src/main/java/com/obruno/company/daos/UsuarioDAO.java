package com.obruno.company.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.obruno.company.models.Usuario;

@Repository
public class UsuarioDAO implements UserDetailsService {
	private static final String CLASS_NAME = "UsuarioDAO.";
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println(CLASS_NAME + "loadUserByUsername(String username)");
		
		String jpql = "select u from Usuario u where u.login = :login";
		
		List<Usuario> usuarios = em.createQuery(jpql, Usuario.class)
				.setParameter("login", username).getResultList();
		
		if(usuarios.isEmpty()) {
			throw new UsernameNotFoundException("Usuário:" + username + " não existe");
		}
		
		return usuarios.get(0);
		
	}
	
	public void add(Usuario usuario) {
		em.persist(usuario);
	}
		
}
