package job_posting.service;


import job_posting.dao.Job_postingDao;
import job_posting.domain.Job_posting;

/**
 * logic functions such as register, login
 * @author diana
 *
 */
public class Job_postingService {
	private Job_postingDao job_postingDao = new Job_postingDao();
	
	/**
	 * register a job
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Job_posting form) throws Job_postingException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the primary key of Employer
		Job_posting job_posting = job_postingDao.findByjob_id(form.getJob_id());
		if(job_posting.getJob_id()!=null && job_posting.getJob_id().equals(form.getJob_id())) throw new Job_postingException("This job name has been registered!");
		job_postingDao.add(form);
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
