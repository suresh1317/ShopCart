package com.sk.dao;

import java.util.List;

import com.sk.model.Cart;

public interface CartDao 
{
 public void addCart(Cart cart);
 public void updateCart(Cart cart);
 public void deleteCart(int cartItemId);
 public Cart getSingleCartItem(int cartItemId);
 public List<Cart> retrieveCart(String user);
 public Cart getCartExistItem(int productid,String name);
 
}
