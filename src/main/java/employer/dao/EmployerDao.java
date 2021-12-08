package employer.dao;

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
public class EmployerDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root"; //TODO change user
	
	/**
	 * password of your employer_name to connect to the database
	 */
	private String MySQL_password = "Chicago@2021"; //TODO change password

	public Employer findByemployer_id(String employer_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Employer employer = new Employer();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		    String sql = "select * from employer where employer_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,employer_id);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String employer_id1 = resultSet.getString("employer_id");
		    	if(employer_id1.equals(employer_id1)){
		    		employer.setEmployer_id(resultSet.getString("employer_id"));
		    		employer.setEmployer_name(resultSet.getString("employer_name"));
		    		employer.setEmployer_headquarters(resultSet.getString("employer_headquarters"));
		    		employer.setEmployer_size(resultSet.getString("employer_size"));	
		    		employer.setEmployer_about(resultSet.getString("employer_about"));	
		    		employer.setDomain_id(resultSet.getString("domain_id"));	
		    		employer.setSustainability_interest(resultSet.getString("sustainability_interest"));	

		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return employer;
	}	
	
	/**
	 * insert Employer
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Employer form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "insert into employer values(?,?,?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,form.getEmployer_id());
		    preparestatement.setString(2,form.getEmployer_name());
		    preparestatement.setString(3,form.getEmployer_headquarters());
		    preparestatement.setString(4,form.getEmployer_size());
		    preparestatement.setString(5,form.getEmployer_about());
		    preparestatement.setString(6,form.getDomain_id());
		    preparestatement.setString(7,form.getSustainability_interest());
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
	public void update(Employer form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "UPDATE employer SET employer_name = ? where employer_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			preparestatement.setString(1,form.getEmployer_name());
			preparestatement.setString(2,form.getEmployer_id());

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