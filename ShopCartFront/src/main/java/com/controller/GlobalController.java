package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.model.User;
import com.sk.dao.RegistrationFormDao;
import com.sk.model.RegistrationForm;

@ControllerAdvice
public class GlobalController 
{
	
	@Autowired
	HttpSession session;
	
	@Autowired
	RegistrationFormDao registrationFormDao;
	
	User user=null;
	@ModelAttribute("usermodel")
	public User getUserDetails()
	{
		
		if(session.getAttribute("usermodel")==null)
		{
			Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
			RegistrationForm registrationForm=registrationFormDao.getUser(authentication.getName());
			if(registrationForm!=null)
			{	
			user=new User();
			user.setEmail(registrationForm.getEmail());
			user.setName(registrationForm.getName());
			user.setRole(registrationForm.getRole());
			user.setAddress(registrationForm.getAddress());
			user.setContact(registrationForm.getContact());
			user.setCountry(registrationForm.getCountry());
			
			session.setAttribute("usermodel", user);
			return user;
			}
		}
		return (User) session.getAttribute("usermodel");
	}
	
}
