package interview_review.domain;

/**
 * User object
 * @author Aayush Makharia
 */
public class Interview_review {
	/*
	 * Correspond to the user table
	 */
	
	private String review_id;
	private String employer_id; 
	private String candidate_id;
	private String title;
	private String posting_date;
	private String review;

	
	public String getReview_id() {
		return employer_id;
	}

	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}

	public String getEmployer_id() {
		return employer_id;
	}

	public void setEmployer_id(String employer_id) {
		this.employer_id = employer_id;
	}

	public String getCandidate_id() {
		return candidate_id;
	}

	public void setCandidate_id(String candidate_id) {
		this.candidate_id = candidate_id;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	public String getPosting_date() {
		return posting_date;
	}

	public void setPosting_date(String posting_date) {
		this.posting_date = posting_date;
	}
	
	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}


	
	@Override
	public String toString() {
		return "Interview_review [ review_id=" + review_id + ", employer_id="
				+ employer_id + ", candidate_id=" + candidate_id +", title=" + title +", posting_date=" + posting_date +", review=" + review +"]";
	}
}
