package com.obruno.company.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
	private static final String CLASS_NAME = "SecurityConfiguration.";	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		System.out.println(CLASS_NAME + "configure(HttpSecurity http)");
		
		http.authorizeRequests()
		.antMatchers("/company").hasRole("ADMIN")
		.antMatchers("/company/**").hasAnyRole("ADMIN")
		.anyRequest().authenticated()
		.and()
		.formLogin().loginPage("/login").permitAll()
		.and()
		.logout().logoutRequestMatcher(new AntPathRequestMatcher("/company/logout")).permitAll();
	}
	
	@Autowired
	private UserDetailsService users;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		System.out.println(CLASS_NAME + "configure(AuthenticationManagerBuilder auth)");
		auth.userDetailsService(users).passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		System.out.println(CLASS_NAME + "configure(WebSecurity web)");
		web.ignoring().antMatchers("/resources/**");
	}
	
}