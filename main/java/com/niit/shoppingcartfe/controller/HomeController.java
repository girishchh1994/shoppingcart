package com.niit.shoppingcartfe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbe.model.Product;
import com.niit.shoppingcartbe.model.User;

@Controller
public class HomeController {
	
	
	
	
	@RequestMapping("/index")
	public ModelAndView showIndexPage()
	{
		ModelAndView mv = new ModelAndView("/Register");
		return mv;
	}
	
	
	
	@RequestMapping("/Login")
	public ModelAndView showLoginPage()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("loginClicked","true");
		return mv;
	}
	
	@RequestMapping("/MyCart")
	public ModelAndView showMyCart()
	{
		ModelAndView mv = new ModelAndView("/Cart");
				return mv;
	}
	
	
	
	
	
}
