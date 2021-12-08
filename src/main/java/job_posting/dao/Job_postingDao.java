package job_posting.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import job_posting.domain.Job_posting;

/**
 * DDL functions performed in database
 */
public class Job_postingDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your job _name to connect to the database
	 */
	private String MySQL_password = "Chicago123"; //TODO change password

	public Job_posting findByjob_id(String job_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Job_posting job_posting = new Job_posting();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		    String sql = "select * from job_posting where job_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,job_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String job_id1 = resultSet.getString("job_id");
		    	if(job_id1.equals(job_id1)){
		    		job_posting.setJob_id(resultSet.getString("job_id"));
		    		job_posting.setTitle(resultSet.getString("title"));
		    		job_posting.setEmployer_id(resultSet.getString("employer_id"));
		    		job_posting.setJob_location(resultSet.getString("job_location"));
		    		job_posting.setJob_description(resultSet.getString("job_description"));	
		    		job_posting.setApplication_deadline(resultSet.getString("application_deadline"));	
		    		job_posting.setPosting_date(resultSet.getString("posting_date"));	

		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return job_posting;
	}	
	
	/**
	 * insert job_posting
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Job_posting form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "insert into job_posting values(?,?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getJob_id());
		    preparestatement.setString(2,form.getTitle());
		    preparestatement.setString(3,form.getEmployer_id());
		    preparestatement.setString(4,form.getJob_location());
		    preparestatement.setString(5,form.getJob_description());
		    preparestatement.setString(6,form.getApplication_deadline());
		    preparestatement.setString(7,form.getPosting_date());
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
	public void update(Job_posting form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "UPDATE job_posting SET title = ? where job_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			preparestatement.setString(1,form.getTitle());
			preparestatement.setString(2,form.getJob_id());

		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param jobposting_name
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String job_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "delete from job_posting where job_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,job_id);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}