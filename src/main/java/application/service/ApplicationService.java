package application.service;


import application.dao.ApplicationDao;
import application.domain.Application;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class ApplicationService {
	private ApplicationDao applicationDao = new ApplicationDao();
	
	/**
	 * register a Application
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Application form) throws ApplicationException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the primary key of Application
		Application application = applicationDao.findByapplicant_id(form.getApplicant_id());
		if(application.getApplicant_id()!=null && application.getApplicant_id().equals(form.getApplicant_id())) throw new ApplicationException("This user name has been registered!");
		applicationDao.add(form);
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
