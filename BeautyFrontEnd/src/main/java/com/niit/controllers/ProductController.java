package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.dao.SupplierDao;

import com.niit.models.Product;

@Controller
public class ProductController {
 @Autowired
 ProductDao productDao;
 @Autowired
 SupplierDao supplierDao;
 @Autowired
 CategoryDao categoryDao;

  // Landing Page--product is added in Model for Spring Form---List is added
 // to retrive all data
 @RequestMapping(value={"/admin/Product","/product"})
 public String home(Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  return "Product";
 }
 //
 @RequestMapping(value="/productbycategory/{catId}")
 public String homeByCategory(@PathVariable("catId")int catid,Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getByCategoryId(catid));
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  return "Product";
 }
 @RequestMapping(value="/search",method=RequestMethod.POST)
 public String searchProduct(@RequestParam("q") String pname,Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.searchByProductName(pname));
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("supplierList", supplierDao.getAllSupplier());
  return "Product";
 }
 
  // Saving Product
 @RequestMapping(value = "/admin/product/save", method = RequestMethod.POST)
 public String save(@ModelAttribute("product")@Valid Product p,BindingResult result,Model m, HttpServletRequest request) {
	 
	 
	 if(result.hasErrors()){
		 m.addAttribute("product", p);
		  m.addAttribute("productList", productDao.getAllProduct());
		  m.addAttribute("msg", "Error in saving Product");
		  System.out.println(p.getCategory());
		  System.out.println(result.getFieldError().getField());
		  return "Product";
	 } 
  p.setImagePath(p.getMultipartfile().getOriginalFilename());	 
  productDao.storeFile(p, request);
  productDao.save(p);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "product added successfully");
  return "Product";
 }

  // Displaying Update Form
 @RequestMapping(value = "/admin/Product/update/{pid}", method = RequestMethod.GET)
 public String update(@PathVariable("pid") int pid, Model m) {
  Product p = productDao.getById(pid);
  m.addAttribute("isEditing", true);
  m.addAttribute("product", p);
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "");
  return "Product";
 }
  // Updating Product
 @RequestMapping(value = "/admin/product/update", method = RequestMethod.POST)
 public String update(@ModelAttribute("product") @Valid Product p, Model m,BindingResult result,HttpServletRequest request) {
	 
	 
	 if(result.hasErrors()){
		 m.addAttribute("product", p);
		  m.addAttribute("productList", productDao.getAllProduct());
		  m.addAttribute("msg", "Error in updating Product");
		  return "Product";
	 }
	 
	 System.out.println(p.getImagePath());
	 
	 if(!p.getMultipartfile().isEmpty()){
		 p.setImagePath(p.getMultipartfile().getOriginalFilename());	 
		  productDao.storeFile(p, request);
	 }
  productDao.update(p);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "product updated successfully");
  return "Product";
 }

  // Deleting Product
 @RequestMapping(value = "/admin/Product/delete/{pid}", method = RequestMethod.GET)
 public String delete(@PathVariable("pid") int pid, Model m) {
  productDao.deleteById(pid);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "product deleted successfully");
  return "Product";
 }

 @RequestMapping(value = "/showProduct/{pid}", method = RequestMethod.GET)
 public String getProduct(@PathVariable("pid") int pid, Model m) {
  Product p=productDao.getById(pid);
  m.addAttribute("product", p);
 
  return "Show";
 }

 
 
}
