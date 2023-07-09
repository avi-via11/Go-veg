package com.via.Goveg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.via.Goveg.model.ItemBean;
import com.via.Goveg.model.RegisterBean;
import com.via.Goveg.repository.ItemRepository;


@Controller
public class index {
	//@Autowired
	//private RegisterService registerService;
	
	@Autowired
	private ItemRepository itemrepo;
	
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	

	    @GetMapping("/success")
	    public String showSuccessPage() {
	        return "success";
	    }
	
	
	
	
	
	
		
	@GetMapping("/timeoutFruit")
	public String timeoutFruits() {
		return "timeoutFruit";
	}
		
	@GetMapping("/viewFruits")
	public String listAll(Model model) {
		List<ItemBean> items = itemrepo.findAll();
		model.addAttribute("items", items);
		return "viewFruits";
	}
	@GetMapping("/viewVeg")
	public String viewVegetables(Model vegetableModel) {
		List<ItemBean> vegetable = itemrepo.findAll();
		vegetableModel.addAttribute("vegetable", vegetable);
		return "viewVeg";
	}	
	@GetMapping("/viewCereal")
	public String cireal(Model cirealModel) {
		List<ItemBean> cireal = itemrepo.findAll();
		cirealModel.addAttribute("cireal", cireal);
		return "viewCireals";
	}
	@GetMapping("/viewPulses")
	public String viewPulses(Model pulseModel) {
		List<ItemBean> viewPulses = itemrepo.findAll();
		pulseModel.addAttribute("viewPulses", viewPulses);
		return "viewPulse";
	}
	
}
