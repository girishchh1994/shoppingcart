package com.niit.shoppingcartbe.service;

import java.util.List;

import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Product;


public interface ProductService {
	public boolean save(Product p);
	public List<Product> list();
	public boolean update(Product p);
	public boolean delete(Product p);
	public boolean delete(int p_id);
	public Product getProductByID(int p_id);
	public boolean saveOrUpdate(Product p);
	public 	List<Category> listCategory();
	public Product getCategoryByID(String p_id);


}
