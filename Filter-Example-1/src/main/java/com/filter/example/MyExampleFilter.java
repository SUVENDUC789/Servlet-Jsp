package com.filter.example;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyExampleFilter implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
	
		System.out.println("Before servlet ...");		
		//...
		//...		
		chain.doFilter(request, response);
		//...
		//...
		System.out.println("After servlet ...");	
		
	}
	
	@Override
	public void destroy() {	}

}
