package com.cts.service;

import java.util.List;

import com.cts.entity.Product;

public interface ProductService {
	void saveProduct(Product product);
	List<Product> listallProduct();
	Product getProduct(int Id);
	void deleteProduct(int Id);
}
