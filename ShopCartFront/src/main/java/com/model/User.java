package com.model;

import java.io.Serializable;

public class User implements Serializable
{
	private static final long serialVersionUID = 1L;
String name;
String email;
String address;
String contact;
String country;
String role;


	public User() 
	{
	}



	public User(String name, String email, String address, String contact, String country, String role) 
	{
		this.name = name;
		this.email = email;
		this.address = address;
		this.contact = contact;
		this.country = country;
		this.role = role;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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



	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}

	
}
