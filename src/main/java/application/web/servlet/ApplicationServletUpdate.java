package application.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.dao.ApplicationDao;
import application.domain.Application;

/**
 * Servlet implementation class UserServlet
 */

public class ApplicationServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ApplicationServletUpdate() {
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

		String method = request.getParameter("method");
		ApplicationDao applicationdao = new ApplicationDao();
		Application application = null;

		if(method.equals("search"))
		{
			try {
				application = applicationdao.findByapplicant_id(request.getParameter("applicant_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(application.getApplication_id()!=null){
				request.setAttribute("application", application);
				request.getRequestDispatcher("/jsps/employer/employer_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Employer not found");
				request.getRequestDispatcher("/jsps/employer/employer_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    employer = new Employer();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			employer.setEmployer_name(info.get(2));
		
			
			employer.setEmployer_name(request.getParameter("employer_name"));

			try {
				employerdao.update(employer);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("employer", employer);
			request.setAttribute("msg", "Employer Info Updated.");
			request.getRequestDispatcher("/jsps/employer/employer_read_output.jsp").forward(request, response);
		}
	}
}