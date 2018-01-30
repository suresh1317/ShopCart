package com.sk.daoimp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sk.dao.ProductDao;
import com.sk.model.Product;

@Repository("productDaoImpl")
@Transactional
public class ProductDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addProduct(Product product) 
	{
		sessionFactory.getCurrentSession().save(product);
	}

	public void updateProduct(Product product) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	public void deleteProduct(int id) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("delete from Product where id= :id");
		query.setInteger("id", id);
		query.executeUpdate();
	}

	public List<Product> retrieveProduct() 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Product");
		List<Product> list=query.list();
		return list;
	}

	public Product getProduct(int id) 
	{
		Product product=sessionFactory.getCurrentSession().get(Product.class, id);
		return product;
	}

	public List<Product> retrieveProductByCategory(int id) {
	
		Query query=sessionFactory.getCurrentSession().createQuery("from Product where categoryId= :catid");
		query.setInteger("catid", id);
		List<Product> list=query.list();
		return list;
	}

	public List<Product> retrieveProductByName(String searchname) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("from Product where productName like '%"+searchname+"%' ");
		List<Product> list=query.list();
		
		return list;
	}
}
