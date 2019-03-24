package com.kt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public String indexpage(){
		return "index";
	}
	
	@RequestMapping("/ss2")
	public String sspage() {
		return "someone/ss2";
	}
}
