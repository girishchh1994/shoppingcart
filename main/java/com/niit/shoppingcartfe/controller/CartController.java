package com.niit.shoppingcartfe.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbe.model.Cart;
import com.niit.shoppingcartbe.model.Product;
import com.niit.shoppingcartbe.service.CartService;
import com.niit.shoppingcartbe.service.ProductService;


@Controller
public class CartController {
	int q;
	@Autowired
	private HttpSession session;
	@Autowired
	private CartService cartService;

	@Autowired
	private ProductService productService;


	@RequestMapping("/mycart")
	public ModelAndView showMyCart()
	{
		ModelAndView mv = new ModelAndView("/Cart");
		mv.addObject("cartList",cartService.list());
		   session.setAttribute("total",cartService.sum());
				return mv;
	}
	@RequestMapping("/addCart/{id}")
	public ModelAndView addToCart(@PathVariable("id") int id,Principal pr)throws Exception
	{
		long p;
		ModelAndView mv = new ModelAndView("/Product");
		System.out.println("aaded to cart");
		Product product=productService.getProductByID(id);		
		System.out.println(product.getCategory_id());
		System.out.println(product.getP_name());
		if(cartService.getProductByID(id)==null)
		{
			System.out.println("in if");
			   Cart cart2= new Cart(); 
			   cart2.setP_id(product.getP_id());
			   cart2.setP_name(product.getP_name());
			   cart2.setP_price(product.getP_price());
			   cart2.setTotal(product.getP_price());
			   cart2.setSupplier_id(product.getSupplier_id());
			   cart2.setCategory_id(product.getCategory_id());
			   cart2.setQuantity(1);
			// User u=  userservice.getUserByName(pr.getName());
			 //  cart2.setUserid(u.getId());
			   q=cart2.getQuantity();
			   cartService.save(cart2);
			   session.setAttribute("total",cartService.sum());
		}
		else
		{
			System.out.println("in else");
			Cart cart1=cartService.getProductByID(id);
			q=cart1.getQuantity();
			p=cart1.getTotal();
			q+=1;
			p=q*p;
			cart1.setQuantity(q);
			cart1.setTotal(p);
			cartService.update(cart1);
			   session.setAttribute("total",cartService.sum());

		}
		//mv.addObject("product", productService.getProductByID(id));
		
		return mv;

	}
	@RequestMapping("/remove_cart/{id}")
	public ModelAndView removeCart(@PathVariable("id") int id)throws Exception
	{
		ModelAndView mv = new ModelAndView("forward:/mycart");
		boolean b=this.cartService.delete(id);
		if(b){
			System.out.println("delete ho gaya");
			   session.setAttribute("total",cartService.sum());

		}
	    return mv;
	}	

}
