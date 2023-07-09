package com.via.Goveg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.via.Goveg.model.LoginBean;
import com.via.Goveg.model.RegisterBean;
import com.via.Goveg.repository.LoginRepository;
import com.via.Goveg.repository.RegisterRepository;

@Controller
public class RegisterController {
	@Autowired
    private LoginRepository loginRepository;
	@Autowired
    private RegisterRepository registerRepository;
    
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@PostMapping("/register")
		public String register(@RequestParam("firstName") String fName,
                @RequestParam("lastName") String lName,
                @RequestParam("pass") String pass,
                @RequestParam("inlineRadioOptions") String type,
                @RequestParam("phoneNumber") String phno,
                @RequestParam("address") String address) {
				
		RegisterBean registration = new RegisterBean(fName, lName, pass, type, phno, address);
				registerRepository.save(registration);
				
				LoginBean login = new LoginBean(fName, pass, type);
				loginRepository.save(login);
				
				 return "redirect:/login";
	}

}
