package employer.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employer.dao.EmployerDao;
import employer.domain.Employer;

/**
 * Servlet implementation class UserServlet
 */

public class EmployerServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployerServletUpdate() {
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
		EmployerDao employerdao = new EmployerDao();
		Employer employer = null;

		if(method.equals("search"))
		{
			try {
				employer = employerdao.findByemployer_id(request.getParameter("employer_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(employer.getEmployer_id()!=null){
				request.setAttribute("employer", employer);
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
			
			employer.setEmployer_name(info.get(1));
			System.out.println(employer.getEmployer_name());
		
			
			employer.setEmployer_id(request.getParameter("employer_id"));
			System.out.println(employer.getEmployer_id());

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