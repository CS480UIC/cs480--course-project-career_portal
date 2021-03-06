package candidate.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import candidate.dao.CandidateDao;
import candidate.domain.Candidate;


/**
 * Servlet implementation class UserServlet
 */

public class CandidateServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateServletRead() {
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
		Candidate candidate = null;
		CandidateDao candidateDao = new CandidateDao();
		
		try {
			candidate = candidateDao.findByCandidate_id(request.getParameter("candidate_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(candidate.getCandidate_id()!=null){
					System.out.println(candidate);
					request.setAttribute("candidate", candidate);
					request.getRequestDispatcher("/jsps/candidate/candidate_read_output.jsp").forward(request, response);
			}
			else{
			request.setAttribute("msg", "candidate not found");
			request.getRequestDispatcher("/jsps/candidate/candidate_read_output.jsp").forward(request, response);
		}
	}
}
