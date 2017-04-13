package com.niit.shoppingcartbe.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Supplier {
	
	@Column(name = "ID")
	private String s_id;
	@Id
	@Column(name = "Name")
	private String s_name;
	@OneToMany(mappedBy="supplier",fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	private Set<Product> products;
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_add() {
		return s_add;
	}
	public void setS_add(String s_add) {
		this.s_add = s_add;
	}
	@Column(name = "Address")
	private String s_add;

}
