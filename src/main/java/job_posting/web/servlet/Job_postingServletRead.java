package job_posting.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import job_posting.dao.Job_postingDao;
import job_posting.domain.Job_posting;

/**
 * Servlet implementation class UserServlet
 */

public class Job_postingServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Job_postingServletRead() {
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
		Job_posting job_posting = null;
		Job_postingDao job_postingDao = new Job_postingDao();
		
		try {
			job_posting =job_postingDao.findByjob_id(request.getParameter("job_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(job_posting.getJob_id()!=null){
					System.out.println(job_posting);
					request.setAttribute("job_posting", job_posting);
					request.getRequestDispatcher("/jsps/job_posting/job_posting_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "job_posting not found");
			request.getRequestDispatcher("/jsps/job_posting/job_posting_read_output.jsp").forward(request, response);
		}
	}
}
