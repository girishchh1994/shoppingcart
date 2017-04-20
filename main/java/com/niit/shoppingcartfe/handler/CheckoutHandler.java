package com.niit.shoppingcartfe.handler;

import java.io.Serializable;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.niit.shoppingcartbe.model.Card;


@Component
public class CheckoutHandler implements Serializable
{
	
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public String cardPayment()	
	{	System.out.println("Card payment");
		return "true";	
	}

	 public String paymentMethod(Card card)
	 {	String  method="card";
		System.out.println("method");
		method=card.getMethod();
		System.out.println(method);
		if(method.equals("cod"))
		{	
			return "cod";
		}
		else 
		{
			return "card";
		}
	 }
}