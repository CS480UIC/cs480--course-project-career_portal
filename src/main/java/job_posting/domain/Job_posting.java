package job_posting.domain;

/**
 * User object
 * @author Diana Roy
 */
public class Job_posting {
	/*
	 * Correspond to the user table
	 */
	
	private String job_id;
	private String title; 
	private String employer_id;
	private String job_location;
	private String job_description;
	private String application_deadline;
	private String posting_date;

	
	public String getJob_id() {
		return employer_id;
	}

	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEmployer_id() {
		return employer_id;
	}

	public void setEmployer_id(String employer_id) {
		this.employer_id = employer_id;
	}
	public String getJob_location() {
		return job_location;
	}

	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}
	public String getJob_description() {
		return job_description;
	}

	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	public String getApplication_deadline() {
		return application_deadline;
	}

	public void setApplication_deadline(String application_deadline) {
		this.application_deadline = application_deadline;
	}
	
	public String getPosting_date() {
		return posting_date;
	}

	public void setPosting_date(String posting_date) {
		this.posting_date = posting_date;
	}
	

	
	@Override
	public String toString() {
		return "Job [ job_id=" + job_id + ", title="
				+ title + ", employer_id=" + employer_id +", job_location=" + job_location +", job_description=" + job_description +", application_deadline=" + application_deadline +", posting_date=" + posting_date +"]";
	}
}
