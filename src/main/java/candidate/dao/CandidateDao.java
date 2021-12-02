package candidate.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//
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
	private String MySQL_user = "root";  //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "Chicago@2021";  //TODO change password
	
	/**
	 * CreateCandidate
	 */
	public void createCandidate(Candidate form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "INSERT INTO candidate (candidate_id, first_name, last_name, email_id, phone_no, experience_year,skill,sustainability_interest ) VALUES (?,?,?,?,?,?,?,?)";
			
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
	 * FindCandidate
	 */
	public Candidate findByCandidate_id(String candidate_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Candidate candidate = new Candidate();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		
			String sql = "SELECT * FROM candidate WHERE candidate_id=?";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,candidate_id);
		    
		    ResultSet resultSet = preparestatement.executeQuery();
		    while(resultSet.next()){
		    	String id = resultSet.getString("candidate_id");
		    	if(id.equals(candidate_id)){
		    		candidate.setCandidate_id(candidate_id);
		    		candidate.setFirst_name(resultSet.getString("first_name"));
		    		candidate.setLast_name(resultSet.getString("last_name"));
		    		candidate.setEmail_id(resultSet.getString("email_id"));
		    		candidate.setPhone_no(resultSet.getString("phone_no"));
		    		candidate.setExperience_year(resultSet.getString("experience_year"));
		    		candidate.setPhone_no(resultSet.getString("phone_no"));
		    	}
		    }
		
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
		return candidate;
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
	 * @param username
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