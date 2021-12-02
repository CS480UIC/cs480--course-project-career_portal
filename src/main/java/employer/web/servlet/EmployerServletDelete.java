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

public class EmployerServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerServletDelete() {
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
		EmployerDao employerDao = new EmployerDao();
		Employer employer = null;
		if(method.equals("search"))
		{
			try {
				employer = employerDao.findByemployer_id(request.getParameter("employer_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(employer.getEmployer_id()!=null){
						System.out.println(employer);
						request.setAttribute("employer", employer);
						request.getRequestDispatcher("/jsps/employer/employerdelete.jsp").forward(request, response);			
				}
			else{
				request.setAttribute("msg", "Employer not found");
				request.getRequestDispatcher("/jsps/employer/employerdelete.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				employerDao.delete(request.getParameter("employer_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("msg", "Employer Deleted");
			request.getRequestDispatcher("/jsps/employer_read_output.jsp").forward(request, response);
		}
	}
}

