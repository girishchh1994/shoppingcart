package com.niit.shoppingcartbe.service;

import java.util.List;

import com.niit.shoppingcartbe.model.Supplier;

public interface SupplierService {

	public boolean save(Supplier s);
	public List<Supplier> list();
	public boolean update(Supplier s);
	public boolean delete(Supplier s);
	public boolean delete(String s_id);
	public Supplier getSupplierByID(String s_id);
	public boolean saveOrUpdate(Supplier s);

}
