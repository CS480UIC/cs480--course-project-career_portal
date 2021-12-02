
   
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

public class Job_postingServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Null = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Job_postingServletDelete() {
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
		Job_postingDao job_postingDao = new Job_postingDao();
		Job_posting job_posting = null;
		if(method.equals("search"))
		{
			try {
				job_posting = job_postingDao.findByjob_id((request.getParameter("job_id")));
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
						request.getRequestDispatcher("/jsps/job_posting/job_posting_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "job not found");
				request.getRequestDispatcher("/jsps/job_posting/job_posting_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				job_postingDao.delete(request.getParameter("job_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "job Deleted");
			request.getRequestDispatcher("/jsps/job_posting/job_posting_read_output.jsp").forward(request, response);
		}
	}
}
