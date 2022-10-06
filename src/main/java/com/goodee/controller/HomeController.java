package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goodee.service.ProjectService;

@Controller
public class HomeController {
	
	public ProjectService service;
	
	
	public HomeController(ProjectService service) {
		super();
		this.service = service;
	}


	@RequestMapping(value="/")
	public String home(Model model) {
		model.addAttribute("list", service.select());
		service.getList2(model);
		return "main";
	}
}
