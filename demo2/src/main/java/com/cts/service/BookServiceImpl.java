package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.DAO.BookDAO;
import com.cts.entity.Book;


@Service("bookService")
public class BookServiceImpl implements BookService{

	@Autowired
	BookDAO bookDAO;
	
	public BookServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional
	public void saveBook(Book book) {
		// TODO Auto-generated method stub
		bookDAO.saveBook(book);
	}

	@Override
	@org.springframework.transaction.annotation.Transactional
	public List<Book> listallBooks() {
		// TODO Auto-generated method stub
		System.out.println("I am in list service");
		return bookDAO.listAllBook();
	}

	@Override
	@Transactional
	public Book getBook(int Id) {
		// TODO Auto-generated method stub
		Book book = bookDAO.getBook(Id);
		return book;
	}

	@Override
	@Transactional
	public void deleteBook(int Id) {
		// TODO Auto-generated method stub
		bookDAO.deleteBook(Id);
	}

}
