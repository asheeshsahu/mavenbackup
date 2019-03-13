package com.cts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Product;
import com.cts.service.ProductService;

@Controller

public class ProductController {

	@Autowired
	ProductService productService;
	
	
	@GetMapping("/")
	public String loginKar()
	{
		return "redirect:/login";
	}
	
	@GetMapping("/list")
	public String listAllProduct(Model model) {
		System.out.println("entered in list a book");
		List<Product> listProduct = productService.listallProduct();
		System.out.println("ProductList :" + listProduct);
		model.addAttribute("product", listProduct);
		return "productList";
	}
	
	@GetMapping("/showProduct")
	public String showFormForAdd(Model themodel)
	{
		System.out.println("I will accept book data");
		Product product = new Product();
		themodel.addAttribute("product", product);
		return "addProduct";
	}
	
	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Product product)
	{
		System.out.println("this is save book"+product);
		productService.saveProduct(product);
		return "redirect:/list";
	}
	
	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("product_id") int id)
	{
		productService.deleteProduct(id);
		System.out.println("Product is deleted");
		return "redirect:/list";
	}
	
	@GetMapping("/updateProduct")
	public String updateProduct(@RequestParam("product_id") int id, Model theModel)
	{
		System.out.println("Book Id"+id);
		//Book theBook = bookService.getBook(id);
		//System.out.println(theBook);
		Product product=new Product();
		product.setProduct_id(id);
		theModel.addAttribute("product", product);
		return "addProduct";
	}
	
	  @RequestMapping(value="/logout", method=RequestMethod.GET)  
	    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {  
		  System.out.println("logout ho gya");
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();  
	        if (auth != null){      
	           new SecurityContextLogoutHandler().logout(request, response, auth);  
	        }  
	         return "redirect:/login";  
	     }  
	  @GetMapping("/viewProduct")
		public String viewProduct(@RequestParam("product_id") int id, Model theModel)
		{
			System.out.println("Book Id"+id);
			//Book theBook = bookService.getBook(id);
			//System.out.println(theBook);
			Product product=productService.getProduct(id);
			theModel.addAttribute("product", product);
			return "viewProduct";
		}
}
