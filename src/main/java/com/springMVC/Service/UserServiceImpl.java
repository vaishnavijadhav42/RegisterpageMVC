package com.springMVC.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMVC.Dao.UserDao;
import com.springMVC.entity.User;
@Service
public class UserServiceImpl implements UserService{
    
	@Autowired
	private UserDao userdao;
	@Override
	public int registerUser(User user) {
		// TODO Auto-generated method stub
		return userdao.saveUser(user);
	}

	
	
	
}
