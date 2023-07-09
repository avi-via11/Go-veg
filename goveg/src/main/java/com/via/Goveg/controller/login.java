package com.via.Goveg.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.via.Goveg.repository.LoginRepository;

@Controller
public class login {
	

	    @Autowired
	    private LoginRepository loginRepository;

	    @PostMapping("/savelogin")
	    public String loginController(@RequestParam String user, @RequestParam String pass, HttpSession session) {
	        
	        String role = loginRepository.getUserRole(user, pass);
	        session.setAttribute("role", role);
	        switch (role) {
	            case "farmer":
	                return "redirect:/farmer";
	            case "customer":
	                return "redirect:/customer";
	            case "admin":
	                return "redirect:/admin";
	            default:
	                return "redirect:/login";
	        }
	    }
	    @GetMapping("/admin")
		public String adminpage() {
			return "admin";
		}

	    @GetMapping("/farmer")
		public String farmerpage() {
			return "farmer";
		}

	   
		}


	


