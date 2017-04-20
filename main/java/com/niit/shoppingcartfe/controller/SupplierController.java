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

import com.niit.shoppingcartbe.model.Supplier;
import com.niit.shoppingcartbe.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;

	
	
	@RequestMapping("/Supplier")
	public ModelAndView showSupplierAdd()
	{	
		ModelAndView mv = new ModelAndView("/Admin/SupplierAdd");
		mv.addObject("supplier",new Supplier());
		mv.addObject("supplierList",supplierService.list());

		return mv;

	}
	 
	@RequestMapping(value="/supplierAdd", method = RequestMethod.POST)
	public ModelAndView insertProduct(@Valid @ModelAttribute("supplier") Supplier s, BindingResult result, Model model,
			HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("forward:/Supplier");
		if(s.getS_id()==null ||s.getS_id().isEmpty())
		{
			System.out.println("save method");
			if(supplierService.save(s)==true)
			{
				 model.addAttribute("msg", "Successfully updated the caetgory");

			}
			else
				 model.addAttribute("msg", "not Successfully updated the caetgory");

		}
		else
		{
			System.out.println("update mein");
			if(supplierService.update(s)==true)
			{
				 model.addAttribute("msg", "Successfully inserted the caetgory");

			}
			else
			{
				 model.addAttribute("msg", "not Successfully inserted the caetgory");
			}
		}

		mv.addObject("supplierList",supplierService.list());
		return mv;
		
	}
	
	@RequestMapping("/delete_Supplier/{id}")
	public ModelAndView deleteSupplier(@PathVariable("id") String id)throws Exception
	{
		ModelAndView mv = new ModelAndView("forward:/Supplier");
		boolean b=this.supplierService.delete(id);
		if(b){
			System.out.println("delete ho gaya");
		}
	    return mv;
	}	
	@RequestMapping("/edit_Supplier/{id}")
	public ModelAndView editSupplier(@PathVariable("id") String id)
	{ 
		ModelAndView mv = new ModelAndView("/Admin/SupplierAdd");
		mv.addObject("supplier", supplierService.getSupplierByID(id));
return mv;
}

}



