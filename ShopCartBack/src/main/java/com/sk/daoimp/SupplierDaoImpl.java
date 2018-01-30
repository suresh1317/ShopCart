package com.sk.daoimp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sk.dao.SupplierDao;
import com.sk.model.Supplier;
@Repository("supplierDaoImpl")
@Transactional
public class SupplierDaoImpl implements SupplierDao 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().save(supplier);
	}

	public void updateSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	public void deleteSupplier(int id) 
	{
			Query query=sessionFactory.getCurrentSession().createQuery("delete from Supplier where id= :id");
			query.setInteger("id", id);
			query.executeUpdate();
	}

	public Supplier getSupplier(int id) 
	{
		Supplier supplier=sessionFactory.getCurrentSession().get(Supplier.class,id);
		return supplier;
	}

	public List<Supplier> retrieveSupplier() 
	{
		Query query=sessionFactory.getCurrentSession().createQuery("from Supplier");
		List<Supplier> list=query.list();
		return list;
		
	}
}
