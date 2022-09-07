package com.genie.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/genie/*")
public class GenieController {

    @GetMapping("genie_01")
	public String genie_01() {
		return null;
	}
	@GetMapping("genie_02")
	public String genie_02() {
		return null;
	}
	@GetMapping("genie_03")
	public String genie_03() {
		return null;
	}
	@GetMapping("genie_04")
	public String genie_04() {
		return null;
	}
	@GetMapping("genie_05")
	public String genie_05() {
		return null;
	}
}
