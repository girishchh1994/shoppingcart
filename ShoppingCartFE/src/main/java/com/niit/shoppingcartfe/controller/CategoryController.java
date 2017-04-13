package com.niit.shoppingcartfe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.service.CategoryService;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/Category")
	public ModelAndView showCategoryAdd()
	{
		ModelAndView mv = new ModelAndView("/Admin/CategoryAdd");
		mv.addObject("category",new Category());
		mv.addObject("categoryList",categoryService.list());

		return mv;

	}
	
	@RequestMapping(value="/categoryAdd", method = RequestMethod.POST)
	public ModelAndView insertProduct(@Valid @ModelAttribute("category") Category c, BindingResult result, Model model,
			HttpServletRequest request)throws Exception 
	{
		ModelAndView mv = new ModelAndView("forward:/Category");
		System.out.println(c.getC_id());
		System.out.println(c.getC_name());
		System.out.println(c.getC_desc());
		if(c.getC_id()==null ||c.getC_id().isEmpty())
		{
			System.out.println("save method");
			if(categoryService.save(c)==true)
			{
				 model.addAttribute("msg", "Successfully updated the caetgory");

			}
			else
				 model.addAttribute("msg", "not Successfully updated the caetgory");

		}
		else
		{
			System.out.println("update mein");
			if(categoryService.update(c)==true)
			{
				 model.addAttribute("msg", "Successfully inserted the caetgory");

			}
			else
			{
				 model.addAttribute("msg", "not Successfully inserted the caetgory");
			}
		}
		
		mv.addObject("categoryList",categoryService.list());
		return mv;
		
	}
	@RequestMapping("/delete_Category/{id}")
	public ModelAndView deleteCategory(@PathVariable("id") String id)throws Exception
	{
		ModelAndView mv = new ModelAndView("forward:/Category");
		boolean b=this.categoryService.delete(id);
		if(b){
			System.out.println("delete ho gaya");
		}
	    return mv;
	}	

	@RequestMapping("/edit_Category/{id}")
	public ModelAndView editCategory(@PathVariable("id") String id)
	{ 
		ModelAndView mv = new ModelAndView("/Admin/CategoryAdd");
		mv.addObject("category", categoryService.getCategoryByID(id));
return mv;
}
}
