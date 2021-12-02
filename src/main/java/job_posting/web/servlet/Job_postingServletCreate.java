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

import job_posting.domain.Job_posting;
import job_posting.service.Job_postingException;
import job_posting.service.Job_postingService;

/**
 * Servlet implementation class UserServlet
 */

public class Job_postingServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Job_postingServletCreate() {
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
		Job_postingService job_postingservice = new Job_postingService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Job_posting form = new Job_posting();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setJob_id(info.get(0));
		form.setTitle(info.get(1));
		form.setEmployer_id(info.get(2));
		form.setJob_location(info.get(3));	
		form.setJob_description(info.get(4));	
		form.setApplication_deadline(info.get(5));	
		form.setPosting_date(info.get(6));	
		
		try {
			job_postingservice.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | Job_postingException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}