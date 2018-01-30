package com.sk.ShopCartBack.test;


import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sk.dao.ProductDao;
import com.sk.dao.SupplierDao;
import com.sk.hiberconfig.HiberConfig;
import com.sk.model.Supplier;

public class SupplierTest {

	static SupplierDao supplierDao;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(HiberConfig.class);
    	context.scan("com.sk.*");
    	supplierDao=(SupplierDao)context.getBean("supplierDaoImpl");
	}
	@Ignore
	@Test
	public void addSupplier() 
	{
		try{
		Supplier supplier=new Supplier();
		supplier.setId(106);
		supplier.setContact("1234567890");
		supplier.setAddress("Andheri (East)");
		supplier.setName("vishnu retails");
		supplierDao.addSupplier(supplier);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Ignore
	@Test
	public void updateSupplier() 
	{
		try{
		Supplier supplier=new Supplier();
		supplier.setId(106);
		supplier.setContact("90");
		supplier.setEmail("akash123@gmail.com");
		supplier.setAddress("Andheri (East)");
		supplier.setName("vishnu retails");
		supplierDao.updateSupplier(supplier);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Ignore
	@Test
	public void deleteSupplier() 
	{
		try{
		Supplier supplier=new Supplier();
		supplier.setId(106);
		supplierDao.deleteSupplier(supplier.getId());
	}
	catch (Exception e) {
		System.out.println(e.getMessage());
	}
	}

	@Test
	public void getSupplier() 
	{
		try{
		Supplier supplier=new Supplier();
		supplier.setId(103);
		Supplier supplier1=supplierDao.getSupplier(supplier.getId());
		System.out.println(supplier1.getAddress());
		System.out.println(supplier1.getContact());
		System.out.println(supplier1.getName());
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Ignore
	@Test
	public void retrieveSupplier() 
	{
		try{
		List<Supplier> list=supplierDao.retrieveSupplier();
    	for (Supplier supplier1 : list) 
    	{
			System.out.println(supplier1.getId());
		}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
