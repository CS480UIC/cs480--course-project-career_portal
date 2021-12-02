package application.domain;

/**
 * User object
 * @author Aayush Makharia
 */
public class Application {
	/*
	 * Correspond to the user table
	 */
	
	private String applicant_id;
	private String candidate_id; 
	private String job_id;
	private String application_status;


	
	public String getApplicant_id() {
		return applicant_id;
	}

	public void setApplicant_id(String applicant_id) {
		this.applicant_id = applicant_id;
	}

	public String getCandidate_id() {
		return candidate_id;
	}

	public void setCandidate_id(String candidate_id) {
		this.candidate_id = candidate_id;
	}

	public String getJob_id() {
		return job_id;
	}

	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	
	public String getApplication_status() {
		return application_status;
	}

	public void setApplication_status(String application_status) {
		this.application_status = application_status;
	}
	
	
	@Override
	public String toString() {
		return "Application [ application_id=" + applicant_id + ", candidate_id="
				+ candidate_id + ", job_id=" + job_id +", application_status=" + application_status+"]";
	}
}
