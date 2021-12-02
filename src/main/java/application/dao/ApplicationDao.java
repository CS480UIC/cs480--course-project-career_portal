package application.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import application.domain.Application;

/**
 * DDL functions performed in database
 */
public class ApplicationDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your application_name to connect to the database
	 */
	private String MySQL_password = "Chicago@2021"; //TODO change password

	public Application findByapplicant_id(String applicant_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Application application = new Application();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		    String sql = "select * from application where applicant_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,applicant_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String applicant_id1 = resultSet.getString("applicant_id");
		    	if(applicant_id1.equals(applicant_id)){
		    		application.setApplicant_id(resultSet.getString("applicant_id"));
		    		application.setCandidate_id(resultSet.getString("candidate_id"));
		    		application.setJob_id(resultSet.getString("job_id"));
		    		application.setApplication_status(resultSet.getString("application_status"));	

		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return application;
	}	
	
	/**
	 * insert Application
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Application form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "insert into application values(?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getApplicant_id());
		    preparestatement.setString(2,form.getCandidate_id());
		    preparestatement.setString(3,form.getJob_id());
		    preparestatement.setString(4,form.getApplication_status());
		   
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
	public void update(Application form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "UPDATE application SET application_status = ? where applicant_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			preparestatement.setString(1,form.getApplication_status());
			preparestatement.setString(2,form.getApplicant_id());

		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param application_name
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String applicant_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "delete from application where applicant_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,applicant_id);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}