package interview_review.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import interview_review.dao.Interview_reviewDao;
import interview_review.domain.Interview_review;


/**
 * Servlet implementation class UserServlet
 */

public class Interview_reviewServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Interview_reviewServletRead() {
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
		Interview_review interview_review = null;
		Interview_reviewDao interview_reviewDao = new Interview_reviewDao();
		
		try {
			interview_review = interview_reviewDao.findByReview_id(request.getParameter("review_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(interview_review.getReview_id()!=null){
					System.out.println(interview_review);
					request.setAttribute("interview_review", interview_review);
					request.getRequestDispatcher("/jsps/interview_review/interview_review_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "interview_review not found");
			request.getRequestDispatcher("/jsps/interview_review/interview_review_read_output.jsp").forward(request, response);
		}
	}
}

