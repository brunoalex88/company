package com.obruno.company.conf;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.obruno.company.daos.ClientDAO;

@EnableWebMvc
@ComponentScan(basePackages = "com.obruno.company")
public class AppWebConfiguration extends WebMvcConfigurerAdapter {
	private static final String CLASS_NAME = "AppWebConfiguration.";
	
	@Bean
	public InternalResourceViewResolver internalResourceViewResolver() {
		System.out.println(CLASS_NAME + "internalResourceViewResolver()");
		
		InternalResourceViewResolver resolver = 
				new InternalResourceViewResolver();
		
		resolver.setPrefix("/WEB-INF/views");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean
	public MessageSource messageSource() {
		System.out.println(CLASS_NAME + "messageSource()");
		
		ReloadableResourceBundleMessageSource bundleMessageSource =
				new ReloadableResourceBundleMessageSource();
		
		bundleMessageSource.setBasename("WEB-INF/messages");
		bundleMessageSource.setDefaultEncoding("UTF-8");
		bundleMessageSource.setCacheSeconds(1);
		return bundleMessageSource;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		System.out.println(CLASS_NAME + "addResourceHandlers()");
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	@Bean ClientDAO clientDAO() {
		return new ClientDAO();
	}
	
}
