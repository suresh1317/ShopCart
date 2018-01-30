package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sk.dao.RegistrationFormDao;
import com.sk.model.RegistrationForm;

@Controller
public class SignupController 
{	
	@Autowired
	RegistrationFormDao registrationFormDao;
	@RequestMapping(value="/signup")
	public String formpage(Model m)
	{
		m.addAttribute("registrationForm", new RegistrationForm());
		return "signup";
	}
	@RequestMapping(value="/register")
	public String registerOperation(@ModelAttribute("registrationForm") RegistrationForm registrationForm,Model m)
	{
		if ((registrationForm.getPassword()).equals(registrationForm.getConfirmPassword()))
		{		
			registrationForm.setRole("ROLE_USER");
			registrationForm.setEnabled("TRUE");
			registrationFormDao.createUser(registrationForm);
			m.addAttribute("registrationForm", new RegistrationForm());
			m.addAttribute("weclome", "Welcome to Homeshop 18 "+registrationForm.getName()+"");
			return "login";
		}
		else
		{
			m.addAttribute("match", "noperfectmatch");
			m.addAttribute("registrationForm", new RegistrationForm());
			return "signup";
			
		}
		
	}
	
}
