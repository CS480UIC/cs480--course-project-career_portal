package application.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import application.dao.ApplicationDao;
import application.domain.Application;



/**
 * Servlet implementation class UserServlet
 */

public class ApplicationServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationServletRead() {
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
		Application application = null;
		ApplicationDao applicationDao = new ApplicationDao();
		
		try {
			application = applicationDao.findByapplicant_id(request.getParameter("applicant_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(application.getApplicant_id()!=null){
					System.out.println(application);
					request.setAttribute("application", application);
					request.getRequestDispatcher("/jsps/application/application_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "Application not found");
			request.getRequestDispatcher("/jsps/application/application_read_output.jsp").forward(request, response);
		}
	}
}

