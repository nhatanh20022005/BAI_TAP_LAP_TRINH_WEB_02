package vn.iotstart.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vn.iotstart.config.DBMySQLConnect;
import vn.iotstart.dao.UserDao;
import vn.iotstart.model.UsersModel;

public class UserDaoImpl  extends DBMySQLConnect implements UserDao {
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	@Override
	public UsersModel get(String username) {
		String sql = "SELECT * FROM users WHERE username = ? ";
		try {
		conn = super.getDatabaseConnection();
		ps = conn.prepareStatement(sql);
		ps.setString(1, username);
		rs = ps.executeQuery();
		while (rs.next()) {
		UsersModel user = new UsersModel();
		user.setId(rs.getInt("ID"));
		user.setUsername(rs.getString("username"));
		user.setEmail(rs.getString("email"));
		user.setFullname(rs.getString("fullname"));
		user.setPasswords(rs.getString("password"));
		user.setImages(rs.getString("avatar"));
		user.setRoleid(rs.getInt("roleid"));
		user.setPhone(rs.getString("phone"));
		user.setCreatedDate(rs.getDate("createddate"));
		

		return user; 
		}
		
		} catch (Exception e) {e.printStackTrace(); }
		return null;
	}
	@Override
	public void insert(UsersModel user) {
		String sql = "INSERT INTO users (email, username, fullname, password, avatar, roleid,phone,createddate) VALUES (?,?,?,?,?,?,?,?)";
				try {
				conn = super.getDatabaseConnection();
				ps = conn.prepareStatement(sql);
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getUsername());
				ps.setString(3, user.getFullname());
				ps.setString(4, user.getPasswords());
				ps.setString(5, user.getImages());
				ps.setInt(6,user.getRoleid());
				ps.setString(7,user.getPhone());
				ps.setDate(8, user.getCreatedDate());
				ps.executeUpdate();
				} catch (Exception e) {e.printStackTrace();}
	
	}
	@Override
	public boolean checkExistEmail(String email) {
		boolean duplicate = false;
		String query = "select * from users where email = ?";
		try {
		conn = super.getDatabaseConnection();
		ps = conn.prepareStatement(query);
		ps.setString(1, email);
		rs = ps.executeQuery();
		if (rs.next()) {
		duplicate = true;
		}
		ps.close();
		conn.close();
		} catch (Exception ex) {}
		return duplicate;
	}
	@Override
	public boolean checkExistUsername(String username) {
		boolean duplicate = false;
		String query = "select * from users where username = ?";
		try {
		conn =  super.getDatabaseConnection();
		ps = conn.prepareStatement(query);
		ps.setString(1, username);
		rs = ps.executeQuery();
		if (rs.next()) {
		duplicate = true;
		}
		ps.close();
		conn.close();
		} catch (Exception ex) {}
		return duplicate;

	}
	@Override
	public boolean checkExistPhone(String phone) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean reset_matkhau(String username, String password) {
		 String sql = "UPDATE users SET password = ? WHERE username = ?";
		    try (Connection conn = super.getDatabaseConnection();
		         PreparedStatement ps = conn.prepareStatement(sql)) {
		        ps.setString(1, password);   // sau này nên là mật khẩu đã mã hoá
		        ps.setString(2, username);
		        int rows = ps.executeUpdate();  // số dòng bị ảnh hưởng
		        return rows > 0;                // true nếu có update (user tồn tại)

		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
		
	}
}
