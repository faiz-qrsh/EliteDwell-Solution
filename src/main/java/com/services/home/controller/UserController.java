package com.services.home.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.services.home.dao.UserDao;
import com.services.home.dao.impl.UserDaoImpl;
import com.services.home.entities.Booking;
import com.services.home.entities.User;
import com.services.home.service.impl.UserServiceImpl;

@Controller
public class UserController {
	
	private UserServiceImpl userService;

	@Autowired
	@Qualifier(value = "userService")
	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	@RequestMapping("/index")
	public String home() {
		return "../../index";
	}
	
	@RequestMapping("/signup-form")
	public String signUp() {
		return "signup-form";
	}
	
	@RequestMapping("/login-form")
	public String login() {
		return "login-form";
	}
	
	@RequestMapping("/application-form")
	public String applicationForm() {
		return "application-form";
	}
	
	@RequestMapping("/signup-data")
	public ModelAndView ceateAccount(@ModelAttribute("User") User user,HttpSession session) {
		ModelAndView mView=new ModelAndView();
		user.setBookings(new ArrayList<Booking>());
		if(this.userService.insertUser(user)==null) {
			mView.setViewName("signup-form");
			mView.addObject("error", "Account with the given mobile number alraedy exist");
		}else {
			mView.setViewName("redirect:/index");
			session.setAttribute("nav", "2");
			session.setAttribute("user", user.getMobNumber());
		}
		return mView;
	}
	
	@RequestMapping("/login-data")
	public ModelAndView aunthenticateUser(@RequestParam("mobNumber") Long mobNumber,@RequestParam("password") String password,HttpSession session) {
		ModelAndView mView=new ModelAndView();
		String status="Wrong Credentials";
		User user=this.userService.aunthenticateUser(mobNumber,password);
		if(user!=null) {
			mView.setViewName("redirect:/index");
			session.setAttribute("nav", "2");
			session.setAttribute("user", mobNumber);
			session.setAttribute("user1", user);
		}else {
			mView.addObject("msg", status);
			mView.setViewName("login-form");
		}
		return mView;
	}
	
	@RequestMapping("/sign-out")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}
	
}
