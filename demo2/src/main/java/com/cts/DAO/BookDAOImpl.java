package com.cts.DAO;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.entity.Book;

@Repository("bookDAO")
public class BookDAOImpl implements BookDAO{

	public BookDAOImpl(){
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveBook(Book book) {
		// TODO Auto-generated method stub
	Session session = sessionFactory.getCurrentSession();
	session.saveOrUpdate(book);
	}

	@Override
	public List<Book> listAllBook() {
		// TODO Auto-generated method stub
//		System.out.println("Hello " + sessionFactory);
//		System.out.println(" From dao list");
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Book> cq = cb.createQuery(Book.class);
		Root<Book> root = cq.from(Book.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public Book getBook(int Id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Book book = session.get(Book.class, Id);
		return book;
	}

	@Override
	public void deleteBook(int Id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Book book = session.byId(Book.class).load(Id);
		session.delete(book);
	}

}
