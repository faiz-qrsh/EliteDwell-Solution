package com.services.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {

	@RequestMapping("/service/{id}")
	public String showServiceDetail(@PathVariable("id") String serviceId) {
		System.out.println(serviceId);
		return "redirect:/service-detail";
	}
	
	@RequestMapping("/service-detail")
	public String redirectDetail() {
		return "service-detail";
	}
}
