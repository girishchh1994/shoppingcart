package com.niit.shoppingcartbe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartbe.DAO.ProductDAO;
import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Product;

@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDAO;

	
	
	public boolean save(Product p) {
		
			return productDAO.save(p);
	}
	public 	List<Product> list()
	{
		return productDAO.list();
	}
	public 	List<Category> listCategory()
	{
		return productDAO.listCategory();
	}
	public boolean saveOrUpdate(Product p)
	{
		return productDAO.saveOrUpdate(p);
	}
	
	public boolean update(Product p)
	{
		return productDAO.update(p);

	}
	
	public boolean delete(Product p)
	{
		return productDAO.delete(p);
		

	}
	public boolean delete(int p_id)
	{
		return productDAO.delete(p_id);

	}
	public Product getProductByID(int p_id)
	{
		return productDAO.getProductByID(p_id);
	}
	public Product getCategoryByID(String p_id)
	{
		return productDAO.getCategoryByID(p_id);
	}

}
