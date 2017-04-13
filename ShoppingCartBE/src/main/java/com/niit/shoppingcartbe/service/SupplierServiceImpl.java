package com.niit.shoppingcartbe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartbe.DAO.SupplierDAO;
import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Supplier;

@Transactional
@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
	@Autowired
	private SupplierDAO supplierDAO;

	
	
	public boolean save(Supplier s) {
		
			return supplierDAO.save(s);
	}
	public 	List<Supplier> list()
	{
		return supplierDAO.list();
	}
	public boolean update(Supplier s)
	{
		return supplierDAO.update(s);

	}
	public boolean saveOrUpdate(Supplier s)
	{
		return supplierDAO.saveOrUpdate(s);
	}
	
	public boolean delete(Supplier s)
	{
		return supplierDAO.delete(s);
		

	}
	public boolean delete(String s_id)
	{
		return supplierDAO.delete(s_id);

	}
	public Supplier getSupplierByID(String s_id)
	{
		return supplierDAO.getSupplierByID(s_id);
	}

}
