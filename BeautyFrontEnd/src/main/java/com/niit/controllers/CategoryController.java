package com.niit.controllers;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.dao.CategoryDao;
import com.niit.models.Category;

@Controller
public class CategoryController {
 @Autowired
 CategoryDao categoryDao;

  // Landing Page--product is added in Model for Spring Form---List is added
 // to retrive all data
 @RequestMapping("/admin/Category")
 public String Category(Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("category", new Category());
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("msg", "");
  return "Category";
 }

  // Saving Product
 @RequestMapping(value = "/admin/Category/save", method = RequestMethod.POST)
 public String save(@ModelAttribute("category") @Valid Category c,BindingResult result, Model m) {
	 if(result.hasErrors()){
		 m.addAttribute("category", c);
		  m.addAttribute("categoryList", categoryDao.getAllCategory());
		  m.addAttribute("msg", "Error in adding Category");
		  System.out.println(result.getFieldError().getField());
		  return "Category";
	 }
	 categoryDao.save(c);
  m.addAttribute("category", new Category());
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("msg", "category added successfully");
  return "Category";
 }

  // Displaying Update Form
 @RequestMapping(value = "/admin/Category/update/{id}", method = RequestMethod.GET)
 public String update(@PathVariable("id") int id, Model m) {
	 Category c = categoryDao.getById(id);
  m.addAttribute("isEditing", true);
  m.addAttribute("category", c);
  m.addAttribute("categoryList",categoryDao.getAllCategory());
  m.addAttribute("msg", "");
  return "Category";
 }

  // Updating Product
 @RequestMapping(value = "/admin/Category/update", method = RequestMethod.POST)
 public String update(@ModelAttribute("category") @Valid Category c,BindingResult result, Model m) {
	 
	 if(result.hasErrors()){
		 m.addAttribute("category", c);
		  m.addAttribute("categoryList", categoryDao.getAllCategory());
		  m.addAttribute("msg", "Error in updating Category");
		  return "Category";
	 }
	 
	 
	 categoryDao.update(c);
  m.addAttribute("category", new Category());
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("msg", "category updated successfully");
  return "Category";
 }

  // Deleting Product
 @RequestMapping(value = "/admin/Category/delete/{id}", method = RequestMethod.GET)
 public String delete(@PathVariable("id") int id, Model m) {
  categoryDao.deleteById(id);
  m.addAttribute("category", new Category());
  m.addAttribute("categoryList", categoryDao.getAllCategory());
  m.addAttribute("msg", "category deleted successfully");
  return "Category";
 }

}
