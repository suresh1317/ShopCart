package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.sk.dao.CategoryDao;
import com.sk.dao.ProductDao;
import com.sk.dao.SupplierDao;
import com.sk.model.Category;
import com.sk.model.Product;
import com.sk.model.Supplier;

@Controller
public class ProductController 
{
@Autowired
ProductDao productDao;
@Autowired
SupplierDao supplierDao;
@Autowired
CategoryDao categoryDao;

public void refreshProductSession(HttpSession hs,Model m)
{
	m.addAttribute("category", new Category());
	m.addAttribute("supplier", new Supplier());
	m.addAttribute("product", new Product());
	hs.removeAttribute("productList");
	List<Product> productlist=productDao.retrieveProduct();
	hs.setAttribute("productList", productlist);
}

@RequestMapping(value="/adminaddproduct")
public String addProductOperation(@ModelAttribute("product") Product product,Model m,HttpSession hs)
{
	MultipartFile file=product.getPimg();
	productDao.addProduct(product);
	m.addAttribute("status", "add");
	String path = "C:\\Users\\Mohan\\Desktop\\Workspace\\enterpriseapp\\src\\main\\webapp\\resources\\images\\product\\"+product.getId()+".jpg";
	
	File fileupload= new File(path);
	
	if(!file.isEmpty())
	{
		try {
			byte[] arr = file.getBytes();
			FileOutputStream fos = new FileOutputStream(fileupload);
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			bos.write(arr);
			bos.close();
		} catch (IOException e) {
			System.out.println("File not uploaded");
		}
	}
	else{
		System.out.println("File not found");
	}
	System.out.println("File uploaded successfully");

	refreshProductSession(hs, m);
	System.out.println("hello");
	return "viewproduct";
}


@RequestMapping(value="/adminupdateproduct{id}")
public String updateProductOperation(@PathVariable("id") int id,Model m,HttpSession hs)
{
	Product product=productDao.getProduct(id);
	refreshProductSession(hs, m);
	m.addAttribute("product", product);
	m.addAttribute("status", "update");
	
	return "viewproduct";
}


@RequestMapping(value="/adminupdateproductdata")
public String updateProductData(@ModelAttribute("product") Product product,Model m,HttpSession hs)
{
	productDao.updateProduct(product);
	m.addAttribute("status", "add");
	refreshProductSession(hs, m);
	return "viewproduct";
}

@RequestMapping(value="/admindeleteproduct{id}")
public String deleteProductOperation(@PathVariable("id") int id,Model m,HttpSession hs)
{
	productDao.deleteProduct(id);
	m.addAttribute("status", "add");
	refreshProductSession(hs, m);
	return "viewproduct";
}

@RequestMapping(value="/singleproductdetails{id}")
public String viewsingleproduct(@PathVariable("id") int id,Model m,HttpSession hs)
{
	Product product=productDao.getProduct(id);
	m.addAttribute("productdetails", product);
	refreshProductSession(hs, m);
	return "singleproductdetails";
}

@RequestMapping(value="/productcategory{id}")
public String viewProductByCategory(@PathVariable("id") int id,Model m)
{
	List<Product> list=productDao.retrieveProductByCategory(id);
	m.addAttribute("productList", list);
	m.addAttribute("product", new Product());
	return "viewproduct";
}

}
