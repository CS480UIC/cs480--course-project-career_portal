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

import interview_review.dao.Interview_reviewDao;
import interview_review.domain.Interview_review;

/**
 * Servlet implementation class UserServlet
 */

public class Interview_reviewServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Interview_reviewServletUpdate() {
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
		Interview_reviewDao interview_reviewdao = new Interview_reviewDao();
		Interview_review interview_review = null;

		if(method.equals("search"))
		{
			try {
				interview_review = interview_reviewdao.findByReview_id(request.getParameter("review_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(interview_review.getReview_id()!=null){
				request.setAttribute("interview_review", interview_review);
				request.getRequestDispatcher("/jsps/interview_review/interview_review_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "interview_review not found");
				request.getRequestDispatcher("/jsps/interview_review/interview_review_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			interview_review = new Interview_review();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			interview_review.setReview_id(info.get(1));
			System.out.println(interview_review.getReview_id());
		
			
			interview_review.setReview_id(request.getParameter("review_id"));
			System.out.println(interview_review.getReview_id());

			try {
				interview_reviewdao.update(interview_review);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("interview_review", interview_review);
			request.setAttribute("msg", "interview_review Info Updated.");
			request.getRequestDispatcher("/jsps/interview_review/interview_review_read_output.jsp").forward(request, response);
		}
	}
}