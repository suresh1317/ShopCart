package com.sk.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Category 
{
@Id
private int id;
private String categoryName,categoryDescription;
public Category() 
{

}
public Category(int id, String categoryName, String categoryDescription) {
	this.id = id;
	this.categoryName = categoryName;
	this.categoryDescription = categoryDescription;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public String getCategoryDescription() {
	return categoryDescription;
}
public void setCategoryDescription(String categoryDescription) {
	this.categoryDescription = categoryDescription;
}
}

