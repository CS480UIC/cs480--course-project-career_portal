package candidate.domain;

/**
 * User object
 * 
 * @author Aayush Makharia
 * 
 */
public class Candidate {
	/*
	 * Correspond to the user table
	 */
	
	private String candidate_id;
	private String first_name; 
	private String last_name;
	private String email_id;
	private String phone_no;
	private String experience_year;
	private String skill;
	private String sustainability_interest;
	
	
	public String getCandidate_id() {
		return candidate_id;
	}

	public void setCandidate_id(String candidate_id) {
		this.candidate_id = candidate_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	
	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}
	
	public String getExperience_year() {
		return experience_year;
	}

	public void setExperience_year(String experience_year) {
		this.experience_year = experience_year;
	}
	
	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}
	
	public String getSustainability_interest() {
		return sustainability_interest;
	}

	public void setSustainability_interest(String sustainability_interest) {
		this.sustainability_interest = sustainability_interest;
	}
	

	@Override
	public String toString() {
		return "User [ candidate_id=" + candidate_id + ", first_name="
				+ first_name + ", last_name=" + last_name 
				+", email_id=" + email_id +", phone_no=" + phone_no 
				+", experience_year=" + experience_year +", skill=" + skill 
				+", sustainability_interest=" + sustainability_interest +"]";
	}
}
