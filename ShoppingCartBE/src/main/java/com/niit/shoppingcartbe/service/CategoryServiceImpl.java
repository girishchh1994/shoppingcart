package com.niit.shoppingcartbe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcartbe.DAO.CategoryDAO;
import com.niit.shoppingcartbe.model.Category;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;
	
	public boolean save(Category c) {
		
			return categoryDAO.save(c);
	}
	public boolean saveOrUpdate(Category c)
	{
		return categoryDAO.saveOrUpdate(c);
	}
	public 	List<Category> list()
	{
		return categoryDAO.list();
	}
	public boolean update(Category c)
	{
		return categoryDAO.update(c);

	}
	
	public boolean delete(Category c)
	{
		return categoryDAO.delete(c);
		

	}
	public boolean delete(String c_id)
	{
		return categoryDAO.delete(c_id);

	}
	public Category getCategoryByID(String c_id)
	{
		return categoryDAO.getCategoryByID(c_id);
	}

}
