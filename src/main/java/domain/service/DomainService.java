package domain.service;


import domain.dao.DomainDao;
import domain.domain.Domain;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class DomainService {
	private DomainDao domainDao = new DomainDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Domain form) throws DomainException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the primary key of Entity1
		Domain domain=  domainDao.findByDomain_id(form.getDomain_id());
		if(domain.getDomain_id()!=null && domain.getDomain_id().equals(form.getDomain_id())) throw new DomainException("This domain name has been registered!");
		domainDao.createDomain(form);
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
