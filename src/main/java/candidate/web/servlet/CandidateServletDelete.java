package candidate.web.servlet;

import java.io.IOException;

//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;

//import javax.jws.WebService;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import candidate.dao.CandidateDao;
import candidate.domain.Candidate;
//import entity1.service.Entity1Exception;
//import entity1.service.Entity1Service;
/**
 * Servlet implementation class UserServlet
 */

public class CandidateServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String Null = null; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateServletDelete() {
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
		CandidateDao candidateDao = new CandidateDao();
		Candidate candidate = null;
		if(method.equals("search"))
		{
			try {
//				candidate to Candidate
				//employer = employerDao.findByemployer_id((request.getParameter("employer_id")));

				candidate = candidateDao.findByCandidate_id(request.getParameter("candidate_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
//			Entity1Service entity1service = new Entity1Service();		
			if(candidate.getCandidate_id()!=null){
						System.out.println(candidate);
						request.setAttribute("candidate", candidate);
						request.getRequestDispatcher("/jsps/candidate/candidate_delete_output.jsp").forward(request, response);
					
				}
				else{
				request.setAttribute("msg", "Candidate not found");
				request.getRequestDispatcher("/jsps/candidate/candidate_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				candidateDao.delete(request.getParameter("candidate_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Candidate Deleted");
			request.getRequestDispatcher("/jsps/candidate/candidate_read_output.jsp").forward(request, response);
		}
	}
}
