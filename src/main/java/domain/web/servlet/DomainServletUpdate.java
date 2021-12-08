package domain.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import domain.dao.DomainDao;
import domain.domain.Domain;

//import entity1.service.Entity1Service;

/**
 * Servlet implementation class UserServlet
 */


public class DomainServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DomainServletUpdate() {
        super();
        // TODO Auto-generated constructor stub
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

		String method = request.getParameter("method");
		DomainDao domainDao = new DomainDao();
		Domain domain = null;		
		if(method.equals("search"))
		{
			try {
			domain = domainDao.findByDomain_id(request.getParameter("domain_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
//			Entity1Service entity1service = new Entity1Service();		
			if(domain.getDomain_id()!=null){
				
						request.setAttribute("domain", domain);
						request.getRequestDispatcher("/jsps/domain/domain_update_output.jsp").forward(request, response);
					
				}
			
			
				else{
					
				request.setAttribute("msg", "domain not found");
				request.getRequestDispatcher("/jsps/domain/domain_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Domain form = new Domain();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				
				String[] values = paramMap.get(name);
				info.add(values[0]);
				System.out.println(name + ": " + Arrays.toString(values));
			}
			form.setName(info.get(2));
			

			form.setDomain_id(request.getParameter("domain_id"));

			try {
				domainDao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Domain Updated");
			request.getRequestDispatcher("/jsps/domain/domain_read_output.jsp").forward(request, response);
		}
	}
}



