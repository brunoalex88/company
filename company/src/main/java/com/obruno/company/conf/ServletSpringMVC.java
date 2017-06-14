package com.obruno.company.conf;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer {
	private static final String CLASS_NAME = "ServletSpringMVC.";
	
	@Override 
	public void onStartup(ServletContext servletContext) throws ServletException {
		super.onStartup(servletContext);
		servletContext.addListener(RequestContextListener.class);
		servletContext.setInitParameter("spring.profiles.active", "dev");
	}
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		System.out.println(CLASS_NAME + "getRootConfigClasses()");
		return new Class[] {SecurityConfiguration.class,
				AppWebConfiguration.class, JPAConfiguration.class, 
				JPAConfigurationProduction.class}; 
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		System.out.println(CLASS_NAME + "getServletConfigClasses()");
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		System.out.println(CLASS_NAME + "getServletMappings()");
		return new String[] {"/"};
	}
	
}
