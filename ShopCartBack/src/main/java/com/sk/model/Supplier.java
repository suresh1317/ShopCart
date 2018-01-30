package com.sk.model;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Supplier 
{
	@Id
	private int id;
	private String name;
	private String address;
	private String contact;
	private String email;
	public Supplier() 
	{
		
	}

	public Supplier(int id, String name, String address, String contact, String email) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.contact = contact;
		this.email = email;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}

