package com.cts.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book_maven")
public class Book {
	
	@Column(name = "title")
	String title;
	
	@Column(name = "author")
	String author;
	
	@Id
	@Column(name = "book_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int book_id;
	
	@Column(name = "price")
	float price;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Book [title=" + title + ", author=" + author + ", book_id=" + book_id + ", price=" + price + "]";
	}

	public Book(String title, String author, int book_id, float price) {
		super();
		this.title = title;
		this.author = author;
		this.book_id = book_id;
		this.price = price;
	}
	
	public Book(String title, String author, float price) {
		super();
		this.title = title;
		this.author = author;
		this.price = price;
	}

}
