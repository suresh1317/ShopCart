package com.sk.dao;

import java.util.List;
import com.sk.model.Category;

public interface CategoryDao 
{
	public void addCategory(Category category);
	public void updateCategory(Category category);
	public Category getCategory(int id);
	public void deleteCategory(int id);
	public List<Category> retriveCategory();
}
