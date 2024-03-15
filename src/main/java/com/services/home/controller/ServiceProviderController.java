package com.services.home.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.services.home.entities.Booking;
import com.services.home.entities.JobApplication;
import com.services.home.entities.ServiceProvider;
import com.services.home.entities.User;
import com.services.home.service.ServiceProviderService;
import com.services.home.service.impl.AdminServiceImpl;
import com.services.home.service.impl.ApplicationServiceImpl;
import com.services.home.service.impl.BookingServiceImpl;
import com.services.home.service.impl.ServiceProviderServiceImpl;
import com.services.home.service.impl.WorkServiceImpl;

import net.bytebuddy.asm.Advice.This;

@Controller
@RequestMapping("/service-provider")
public class ServiceProviderController {
	
	private AdminServiceImpl adminService;
	private ApplicationServiceImpl applicationService;
	private ServiceProviderServiceImpl serviceProviderService;
	private BookingServiceImpl bookingService;
	private WorkServiceImpl workService;

	@Autowired
	@Qualifier(value = "adminService")
	public void setAdminService(AdminServiceImpl adminService) {
		this.adminService = adminService;
	}
	
	@Autowired
	@Qualifier(value = "applicationService")
	public void setApplicationService(ApplicationServiceImpl applicationService) {
		this.applicationService = applicationService;
	}
	
	@Autowired
	@Qualifier(value = "serviceProviderService")
	public void setServiceProviderService(ServiceProviderServiceImpl serviceProviderService) {
		this.serviceProviderService = serviceProviderService;
	}
	
	@Autowired
	@Qualifier(value = "bookingService")
	public void setBookingService(BookingServiceImpl bookingService) {
		this.bookingService = bookingService;
	}
	
	@Autowired
	@Qualifier(value = "workService")
	public void setWorkService(WorkServiceImpl workService) {
		this.workService = workService;
	}

	@RequestMapping("/login")
	public String login(HttpSession session) {
		return "service-provider/login";
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView goToDashboard() {
		ModelAndView mView=new ModelAndView();
		mView.setViewName("service-provider/dashboard");
		mView.addObject("bookings", this.adminService.getAllBookings());
		return mView;
	}
	
	@RequestMapping("/login-data")
	public ModelAndView login(@RequestParam("number") String phoneNum,@RequestParam("password") String password,HttpSession session) {
		
		
		
		
		
		
		
		
		
		
		
		ModelAndView mView=new ModelAndView();
		//Authenticate Service Provider
		if(this.serviceProviderService.aunthenticateServiceProvider(phoneNum)==0) {
			mView.setViewName("service-provider/login");
			return mView;
		}
		ServiceProvider serviceProviderLoggedIn=this.serviceProviderService.getServiceProvider(phoneNum);
		//Check if current service provider accepted any service which is not completed yet
		if((session.getAttribute("serviceProvider")!=null)&&(session.getAttribute("serviceProvider").equals(serviceProviderLoggedIn)))
			mView.setViewName("redirect:/service-provider/serve-user");
		else {
			session.setAttribute("serviceProvider", this.serviceProviderService.getServiceProvider(phoneNum));
			System.out.println("jBJHcbjhbjh"+session.getAttribute("serviceProvider"));
			mView.addObject("bookings", this.adminService.getAllBookings());
			mView.setViewName("redirect:/service-provider/dashboard");
		}
		return mView;
	}
	
	@RequestMapping("accept-booking/{id}")
	private ModelAndView name(@PathVariable("id") int bookingId, HttpSession session) {
		Booking booking=this.bookingService.getBooking(bookingId);
		ModelAndView mView=new ModelAndView();
		if(booking.getStatus().equals("Pending")) {
			this.bookingService.updateStatus(booking);
			this.workService.addWork(booking, (ServiceProvider)session.getAttribute("serviceProvider"));
			session.setAttribute("acceptedBooking", booking);
			mView.setViewName("service-provider/serve-user");
			return mView;
		}
		mView.setViewName("service-provider/dashboard");
		return mView;
	}
	
	@RequestMapping("/application-form")
	public String jobApplication() {
		return "service-provider/application-form";
	}
	
	@RequestMapping("/job-application")
	public String submit(@ModelAttribute("JobApplication") JobApplication application) {
		application.setStatus("Under Consideration");
		this.applicationService.addApplication(application);
		System.out.println(applicationService);
		return "success";
	}
	
}
