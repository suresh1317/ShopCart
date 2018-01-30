package com.sk.ShopCartBack.test;


import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sk.dao.CartDao;
import com.sk.hiberconfig.HiberConfig;
import com.sk.model.Cart;


public class CartTest {
	
	static CartDao cartDao;
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext(HiberConfig.class);
		context.scan("com.sk.*");
		 cartDao=(CartDao)context.getBean("cartDao");
	}
	@Ignore
	@Test
	public void addCart() {
		Cart cart=new Cart();
		cart.setCartItemId(3);
		cart.setOrderId(10);
		cart.setPrice(100);
		cart.setProductId(1);
		cart.setQuantity(1000);
		cart.setUsername("akhil@1234.com");
		cartDao.addCart(cart);
	}
	@Ignore
	@Test
	public void updateCart() {
		Cart cart=new Cart();
		cart.setCartItemId(1);
		cart.setOrderId(100);
		cart.setPrice(100);
		cart.setProductId(10);
		cart.setQuantity(1000);
		cart.setUsername("akhil@1234.com");
		cartDao.updateCart(cart);
	}
	@Ignore
	@Test
	public void deleteCart() {
		Cart cart=new Cart();
		cart.setCartItemId(3);
		cartDao.deleteCart(cart.getCartItemId());
	}
	
	@Ignore
	@Test
	public void getCart() {
		Cart cart=new Cart();
		cart.setCartItemId(2);
		Cart cart1=cartDao.getSingleCartItem(cart.getCartItemId());
		System.out.println(cart1.getUsername());
	}
	
	
	@Test
	public void retrieveCart() {
		
		List<Cart> list=cartDao.retrieveCart("akhil@123.com");
		for (Cart cart : list) {
			System.out.println(cart.getCartItemId());
		}
	}
	
	
}
