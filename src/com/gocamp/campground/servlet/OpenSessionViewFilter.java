package com.gocamp.campground.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class OpenSessionViewFilter implements Filter {

	@Override
	public void doFilter(ServletRequest requst, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		System.out.println(factory);
		Session session = factory.getCurrentSession();
		
		try {
			session.beginTransaction();
			System.out.println("Transaction Begin");
			
			chain.doFilter(requst,response);
			
			session.getTransaction().commit();
			System.out.println("Transaction Commit");
		}catch (Exception e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		}finally {
			System.out.println("Session closed");
		}

	}

}
