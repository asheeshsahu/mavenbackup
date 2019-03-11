package com.cts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Book;
import com.cts.service.BookService;

@Controller
@RequestMapping("/")
public class HelloController {

	@Autowired
	BookService bookService;
	
	
	
	@GetMapping("/list")
	public String listAllBooks(Model model) {
		System.out.println("entered in list a book");
		List<Book> lb = bookService.listallBooks();
		System.out.println("Booklist :" + lb);
		model.addAttribute("books", lb);
		return "booklist";
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model themodel)
	{
		System.out.println("I will accept book data");
		Book theBook = new Book();
		themodel.addAttribute("book", theBook);
		return "addBook";
	}
	
	@PostMapping("/saveBook")
	public String saveBook(@ModelAttribute("book") Book theBook)
	{
		System.out.println("this is save book"+theBook);
		bookService.saveBook(theBook);
		return "redirect:/list";
	}
	
	@GetMapping("/deleteForm")
	public String deleteBook(@RequestParam("bookId") int id)
	{
		bookService.deleteBook(id);
		System.out.println("Book is deleted");
		return "redirect:/list";
	}
	
	@GetMapping("/updateForm")
	public String updateBook(@RequestParam("bookId") int id, Model theModel)
	{
		System.out.println("Book Id"+id);
		//Book theBook = bookService.getBook(id);
		//System.out.println(theBook);
		Book book=new Book();
		book.setBook_id(id);
		theModel.addAttribute("book", book);
		return "addBook";
	}
}
