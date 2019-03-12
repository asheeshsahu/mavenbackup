package com.cts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="grizzly_maven")
public class Product {
	
	@Id
	@Column(name = "product_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int product_id;
	
	
	@Column(name = "category")
	String category;
	
	@Column(name = "name")
	String name;
	
	@Column(name = "description")
	String description;
	
	@Column(name = "brand")
	String brand;
	
	@Column(name = "price")
	float price;
	
	@Column(name = "rating")
	int rating;
	
	@Column(name = "image")
	String image;

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", category=" + category + ", name=" + name + ", description="
				+ description + ", brand=" + brand + ", price=" + price + ", rating=" + rating + ", image=" + image
				+ "]";
	}

	public Product(int product_id, String category, String name, String description, String brand, float price,
			int rating, String image) {
		super();
		this.product_id = product_id;
		this.category = category;
		this.name = name;
		this.description = description;
		this.brand = brand;
		this.price = price;
		this.rating = rating;
		this.image = image;
	}

	public Product(int product_id, String category, String name, String description, String brand, float price,
			int rating) {
		super();
		this.product_id = product_id;
		this.category = category;
		this.name = name;
		this.description = description;
		this.brand = brand;
		this.price = price;
		this.rating = rating;
	}

	public Product(String category, String name, String description, String brand, float price, int rating) {
		super();
		this.category = category;
		this.name = name;
		this.description = description;
		this.brand = brand;
		this.price = price;
		this.rating = rating;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
