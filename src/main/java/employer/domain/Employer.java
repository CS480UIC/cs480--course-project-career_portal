package employer.domain;

/**
 * User object
 * @author Aayush Makharia
 */
public class Employer {
	/*
	 * Correspond to the user table
	 */
	
	private String employer_id;
	private String employer_name; 
	private String employer_headquarters;
	private String employer_size;
	private String employer_about;
	private String domain_id;
	private String sustainability_interest;

	
	public String getEmployer_id() {
		return employer_id;
	}

	public void setEmployer_id(String employer_id) {
		this.employer_id = employer_id;
	}

	public String getEmployer_name() {
		return employer_name;
	}

	public void setEmployer_name(String employer_name) {
		this.employer_name = employer_name;
	}

	public String getEmployer_headquarters() {
		return employer_headquarters;
	}

	public void setEmployer_headquarters(String employer_headquarters) {
		this.employer_headquarters = employer_headquarters;
	}
	
	public String getEmployer_size() {
		return employer_size;
	}

	public void setEmployer_size(String employer_size) {
		this.employer_size = employer_size;
	}
	public String getEmployer_about() {
		return employer_about;
	}

	public void setEmployer_about(String employer_about) {
		this.employer_about = employer_about;
	}
	
	public String getDomain_id() {
		return domain_id;
	}

	public void setDomain_id(String domain_id) {
		this.domain_id = domain_id;
	}
	
	public String getSustainability_interest() {
		return sustainability_interest;
	}

	public void setSustainability_interest(String sustainability_interest) {
		this.sustainability_interest = sustainability_interest;
	}

	
	@Override
	public String toString() {
		return "Employer [ employer_id=" + employer_id + ", employer_name="
				+ employer_name + ", employer_headquarters=" + employer_headquarters +", employer_size=" + employer_size +", employer_about=" + employer_about +", domain_id=" + domain_id +", sustainability_interest=" + sustainability_interest +"]";
	}
}
