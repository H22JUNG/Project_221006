//package com.goodee.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//
//import com.goodee.service.ProjectService;
//
//@Controller
//public class ysy199Controller {
//public ProjectService service;
//	
//	
//	public ysy199Controller(ProjectService service) {
//	super();
//	this.service = service;
//}
//
//
//	@GetMapping("/ysy199")
//	public String test1(Model model) {
//		model.addAttribute("list", service.select());
//		return "main";
//	}
//}
