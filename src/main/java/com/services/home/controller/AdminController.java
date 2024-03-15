package com.services.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.services.home.service.impl.AdminServiceImpl;
import com.services.home.service.impl.UserServiceImpl;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	private AdminServiceImpl adminService;

	@Autowired
	@Qualifier(value = "adminService")
	public void setAdminService(AdminServiceImpl adminService) {
		this.adminService = adminService;
	}
	
	@RequestMapping("/login")
	public String login() {
		return "admin/login";
	}
	
	@RequestMapping("/dashboard")
	public String authenticateAdmin() {
		return "/admin/dashboard";
	}
	
	@RequestMapping("/bookings")
	public ModelAndView showAllBookings() {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/admin/bookings");
		mView.addObject("bookings", adminService.getAllBookings());
		return mView;
	}
	
	@RequestMapping("/pending")
	public ModelAndView showPendingBookings() {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/admin/pending");
		mView.addObject("pending", adminService.getPendingBookings());
		return mView;
	}

	@RequestMapping("/services")
	public String showAllServices() {
		return "/admin/services";
	}
	
	@RequestMapping("/applications")
	public ModelAndView showAllApplications() {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/admin/applications");
		mView.addObject("applications", adminService.getAllApplication());
		return mView;
	}
	
	@RequestMapping("/approve-application/{id}")
	public String showServiceDetail(@PathVariable("id") int applicationId) {
		this.adminService.addServiceProvider(applicationId);
		return "redirect:/admin/dashboard";
	}
	
	@RequestMapping("/service-providers")
	public ModelAndView showAllServiceProviders() {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/admin/service-providers");
		mView.addObject("service-providers", adminService.getAllServiceProvider());
		return mView;
	}
	
	@RequestMapping("/customers")
	public ModelAndView showAllUsers() {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/admin/users");
		mView.addObject("users", adminService.getAllUsers());
		return mView;
	}
}
