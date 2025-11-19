package vn.iotstart.model;
import java.io.Serializable;
import java.sql.Date;

public class UsersModel implements Serializable {
	private int id;
	private String email;
	private String username;
	private String fullname;
	private String images;
	private String passwords;
	private int roleid;
	private String phone;
	private Date createdDate;
	
	
	public UsersModel() {
		super();
	}


	public UsersModel(int id, String username, String email, String fullname, String images, String passwords,
			int roleid, String phone, Date createdDate) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.fullname = fullname;
		this.images = images;
		this.passwords = passwords;
		this.roleid = roleid;
		this.phone = phone;
		this.createdDate = createdDate;

	}

	

	public UsersModel(String email, String username, String fullname, String images, String passwords, int roleid,
			String phone, Date createdDate) {
		super();
		this.email = email;
		this.username = username;
		this.fullname = fullname;
		this.images = images;
		this.passwords = passwords;
		this.roleid = roleid;
		this.phone = phone;
		this.createdDate = createdDate;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getImages() {
		return images;
	}


	public void setImages(String images) {
		this.images = images;
	}


	public String getPasswords() {
		return passwords;
	}


	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}


	public int getRoleid() {
		return roleid;
	}


	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Date getCreatedDate() {
		return createdDate;
	}


	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}


	@Override
	public String toString() {
		return "UsersModel [id=" + id + ", username=" + username + ", email=" + email + ", fullname=" + fullname
				+ ", images=" + images + ", passwords=" + passwords + ", roleid=" + roleid + ", phone=" + phone
				+ ", createdDate=" + createdDate + "]";
	}


	public String getAvatar() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	

}
