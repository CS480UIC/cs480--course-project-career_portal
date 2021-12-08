package application.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
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

			if(application.getApplicant_id()!=null){
				request.setAttribute("application", application);
				request.getRequestDispatcher("/jsps/application/application_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "application not found");
				request.getRequestDispatcher("/jsps/application/application_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    application = new Application();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			application.setApplicant_id(info.get(1));
		
			
			application.setApplication_status(request.getParameter("application_status"));

			try {
				applicationdao.update(application);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("application", application);
			request.setAttribute("msg", "application Info Updated.");
			request.getRequestDispatcher("/jsps/application/application_read_output.jsp").forward(request, response);
		}
	}
}