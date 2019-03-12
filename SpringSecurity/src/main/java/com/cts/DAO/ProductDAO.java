package com.cts.DAO;

import java.util.List;

import com.cts.entity.Product;

public interface ProductDAO {
	void saveProduct(Product book);
	List<Product> listAllProduct();
	Product getProduct(int Id);
	void deleteProduct(int Id);
}
