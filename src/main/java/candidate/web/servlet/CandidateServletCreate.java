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

import candidate.domain.Candidate;
import candidate.service.CandidateException;
import candidate.service.CandidateService;


/**
 * Servlet implementation class UserServlet
 */

public class CandidateServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateServletCreate() {
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
		CandidateService candidateservice = new CandidateService();
		Map<String,String[]> paramMap = request.getParameterMap();
		Candidate form = new Candidate();
		List<String> info = new ArrayList<String>();
		System.out.println(form);
		for(String name : paramMap.keySet()) {
			
			String[] values = paramMap.get(name);
			info.add(values[0]);
			System.out.println(name + ": " + Arrays.toString(values));
			System.out.println(info.add(values[0]));

		}
//		System.out.println("1");
//		System.out.println(info);

		form.setCandidate_id(info.get(1));
//		System.out.println("1");

		form.setFirst_name(info.get(2));
//		System.out.println("2");

		form.setLast_name(info.get(3));		
//		System.out.println("3");
		
		form.setEmail_id(info.get(4));		
//		System.out.println("3");
		
		form.setPhone_no(info.get(5));		
//		System.out.println("3");
		
		form.setExperience_year(info.get(6));		
//		System.out.println("3");
		
		form.setSkill(info.get(7));		
//		System.out.println("3");
		
		form.setSustainability_interest(info.get(8));		
//		System.out.println("3");
		
		try {
			System.out.println("3");
			candidateservice.create(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
			
		} catch (ClassNotFoundException | CandidateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}

}