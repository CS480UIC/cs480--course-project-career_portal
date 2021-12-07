package interview_review.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import interview_review.domain.Interview_review;
import interview_review.service.Interview_reviewException;
import interview_review.service.Interview_reviewService;

/**
 * Servlet implementation class UserServlet
 */

public class Interview_reviewServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Interview_reviewServletCreate() {
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
		Interview_reviewService interview_reviewservice = new Interview_reviewService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Interview_review form = new Interview_review();
		List<String> info = new ArrayList<String>();

		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		form.setReview_id(info.get(0));
		form.setEmployer_id(info.get(1));
		form.setCandidate_id(info.get(2));
		form.setTitle(info.get(3));	
		form.setPosting_date(info.get(4));	
		form.setReview(info.get(5));	
		
		try {
			interview_reviewservice.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | Interview_reviewException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		
	}

}