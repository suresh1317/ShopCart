package com.sk.ShopCartBack.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sk.dao.RegistrationFormDao;
import com.sk.hiberconfig.HiberConfig;
import com.sk.model.RegistrationForm;

public class RegistrationTest {

	static RegistrationFormDao registrationFormDao;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(HiberConfig.class);
    	context.scan("com.sk.*");
    	registrationFormDao=(RegistrationFormDao)context.getBean("registrationFormDaoImpl");
	}
	@Ignore
	@Test
	public void addUser() 
	{
		try{
		RegistrationForm registrationForm=new RegistrationForm();
    	registrationForm.setAddress("Wing-B/307");
    	registrationForm.setContact("9892320565");
    	registrationForm.setCountry("India");
    	registrationForm.setEmail("suresh@gmail.com");
    	registrationForm.setName("ramesh");
    	registrationForm.setGender("Male");
    	registrationForm.setPassword("ramesh");
    	registrationForm.setConfirmPassword("ramesh");
    	registrationForm.setDob("11/04/1995");
    	registrationForm.setRole("ROLE_ADMIN");
    	registrationFormDao.createUser(registrationForm);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Ignore
	@Test
	public void updateUser() 
	{
		try{
		RegistrationForm registrationForm=new RegistrationForm();
    	registrationForm.setAddress("Room no:307");
    	registrationForm.setContact("828643457");
    	registrationForm.setCountry("India");
    	registrationForm.setEmail("sureshkumawat077@gmail.com");
    	registrationForm.setName("suresh");
    	registrationForm.setGender("Male");
    	registrationForm.setConfirmPassword("suresh");
    	registrationForm.setPassword("suresh");
    	registrationForm.setDob("11/04/1995");
    	registrationForm.setRole("ROLE_USER");
    	registrationFormDao.updateUser(registrationForm);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Ignore
	@Test
	public void deleteUser() 
	{
		try{
		RegistrationForm registrationForm=new RegistrationForm();
    	registrationForm.setEmail("sureshkumawat077@gmail.com");
    	registrationFormDao.deleteUser(registrationForm.getEmail());
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Ignore
	@Test
	public void getUser()
	{
		try{
			RegistrationForm registrationForm=new RegistrationForm();
			registrationForm.setEmail("sureshkumawat077@gmail.com");
			RegistrationForm registrationForm1=registrationFormDao.getUser(registrationForm.getEmail());
			System.out.println(registrationForm1.getName());
			System.out.println(registrationForm1.getDob());
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}

	
	@Test
	public void retrieveUser()
	{
		try{
		List<RegistrationForm> list=registrationFormDao.retrieveUser();	
		for (RegistrationForm registrationForm : list) {
			System.out.println(registrationForm.getEmail());
		}
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
	}



}
