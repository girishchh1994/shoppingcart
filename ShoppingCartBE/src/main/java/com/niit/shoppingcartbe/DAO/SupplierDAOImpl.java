package com.niit.shoppingcartbe.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
@Autowired
SessionFactory sessionFactory;
	
int inc=0;
	
	public boolean save(Supplier s) {
		try{
			s.setS_id("Supplier"+ ++inc);
			sessionFactory.getCurrentSession().save(s);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	public boolean saveOrUpdate(Supplier s)
	{
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(s);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	
	public 	List<Supplier> list()
	{
		return	sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}
	public boolean update(Supplier s)
	{
		try{
		sessionFactory.getCurrentSession().update(s);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean delete(Supplier s)
	{
		try{
			sessionFactory.getCurrentSession().delete(s);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}

	}
	public boolean delete(String s_id)
	{
		try{
			sessionFactory.getCurrentSession().delete(getSupplierByID(s_id));
			return true;
			}
			catch(Exception e)
			{	
				e.printStackTrace();
				return false;
			}

	}
	public Supplier getSupplierByID(String s_id)
	{		
		Session ss = sessionFactory.getCurrentSession();

		return (Supplier) ss.createQuery("from Supplier where s_id = '" + s_id + "'").list().get(0);
	}
}
