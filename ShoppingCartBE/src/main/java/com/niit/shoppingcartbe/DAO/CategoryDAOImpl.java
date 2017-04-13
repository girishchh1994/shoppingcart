package com.niit.shoppingcartbe.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbe.model.Category;
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
SessionFactory sessionFactory;
	
	int count=0;
	
	public boolean save(Category c) {
		try{
			c.setC_id("u"+ ++count);
			sessionFactory.getCurrentSession().save(c);

			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	public boolean saveOrUpdate(Category c)
	{
		try{
			System.out.println("in try");
			//if(c.getC_id().equals(" "))
			//c.setC_id("u"+ ++count);
			sessionFactory.getCurrentSession().saveOrUpdate(c);
			return true;
			}
			catch(Exception e)
			{
				System.out.println("in catch");

				e.printStackTrace();
				return false;
			}
	}

	public 	List<Category> list()
	{

		return	sessionFactory.getCurrentSession().createQuery("from Category").list();
	}
	public boolean update(Category c)
	{
		try{
			sessionFactory.getCurrentSession().update(c);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean delete(Category c)
	{
		try{
			sessionFactory.getCurrentSession().delete(c);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}

	}
	public boolean delete(String c_id)
	{
		try{
			System.out.println("in try delete");
			sessionFactory.getCurrentSession().delete(getCategoryByID(c_id));
			return true;
			}
			catch(Exception e)
		{
				System.out.println("in catch delete");
				e.printStackTrace();
				return false;
			}

	}
	public Category getCategoryByID(String c_id)
	{		
		System.out.println("get all category");  
		Session ss = sessionFactory.getCurrentSession();

		return (Category) ss.createQuery("from Category where c_id = '" + c_id + "'").list().get(0);

	}
}
