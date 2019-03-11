package com.cts.service;

import java.util.List;

import com.cts.entity.Book;

public interface BookService {
	void saveBook(Book book);
	List<Book> listallBooks();
	Book getBook(int Id);
	void deleteBook(int Id);
}
