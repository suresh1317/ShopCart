package com.sk.daoimp;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.sk.dao.CategoryDao;
import com.sk.model.Category;

@Repository("categoryDaoImpl")
@Transactional
public class CategoryDaoImpl implements CategoryDao 
{
	@Autowired
	SessionFactory sessionFactory;

	public void addCategory(Category category) 
	{
		sessionFactory.getCurrentSession().save(category);
	}

	public void updateCategory(Category category) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public Category getCategory(int id) 
	{
		Category category=sessionFactory.getCurrentSession().get(Category.class,id);
		return category;
	}

	public void deleteCategory(int id) 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("delete from Category where id = :id");
		query.setInteger("id", id);
        query.executeUpdate();
	}

	public List<Category> retriveCategory() 
	{ 
		Query query=sessionFactory.getCurrentSession().createQuery("from Category");
		List<Category> list=query.list();
		return list;
	}
}
