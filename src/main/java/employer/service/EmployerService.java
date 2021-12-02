package employer.service;


import employer.dao.EmployerDao;
import employer.domain.Employer;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class EmployerService {
	private EmployerDao employerDao = new EmployerDao();
	
	/**
	 * register a Employer
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Employer form) throws EmployerException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the primary key of Employer
		Employer employer = employerDao.findByemployer_id(form.getEmployer_id());
		if(employer.getEmployer_id()!=null && employer.getEmployer_id().equals(form.getEmployer_id())) throw new EmployerException("This user name has been registered!");
		employerDao.add(form);
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
