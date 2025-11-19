package vn.iotstart.service;

import vn.iotstart.model.UsersModel;

public interface UserService {
	UsersModel login(String username, String password);
	UsersModel get(String username);
	void insert(UsersModel user);
	boolean register(String email, String password, String username, String fullname, String phone);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);
	boolean reset_matkhau(String username, String password);

}
