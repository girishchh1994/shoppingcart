package com.niit.shoppingcartbe.DAO;

import java.util.List;

import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Product;

public interface ProductDAO {
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
