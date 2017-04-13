package com.niit.shoppingcartbe.DAO;

import java.util.List;

import com.niit.shoppingcartbe.model.Category;

public interface CategoryDAO {
	
	public boolean save(Category c);
	public List<Category> list();
	public boolean update(Category c);
	public boolean delete(Category c);
	public boolean delete(String c_id);
	public Category getCategoryByID(String c_id);
	public boolean saveOrUpdate(Category c);

}
