package com.kt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/kt/")
public class KtController {
	
	@RequestMapping("listUI")
	public String listUI() {
		return "someone/ss2";
	}
}
