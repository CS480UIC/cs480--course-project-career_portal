package interview_review.service;


import interview_review.domain.Interview_review;
import interview_review.dao.Interview_reviewDao;
/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class Interview_reviewService {
	private Interview_reviewDao interview_reviewDao = new Interview_reviewDao();
	
	/**
	 * register a Employer
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Interview_review form) throws Interview_reviewException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		
		// check the primary key of Employer
		Interview_review interview_review = interview_reviewDao.findByreview_id(form.getReview_id());
		if(interview_review.getReview_id()!=null && interview_review.getReview_id().equals(form.getReview_id())) throw new Interview_reviewException("This user name has been registered!");
		interview_reviewDao.add(form);
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
