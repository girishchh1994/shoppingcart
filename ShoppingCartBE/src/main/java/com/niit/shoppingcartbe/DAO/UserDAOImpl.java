package com.niit.shoppingcartbe.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbe.model.Authorization;
import com.niit.shoppingcartbe.model.User;
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
@Autowired
SessionFactory sessionFactory;
	
	
	


	public boolean save(User u) {
		try{
			Authorization author=new Authorization();
			author.setEmailId(u.getName());
			author.setRole("ROLE_USER");
			u.setEnable("true");
			sessionFactory.getCurrentSession().save(u);
			sessionFactory.getCurrentSession().persist(author);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	public boolean saveOrUpdate(User u)
	{
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(u);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}

	public 	List<User> list()
	{

		return	sessionFactory.getCurrentSession().createQuery("from User").list();
	}
	public boolean update(User u)
	{
		try{
		sessionFactory.getCurrentSession().update(u);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean delete(User u)
	{
		try{
			sessionFactory.getCurrentSession().delete(u);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}

	}
	public boolean delete(String name)
	{
		try{
			sessionFactory.getCurrentSession().delete(getUserByName(name));
			return true;
			}
			catch(Exception e)
			{	
				e.printStackTrace();
				return false;
			}

	}
	public User getUserByName(String name)
	{
		  return  (User)sessionFactory.getCurrentSession().createQuery("from User where name = '"+name + "'").uniqueResult();

	}
	public boolean validate(String name, String pwd) 
	{
		
	Session	session = sessionFactory.getCurrentSession();

		String hql = "from User where username='"+name+"' and password='"+ pwd+"'";
		if (session.createQuery(hql).uniqueResult() != null) {
			return true;
		}
		return false;
	}
}

