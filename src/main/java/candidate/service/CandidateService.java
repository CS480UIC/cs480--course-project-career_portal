package candidate.service;


import candidate.dao.CandidateDao;
import candidate.domain.Candidate;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class CandidateService {
	private CandidateDao candidateDao = new CandidateDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Candidate form) throws CandidateException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the primary key of Entity1
		Candidate candidate=  candidateDao.findByCandidate_id(form.getCandidate_id());
		if(candidate.getCandidate_id()!=null && candidate.getCandidate_id().equals(form.getCandidate_id())) throw new CandidateException("This user name has been registered!");
		candidateDao.add(form);
	}
	/**
	 * Login function
	 * @param form
	 * @return
	 * @throws UserException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	
}
