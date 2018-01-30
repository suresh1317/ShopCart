package com.sk.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="USER_DETAILS")
public class RegistrationForm 
{
	@Id
	String email;
	String name;
	String contact;
	String gender;
	String country;
	String address;
	String Password;
	@Transient
	String confirmPassword;
	String dob;
	String Role;
	String enabled;
	
	public RegistrationForm() {
		
	}

	

	public RegistrationForm(String email, String name, String contact, String gender, String country, String address,
			String password, String confirmPassword, String dob, String role, String enabled) {
		super();
		this.email = email;
		this.name = name;
		this.contact = contact;
		this.gender = gender;
		this.country = country;
		this.address = address;
		Password = password;
		this.confirmPassword = confirmPassword;
		this.dob = dob;
		Role = role;
		this.enabled = enabled;
	}



	public String getEnabled() {
		return enabled;
	}



	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getRole() {
		return Role;
	}

	public void setRole(String role) {
		Role = role;
	}
	
	
}
