package candidate.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import candidate.dao.CandidateDao;
import candidate.domain.Candidate;

/**
 * Servlet implementation class UserServlet
 */

public class CandidateServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CandidateServletUpdate() {
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
		CandidateDao candidatedao = new CandidateDao();
		Candidate candidate = null;

		if(method.equals("search"))
		{
			try {
				candidate = candidatedao.findByCandidate_id(request.getParameter("candidate_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(candidate.getCandidate_id()!=null){
				request.setAttribute("candidate", candidate);
				request.getRequestDispatcher("/jsps/candidate/candidate_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Candidate not found");
				request.getRequestDispatcher("/jsps/candidate/candidate_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
		    candidate = new Candidate();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			candidate.setFirst_name(info.get(2));
			System.out.println(candidate.getFirst_name());
		
			
			candidate.setCandidate_id(request.getParameter("candidate_id"));
			System.out.println(candidate.getCandidate_id());

			try {
				candidatedao.update(candidate);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			
			request.setAttribute("candidate", candidate);
			request.setAttribute("msg", "Candidate Info Updated.");
			request.getRequestDispatcher("/jsps/candidate/candidate_read_output.jsp").forward(request, response);
		}
	}
}