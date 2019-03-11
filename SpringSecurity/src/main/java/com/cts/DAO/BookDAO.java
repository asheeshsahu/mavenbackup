package com.cts.DAO;

import java.util.List;

import com.cts.entity.Book;

public interface BookDAO {
	void saveBook(Book book);
	List<Book> listAllBook();
	Book getBook(int Id);
	void deleteBook(int Id);
}
