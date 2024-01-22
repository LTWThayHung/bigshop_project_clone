package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import entity.Account;

public class AccountDAO {
	public Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public Account login(String user, String pass) {
		//cau query truy van user va pass tuong ung
		String query = "select * from Account \n"
				+ "where [user] = ?\n"
				+ "and [pass] = ?";
		try {
			//mo ket noi toi sql server
			conn = new DBContext().getConnection();
			//nem cau lanh query sang sql server
			ps = conn.prepareStatement(query);
			//set user va pass vao ?
			ps.setString(1,	user);
			ps.setString(2, pass);
			//excute query va nhan ket qua tra ve
			rs = ps.executeQuery();
			//lay du lieu tu bang nem sang 1 object
			while (rs.next()) {
				return new Account(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getInt(4), 
						rs.getInt(5));
			}
		}catch (Exception e) {
		}
		return null;
	}
	public Account checkAccountExist(String user) {
		String query = "select * from Account \n"
				+ "where [user] = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1,	user);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getInt(4), 
						rs.getInt(5));
			}
		}catch (Exception e) {
		}
		return null;
	}
	public void signup(String user, String pass) {
		String query = "insert into Account \n"
				+ "values (?, ?, 0, 0)";
		try {
			//mo ket noi sql
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1,	user);
			ps.setString(2,	pass);
			ps.executeUpdate();
		}catch (Exception e) {
		}
	}
//	public static void main(String[] args) {
//		AccountDAO dao = new AccountDAO();
//		System.out.println(dao.login("minh", "1"));
//	}
}
