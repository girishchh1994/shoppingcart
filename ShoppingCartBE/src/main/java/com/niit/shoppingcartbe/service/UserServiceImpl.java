package com.niit.shoppingcartbe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartbe.DAO.UserDAO;
import com.niit.shoppingcartbe.model.User;
@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;




	public boolean save(User u)
	{
		return userDAO.save(u);
	}
	public List<User> list()
	{
		return userDAO.list();
	}
	public boolean update(User u)
	{
		return userDAO.update(u);
	}
	public boolean delete(User u)
	{
		return userDAO.delete(u);

	}
	public boolean delete(String name)
	{
		return userDAO.delete(name);
	}
	public User getUserByName(String name)
	{
		return userDAO.getUserByName(name);
	}
	public boolean saveOrUpdate(User u)
	{
		return userDAO.saveOrUpdate(u);
	}
	public boolean validate(String name, String pwd) 
	{
		return userDAO.validate(name, pwd);
	}

}
