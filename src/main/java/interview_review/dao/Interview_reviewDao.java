package interview_review.dao;
import interview_review.domain.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import employer.domain.Employer;

/**
 * DDL functions performed in database
 */
public class Interview_reviewDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your employer_name to connect to the database
	 */
	private String MySQL_password = "Chicago@2021"; //TODO change password

	public Interview_review findByreview_id(String review_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Interview_review interview_review = new Interview_review();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		    String sql = "select * from interview_review where review_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,review_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String review_id1 = resultSet.getString("review_id");
		    	if(review_id1.equals(review_id)){
		    		interview_review.setReview_id(resultSet.getString("review_id"));
		    		interview_review.setEmployer_id(resultSet.getString("employer_id"));
		    		interview_review.setCandidate_id(resultSet.getString("candidate_id"));
		    		interview_review.setTitle(resultSet.getString("title"));	
		    		interview_review.setPosting_date(resultSet.getString("posting_date"));
		    		interview_review.setPosting_date(resultSet.getString("review"));
		    		

		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return interview_review;
	}	
	
	/**
	 * insert Employer
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Interview_review form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "insert into interview_review values(?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getReview_id());
		    preparestatement.setString(2,form.getEmployer_id());
		    preparestatement.setString(3,form.getCandidate_id());
		    preparestatement.setString(4,form.getTitle());
		    preparestatement.setString(5,form.getPosting_date());
		    preparestatement.setString(6,form.getReview());
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
	public void update(Interview_review form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "UPDATE interview_review SET review = ? where review_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			preparestatement.setString(1,form.getReview());
			preparestatement.setString(2,form.getReview_id());

		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param employer_name
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String employer_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "delete from employer where employer_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,employer_id);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}