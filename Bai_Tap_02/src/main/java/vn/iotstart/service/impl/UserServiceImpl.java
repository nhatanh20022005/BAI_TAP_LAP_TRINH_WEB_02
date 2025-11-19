package vn.iotstart.service.impl;

import vn.iotstart.dao.UserDao;
import vn.iotstart.dao.impl.UserDaoImpl;
import vn.iotstart.model.UsersModel;
import vn.iotstart.service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();

	@Override
	public UsersModel login(String username, String password) {
		UsersModel user = this.get(username);
		if (user != null && password.equals(user.getPasswords())) {
		return user;
		}
		return null;
	}

	@Override
	public UsersModel get(String username) {
		return userDao.get(username);
	}

	@Override
	public void insert(UsersModel user) {
		userDao.insert(user);
	}

	@Override
	public boolean register(String email, String password, String username, String fullname, String phone) {
		if (userDao.checkExistUsername(username)) {
			return false;
			}
			long millis=System.currentTimeMillis();
			java.sql.Date date=new java.sql.Date(millis);
			userDao.insert(new UsersModel(email, username, fullname,null,password,5,phone,date));
			return true;
	}

	@Override
	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);

	}

	@Override
	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);}


	@Override
	public boolean checkExistPhone(String phone) {
		return userDao.checkExistPhone(phone);
	}

	@Override
	public boolean reset_matkhau(String username, String password) {
		return userDao.reset_matkhau(username, password);
	}
	
	
	
}
