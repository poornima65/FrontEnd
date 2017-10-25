package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {
	

	 @RequestMapping(value="/login")
	 public String Login()
	 {
	  return "Login";
	 }
	 
	 @RequestMapping(value="/fail2login", method=RequestMethod.GET)
	 public ModelAndView loginerror(ModelMap model)
	 {
	   return new ModelAndView("Login","error",true);
	 }

	 @RequestMapping(value="/logout", method=RequestMethod.GET)
	 public ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
	 {
	   Authentication auth=SecurityContextHolder.getContext().getAuthentication();
	    if(auth!= null)
	      {
	  new SecurityContextLogoutHandler().logout(request, response, auth);
	      }
	    return new ModelAndView("Login","logoutmsg","Logged out Successfully");
	 }

	  @RequestMapping(value = "/welcome", method = RequestMethod.GET)
	      public String printWelcome() {
	          return "index";

	      }

}
