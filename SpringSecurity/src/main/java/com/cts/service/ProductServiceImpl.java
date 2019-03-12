package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.DAO.ProductDAO;
import com.cts.entity.Product;


@Service("productService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDAO productDAO;
	
	public ProductServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional
	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
		productDAO.saveProduct(product);
	}

	@Override
	@org.springframework.transaction.annotation.Transactional
	public List<Product> listallProduct() {
		// TODO Auto-generated method stub
		System.out.println("I am in list service");
		return productDAO.listAllProduct();
	}

	@Override
	@Transactional
	public Product getProduct(int Id) {
		// TODO Auto-generated method stub
		Product book = productDAO.getProduct(Id);
		return book;
	}

	@Override
	@Transactional
	public void deleteProduct(int Id) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(Id);
	}

}
