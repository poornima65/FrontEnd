package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.ProductDao;
import com.niit.models.Product;

@Controller
public class ProductController {
 @Autowired
 ProductDao productDao;

  // Landing Page--product is added in Model for Spring Form---List is added
 // to retrive all data
 @RequestMapping("/")
 public String home(Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "");
  return "home";
 }

  // Saving Product
 @RequestMapping(value = "/save", method = RequestMethod.POST)
 public String save(@ModelAttribute("product") Product p, Model m) {
  productDao.save(p);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "product added successfully");
  return "home";
 }

  // Displaying Update Form
 @RequestMapping(value = "/update/{pid}", method = RequestMethod.GET)
 public String update(@PathVariable("pid") int pid, Model m) {
  Product p = productDao.getById(pid);
  m.addAttribute("isEditing", true);
  m.addAttribute("product", p);
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "");
  return "home";
 }

  // Updating Product
 @RequestMapping(value = "/update", method = RequestMethod.POST)
 public String update(@ModelAttribute("product") Product p, Model m) {
  productDao.update(p);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "product updated successfully");
  return "home";
 }

  // Deleting Product
 @RequestMapping(value = "/delete/{pid}", method = RequestMethod.GET)
 public String delete(@PathVariable("pid") int pid, Model m) {
  productDao.deleteById(pid);
  m.addAttribute("product", new Product());
  m.addAttribute("productList", productDao.getAllProduct());
  m.addAttribute("msg", "product deleted successfully");
  return "home";
 }

}
