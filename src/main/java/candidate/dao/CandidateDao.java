package candidate.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import candidate.domain.Candidate;

/**
 * DDL functions performed in database
 */
public class CandidateDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your candidate_name to connect to the database
	 */
	private String MySQL_password = "Chicago@2021"; //TODO change password

	public Candidate findByCandidate_id(String candidate_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Candidate candidate = new Candidate();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		    String sql = "select * from candidate where candidate_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,candidate_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String applicant_id1 = resultSet.getString("candidate_id");
		    	if(applicant_id1.equals(candidate_id)){
		    		candidate.setCandidate_id(resultSet.getString("candidate_id"));
		    		candidate.setFirst_name(resultSet.getString("first_name"));	
		    		candidate.setLast_name(resultSet.getString("last_name"));	
		    		candidate.setEmail_id(resultSet.getString("email_id"));	
		    		
		    		candidate.setPhone_no(resultSet.getString("phone_no"));	
		    		candidate.setExperience_year(resultSet.getString("experience_year"));	
		    		candidate.setSkill(resultSet.getString("skill"));	
		    		candidate.setSustainability_interest(resultSet.getString("sustainability_interest"));	
		    		

		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return candidate;
	}	
	
	/**
	 * insert Candidate
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Candidate form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "insert into candidate values(?,?,?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getCandidate_id());
		    preparestatement.setString(2,form.getFirst_name());
		    preparestatement.setString(3,form.getLast_name());
		    preparestatement.setString(4,form.getEmail_id());
		    preparestatement.setString(5,form.getPhone_no());
		    preparestatement.setString(6,form.getExperience_year());
		    preparestatement.setString(7,form.getSkill());
		    preparestatement.setString(8,form.getSustainability_interest());
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(Candidate form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "UPDATE candidate SET first_name = ? where candidate_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			preparestatement.setString(1,form.getFirst_name());
			preparestatement.setString(2,form.getCandidate_id());
			
//			preparestatement.setString(3,form.getLast_name());
//			preparestatement.setString(4,form.getEmail_id());
//			preparestatement.setString(5,form.getPhone_no());
//			preparestatement.setString(6,form.getExperience_year());
//			preparestatement.setString(7,form.getSkill());
//			preparestatement.setString(8,form.getSustainability_interest());

		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param candidate_name
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String candidate_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "delete from candidate where candidate_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,candidate_id);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}