package com.sk.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Cart {
@Id
@GeneratedValue
int cartItemId;
@Transient
int orderId;
int quantity;
int price,productId;
String username;


public Cart() {
}
public Cart(int cartItemId, int orderId, int quantity, int price, int productId, String username) {
	this.cartItemId = cartItemId;
	this.orderId = orderId;
	this.quantity = quantity;
	this.price = price;
	this.productId = productId;
	this.username = username;
}
public int getCartItemId() {
	return cartItemId;
}
public void setCartItemId(int cartItemId) {
	this.cartItemId = cartItemId;
}
public int getOrderId() {
	return orderId;
}
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
	


}

