package domain.domain;

/**
 * User object
 * 
 * @author Aayush Makharia
 * 
 */
public class Domain {
	/*
	 * Correspond to the user table
	 */
	
	private String domain_id;
	private String name; 
	private String description;
	
	
	
	public String getDomain_id() {
		return domain_id;
	}

	public void setDomain_id(String domain_id) {
		this.domain_id = domain_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	

	@Override
	public String toString() {
		return "User [ domain_id=" + domain_id + ", name="
				+ name + ", description=" + description 
				+"]";
	}
}
