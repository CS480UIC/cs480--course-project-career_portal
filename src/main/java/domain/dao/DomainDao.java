package domain.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//
//import java.util.ArrayList;
//import java.util.List;

import domain.domain.Domain;




/**
 * DDL functions performed in database
 */
public class DomainDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "root";  //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "Chicago123";  //TODO change password
	
	/**
	 * CreateCandidate
	 */
	public void createDomain(Domain form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "INSERT INTO domain (domain_id, name, description) VALUES (?,?,?)";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,form.getDomain_id());
		    preparestatement.setString(2,form.getName());
		    preparestatement.setString(3,form.getDescription());
		   
		    
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * FindCandidate
	 */
	public Domain findByDomain_id(String domain_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Domain domain = new Domain();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
		
			String sql = "SELECT * FROM domain WHERE domain_id=?";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,domain_id);
		    
		    ResultSet resultSet = preparestatement.executeQuery();
		    while(resultSet.next()){
		    	String id = resultSet.getString("domain_id");
		    	if(id.equals(domain_id)){
		    		domain.setDomain_id(domain_id);
		    		domain.setName(resultSet.getString("name"));
		    		domain.setDescription(resultSet.getString("description"));
		    		
		    	}
		    }
		
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
		return domain;
	}
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(Domain form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "UPDATE domain SET name = ? where domain_id = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    //preparestatement.setString(1,form.getDomain_id());
			preparestatement.setString(1,form.getName());
			preparestatement.setString(2,form.getDomain_id());
		    //preparestatement.setString(3,form.getDescription());
		    
		    
		   
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
	public void delete(String domain_id) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/career_portal", MySQL_user, MySQL_password);
			
			String sql = "delete from domain where domain_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,domain_id);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}