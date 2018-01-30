package com.sk.dao;

import java.util.List;

import com.sk.model.Product;

public interface ProductDao {
	public void addProduct(Product product);
	public void updateProduct(Product product);
	public void deleteProduct(int id);
	public List<Product> retrieveProduct();
	public Product getProduct(int id);
	public List<Product> retrieveProductByCategory(int id);
	public List<Product> retrieveProductByName(String searchname);
}
