package com.niit.shoppingcartfe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbe.model.User;
import com.niit.shoppingcartbe.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private HttpSession session;
	
	
	
	
	@RequestMapping("/Register")
	public ModelAndView showRegisterPage()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("registerClicked","true");
		mv.addObject("user",new User());

        return mv;
	}
	@RequestMapping(value="/validate", method=RequestMethod.POST)
	public ModelAndView validateCredentials(@RequestParam("email") String name, @RequestParam("password") String pwd)
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("atHome", "true");

		if (userService.validate(name, pwd)) {

			//User user = userService.getUserByName(name);

			/*if (user.getRole().equals("ROLE_ADMIN")) {
				mv.addObject("role", true);

			} else {
				mv.addObject("role", false);
			}*/
			mv.addObject("successMessage", "Login Successful.");
			session.setAttribute("loginMessage", "Welcome : " + name);
		} else {
			mv.addObject("errorMessage", "Login Failed.");
		}
		return mv;
}
	
	@RequestMapping("/useradd")
	public  ModelAndView userAdd(@ModelAttribute("user") User u)
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("registerClicked","true");
		if(userService.save(u))
		{
			mv.addObject("successMessage", "Register Successful.");
		}
		else
		{
			mv.addObject("errorMessage", "Register Failed.");
		}
		return mv;
		
	}
	@RequestMapping("/loginError")
	public ModelAndView showLoginError()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("errorMessage", "Login Failed.");
		mv.addObject("atHome", "true");
		return mv;
	}
	
	@RequestMapping("/accessDenied")
	public ModelAndView showAccessDenied()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("errorMessage", "Login Failed.");
		mv.addObject("atHome", "true");
		return mv;
	}
	
	@RequestMapping("/Logout")
	public ModelAndView showLogout()
	{
		ModelAndView mv = new ModelAndView("/Home");
		//session.invalidate();
		mv.addObject("atHome", "true");
		mv.addObject("logoutMessage", "Logout Successful");
		return mv;
	}
}
