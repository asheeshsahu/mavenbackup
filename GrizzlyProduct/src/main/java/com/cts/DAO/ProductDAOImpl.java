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

import com.cts.entity.Product;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{

	public ProductDAOImpl(){
		// TODO Auto-generated constructor stub
	}
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
	Session session = sessionFactory.getCurrentSession();
	session.saveOrUpdate(product);
	}

	@Override
	public List<Product> listAllProduct() {
		// TODO Auto-generated method stub
//		System.out.println("Hello " + sessionFactory);
//		System.out.println(" From dao list");
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Product> cq = cb.createQuery(Product.class);
		Root<Product> root = cq.from(Product.class);
		cq.select(root);
		Query query = session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public Product getProduct(int Id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Product book = session.get(Product.class, Id);
		return book;
	}

	@Override
	public void deleteProduct(int Id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Product book = session.byId(Product.class).load(Id);
		session.delete(book);
	}

}
