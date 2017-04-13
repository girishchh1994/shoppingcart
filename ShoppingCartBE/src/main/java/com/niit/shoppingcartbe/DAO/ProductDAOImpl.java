package com.niit.shoppingcartbe.DAO;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Product;
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {
@Autowired
SessionFactory sessionFactory;
	
	
	
	public boolean save(Product p) {
		try{
			sessionFactory.getCurrentSession().save(p);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	public boolean saveOrUpdate(Product p)
	{
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(p);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	
	public 	List<Product> list()
	{
		return	sessionFactory.getCurrentSession().createQuery("from Product").list();
	}
	public boolean update(Product p)
	{
		try{
		sessionFactory.getCurrentSession().update(p);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}

	}
	
	public 	List<Category> listCategory()
	{

		return	sessionFactory.getCurrentSession().createQuery("from Category").list();
	}
	
	
	public boolean delete(Product p)
	{
		try{
			sessionFactory.getCurrentSession().delete(p);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}

	}
	public boolean delete(int p_id)
	{
		try{
			sessionFactory.getCurrentSession().delete(getProductByID(p_id));
			return true;
			}
			catch(Exception e)
			{	
				e.printStackTrace();
				return false;
			}

	}
	public Product getProductByID(int p_id)
	{		
		  return  (Product)sessionFactory.getCurrentSession().get(Product.class,new Integer(p_id));

	}
	
	public Product getCategoryByID(String p_id)
	{		
		Session ss = sessionFactory.getCurrentSession();
		return (Product) ss.createQuery("from Product where category_id = '" + p_id + "'").list().get(0);

	}
	
}
