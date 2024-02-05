package com.springMVC.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springMVC.entity.User;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int saveUser(User user) {
		String sql = "insert into user(name,email,password) values(?,?,?)";
		int i = jdbcTemplate.update(sql, user.getFullname(), user.getEmail(), user.getPassword());
		return i;
	}
	
	
}
