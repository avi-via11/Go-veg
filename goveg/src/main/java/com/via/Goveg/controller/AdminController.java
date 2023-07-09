package com.via.Goveg.controller;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.via.Goveg.model.ItemBean;
import com.via.Goveg.model.PurchaseBean;
import com.via.Goveg.repository.ItemRepository;
import com.via.Goveg.repository.PurchaseRepository;


@Controller
public class AdminController {
	@Autowired
	private ItemRepository itemRepository;
	
	@Autowired
	private PurchaseRepository purchaseRepository;
	
	@GetMapping("/purchasereport")
	public String purchasereport() {
		return "purchasereport";
	}
	@GetMapping("/purchaseentry")
	public String purchaseentry() {
		return "purchaseentry";
	}
	@GetMapping("/additem")
	public String additems() {
		return "additems";
	}
	@PostMapping("/additem")
	public String ItemBean(@RequestParam("catId") int catId,
            @RequestParam("itemName") String itemName,
            @RequestParam("itemPrice") float itemPrice,
            @RequestParam("itemQty") float intemQty,
            @RequestParam("myDate") String userId ){
			
		 ItemBean item = new ItemBean();
		    item.setCatId(catId);
		    item.setItemName(itemName);
		    item.setItemPrice(itemPrice);
		    item.setIntemQty(intemQty);
		    item.setuserId(userId);
		    itemRepository.save(item);
		    return "redirect:/admin";
	}
	@PostMapping("/purchase")
	public String PurchaseBean(@RequestParam("famid") int regId,
            @RequestParam("itemName") String itemName,
            @RequestParam("itemPrice") float itemPrice,
            @RequestParam("itemQty") float intemQty,
            @RequestParam("myDate") Date itemDate ){
		PurchaseBean item = new PurchaseBean();
		    item.setRegId(regId);
		    item.setItemName(itemName);
		    item.setItemPrice(itemPrice);
		    item.setIntemQty(intemQty);
		    item.setItemDate(itemDate);
		 
		purchaseRepository.save(item);
			 return "redirect:/admin";
}

	@GetMapping("/purchaseReport")
	public String generateReport(@RequestParam("fromDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date fromDate,
	                             @RequestParam("toDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date toDate,
	                             Model model) {

	    List<PurchaseBean> items = purchaseRepository.findItemsByDateRange(fromDate, toDate);
	    model.addAttribute("items", items);

	    return "reportresult";
	}
}

