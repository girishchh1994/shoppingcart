package com.niit.shoppingcartbe.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcartbe.DAO.UserDAO;
import com.niit.shoppingcartbe.model.User;

public class UserTest {
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.sports.ZenSportsBackEnd");
		context.refresh();
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void testAddUser()
	{
		user=new User();
		user.setEnable("true");
		user.setName("Girish");
		user.setContact("+9198999999");
		user.setPwd("girish");
		assertEquals("Successfully added a user inside the table .",true,userDAO.save(user));
	}
	
	@Test
	public void testGetUser()
	{
		user=(User) userDAO.list();
		assertEquals("Retrieving data based on id from table","Girish",user.getName());
	}
	
	@Test
	public void testUpdateUser()
	{
		user=userDAO.getUserByName("Girish");
		user.setEnable("true");
		user.setName("Girish");
		user.setContact("+9198999999");
		user.setPwd("girish");
		
		assertEquals("Updating user based on id from table",true,userDAO.update(user));
	}
	
	@Test
	public void testDeleteUser()
	{
		assertEquals("Deleting user based on id from table",true,userDAO.delete("Girish"));
	}

}


