package domain.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.dao.DomainDao;
import domain.domain.Domain;


/**
 * Servlet implementation class UserServlet
 */

public class DomainServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DomainServletRead() {
        super();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Domain domain = null;
		DomainDao domainDao = new DomainDao();
		
		try {
			domain = domainDao.findByDomain_id(request.getParameter("domain_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(domain.getDomain_id()!=null){
					System.out.println(domain);
					request.setAttribute("domain", domain);
					request.getRequestDispatcher("/jsps/domain/domain_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "Domain not found");
			request.getRequestDispatcher("/jsps/domain/domain_read_output.jsp").forward(request, response);
		}
	}
}