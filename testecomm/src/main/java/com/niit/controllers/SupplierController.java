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

import com.niit.dao.SupplierDao;
import com.niit.models.Supplier;

@Controller
public class SupplierController {
 @Autowired
 SupplierDao SupplierDao;

  // Landing Page--product is added in Model for Spring Form---List is added
 // to retrive all data
 @RequestMapping("/admin/supplier")
 public String supplier(Model m) {
  m.addAttribute("isEditing", false);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", SupplierDao.getAllSupplier());
  m.addAttribute("msg", "");
  return "Supplier";
 }

  // Saving Product
 @RequestMapping(value = "/admin/Supplier/save", method = RequestMethod.POST)
 public String save(@ModelAttribute("supplier") @Valid Supplier s,BindingResult result, Model m) {
	 if(result.hasErrors()){
		 m.addAttribute("supplier", s);
		  m.addAttribute("supplierList", SupplierDao.getAllSupplier());
		  m.addAttribute("msg", "Error in adding Supplier");
		  System.out.println(result.getFieldError().getField());
		  return "Supplier";
	 }
	 SupplierDao.save(s);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", SupplierDao.getAllSupplier());
  m.addAttribute("msg", "Supplier added successfully");
  return "Supplier";
 }

  // Displaying Update Form
 @RequestMapping(value = "/admin/Supplier/update/{id}", method = RequestMethod.GET)
 public String update(@PathVariable("id") int id, Model m) {
	 Supplier s = SupplierDao.getById(id);
  m.addAttribute("isEditing", true);
  m.addAttribute("supplier", s);
  m.addAttribute("supplierList",SupplierDao.getAllSupplier());
  m.addAttribute("msg", "");
  return "Supplier";
 }

  // Updating Product
 @RequestMapping(value = "/admin/Supplier/update", method = RequestMethod.POST)
 public String update(@ModelAttribute("supplier") @Valid Supplier s,BindingResult result, Model m) {
	 
	 if(result.hasErrors()){
		 m.addAttribute("supplier", s);
		  m.addAttribute("supplierList", SupplierDao.getAllSupplier());
		  m.addAttribute("msg", "Error in updating Supplier");
		  return "Supplier";
	 }
	 
	 
	 SupplierDao.update(s);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", SupplierDao.getAllSupplier());
  m.addAttribute("msg", "Supplier updated successfully");
  return "Supplier";
 }

  // Deleting Product
 @RequestMapping(value = "/admin/Supplier/delete/{id}", method = RequestMethod.GET)
 public String delete(@PathVariable("id") int id, Model m) {
	 SupplierDao.deleteById(id);
  m.addAttribute("supplier", new Supplier());
  m.addAttribute("supplierList", SupplierDao.getAllSupplier());
  m.addAttribute("msg", "Supplier deleted successfully");
  return "Supplier";
 }

}
