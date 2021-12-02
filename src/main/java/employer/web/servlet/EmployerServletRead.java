package employer.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employer.dao.EmployerDao;
import employer.domain.Employer;


/**
 * Servlet implementation class UserServlet
 */

public class EmployerServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerServletRead() {
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
		Employer employer = null;
		EmployerDao employerDao = new EmployerDao();
		
		try {
			employer = employerDao.findByemployer_id(request.getParameter("employer_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(employer.getEmployer_name()!=null){
					System.out.println(employer);
					request.setAttribute("employer", employer);
					request.getRequestDispatcher("/jsps/employer/employer_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "Employer not found");
			request.getRequestDispatcher("/jsps/employer/employer_read_output.jsp").forward(request, response);
		}
	}
}

