package com.niit.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	@RequestMapping("/")
	
	public String Home()
	{
		return  "index";
	}
   @RequestMapping("/about")
   public String About()
   {
	   return "About";
   }
   @RequestMapping("/login")
   public String Login()
   {
	   return "Login";
   }
   
   @RequestMapping("/header")
   public String header()
   {
	   return "header";
   }
   
   @RequestMapping("/signup")
   public String Signup()
   {
	   return "Sign-up";
   }
 
   
   @RequestMapping("/contact us")
   public String Contactus()
   {
	   return "Contact-us";
   }
}
