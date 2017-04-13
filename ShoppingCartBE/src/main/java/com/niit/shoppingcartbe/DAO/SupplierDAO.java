package com.niit.shoppingcartbe.DAO;

import java.util.List;

import com.niit.shoppingcartbe.model.Supplier;

public interface SupplierDAO {
	public boolean save(Supplier s);
	public List<Supplier> list();
	public boolean update(Supplier s);
	public boolean delete(Supplier s);
	public boolean delete(String s_id);
	public Supplier getSupplierByID(String s_id);
	public boolean saveOrUpdate(Supplier s);

}
