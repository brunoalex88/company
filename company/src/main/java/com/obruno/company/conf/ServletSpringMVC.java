package com.obruno.company.conf;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class ServletSpringMVC extends AbstractAnnotationConfigDispatcherServletInitializer {
	private static final String CLASS_NAME = "ServletSpringMVC.";
	
	@Override
	protected Class<?>[] getRootConfigClasses() {
		System.out.println(CLASS_NAME + "getRootConfigClasses()");
		return new Class[] {SecurityConfiguration.class,
				AppWebConfiguration.class, JPAConfiguration.class,
				JPAConfiguration.class}; 
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
