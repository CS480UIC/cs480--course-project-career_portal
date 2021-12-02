package job_posting.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import job_posting.dao.Job_postingDao;
import job_posting.domain.Job_posting;

//import entity1.service.Entity1Service;

/**
 * Servlet implementation class UserServlet
 */


public class Job_postingServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Job_postingServletUpdate() {
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
		Job_postingDao job_postingDao = new Job_postingDao();
		Job_posting job_posting = null;		
		if(method.equals("search"))
		{
			try {
			job_posting = job_postingDao.findByjob_id(request.getParameter("job_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
//			Entity1Service entity1service = new Entity1Service();		
			if(job_posting.getJob_id()!=null){
				System.out.println("11");

						System.out.println(job_posting);
						request.setAttribute("job_posting", job_posting);
						request.getRequestDispatcher("/jsps/job_posting/job_posting_update_output.jsp").forward(request, response);
					
				}
				else{
					
				request.setAttribute("msg", "job_posting not found");
				request.getRequestDispatcher("/jsps/job_posting/job_posting_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Job_posting form = new Job_posting();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				
				String[] values = paramMap.get(name);
				info.add(values[0]);
				System.out.println(name + ": " + Arrays.toString(values));
			}
			form.setTitle(info.get(2));
			form.setEmployer_id(info.get(3));
			form.setJob_location(info.get(4));
			form.setJob_location(info.get(4));
			form.setJob_description(info.get(5));
			form.setApplication_deadline(info.get(6));
			form.setPosting_date(info.get(7));

			form.setJob_id(request.getParameter("job_id"));

			try {
				job_postingDao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Entity Updated");
			request.getRequestDispatcher("/jsps/job_posting/job_posting_read_output.jsp").forward(request, response);
		}
	}
}



