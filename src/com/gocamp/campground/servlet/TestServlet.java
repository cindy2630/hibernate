package com.gocamp.campground.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.gocamp.campground.bean.CampgroundBean;
import com.gocamp.campground.dao.CampgroundDAO;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ManagerFind(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ManagerFind(request, response);
	}
	
	public void ManagerFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		
		CampgroundDAO cDao = new CampgroundDAO(session);
		List<CampgroundBean> CampgroundBean= cDao.selectByCity("新竹");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.write("Id:" + CampgroundBean.get(1).getId() + "<br/>");
		out.write("Name:" + CampgroundBean.get(1).getName() + "<br/>");
		out.close();
		}


}
