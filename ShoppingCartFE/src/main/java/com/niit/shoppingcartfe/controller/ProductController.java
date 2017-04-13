package com.niit.shoppingcartfe.controller;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbe.model.Category;
import com.niit.shoppingcartbe.model.Product;
import com.niit.shoppingcartbe.service.ProductService;
import com.niit.shoppingcartbe.service.SupplierService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@Autowired
	private SupplierService supplierService;

	
	//@Autowired
	//private HttpSession session;

	@RequestMapping("/")
	public ModelAndView showHomePage()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("productList",productService.list());
		mv.addObject("categoryList", productService.listCategory());
		mv.addObject("atHome", "true");
		//session.setAttribute("categoryList", productService.listCategory());
		//session.setAttribute("productList",productService.list());
		return mv;
	}
	@RequestMapping("/Home")
	public ModelAndView showHomePage1()
	{
		ModelAndView mv = new ModelAndView("/LoginTest");
		mv.addObject("productList",productService.list());
		mv.addObject("categoryList", productService.listCategory());
		mv.addObject("atHome", "true");
		return mv;
	}
	@RequestMapping("/AllProducts")
	public ModelAndView allProducts()
	{
		ModelAndView mv = new ModelAndView("/SKMK");
		mv.addObject("productList",productService.list());
		mv.addObject("categoryList", productService.listCategory());
		return mv;
	}
	
	
	@RequestMapping("/Product")
	public ModelAndView showProductAdd()
	{
		ModelAndView mv = new ModelAndView("/Admin/ProductAdd");
		mv.addObject("product",new Product());
		Category c =new Category();
		mv.addObject("category",new Category());
		mv.addObject("productList",productService.list());
		mv.addObject("categoryList", productService.listCategory());
		mv.addObject("supplierList",supplierService.list());
		return mv;

	}
	
	@RequestMapping(value="/productAdd", method = RequestMethod.POST)
	public ModelAndView insertProduct(@Valid @ModelAttribute("product") Product p, BindingResult result, Model model,
			HttpServletRequest request)throws Exception
	{
		ModelAndView mv = new ModelAndView("forward:/Product");
		if(result.hasErrors())
		{   
			System.out.println("has errors");
			mv.addObject("productList",productService.list());
			mv.addObject("categoryList", productService.listCategory());
			mv.addObject("supplierList",supplierService.list());
			return mv;
		}
		
			this.productService.saveOrUpdate(p);
			mv.addObject("productList",productService.list());		
			mv.addObject("categoryList", productService.listCategory());
			mv.addObject("supplierList",supplierService.list());
			//if(p.getP_id()==0)
			{
				MultipartFile file = p.getP_img();
				String filelocation = request.getSession().getServletContext().getRealPath("/resources/images/");
				System.out.println(filelocation);
				String filename = filelocation + "/" + p.getP_id() + ".jpg";
				System.out.println(filename);
				try {
					byte b[] = file.getBytes();
					FileOutputStream fos = new FileOutputStream(filename);
					fos.write(b);
					fos.close();
				} catch (Exception e) {
				}
		}
			return mv;
			
	}
	@RequestMapping("/delete_Product/{id}")
	public ModelAndView deleteProduct(@PathVariable("id") int id)throws Exception
	{
		ModelAndView mv = new ModelAndView("forward:/Product");
		boolean b=this.productService.delete(id);
		if(b){
			System.out.println("delete ho gaya");
		}
	    return mv;
	}	
	@RequestMapping("/edit_Product/{id}")
	public ModelAndView editProduct(@PathVariable("id") int id)throws Exception
	{ 
		ModelAndView mv = new ModelAndView("/Admin/ProductAdd");
		mv.addObject("product", productService.getProductByID(id));
		mv.addObject("categoryList", productService.listCategory());
		mv.addObject("supplierList",supplierService.list());
		return mv;
}
	@RequestMapping("/Product_Display/{id}")
	public ModelAndView productDisplay(@PathVariable("id") int id)throws Exception
	{ 
		ModelAndView mv = new ModelAndView("/Product");
		mv.addObject("product", productService.getProductByID(id));
		mv.addObject("categoryList", productService.listCategory());
		mv.addObject("supplierList",supplierService.list());
		return mv;
}
	@RequestMapping("/Product_allDisplay/{id}")
	public ModelAndView productAllDisplay(@PathVariable("id") String id)throws Exception
	{ 
		ModelAndView mv = new ModelAndView("/AllProducts");
		mv.addObject("productList", productService.getCategoryByID(id));
		mv.addObject("categoryList", productService.listCategory());
		mv.addObject("supplierList",supplierService.list());
		return mv;
}
	
}
