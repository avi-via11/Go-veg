package com.via.Goveg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.via.Goveg.model.InvoiceBean;
import com.via.Goveg.model.ItemBean;
import com.via.Goveg.repository.InvoiceBeanRepository;
import com.via.Goveg.repository.ItemRepository;
@Transactional
@Controller
public class ItemController {

    @Autowired
    private ItemRepository itemRepository;
    @Autowired
    private InvoiceBeanRepository invoiceBeanRepository;
    @GetMapping("/customer")
    public String showCustomerForm(Model model) {
        List<ItemBean> items = itemRepository.findAll();
        model.addAttribute("items", items);
        model.addAttribute("itemBean", new ItemBean());
        return "customer";
    }

    @PostMapping("/customer")
    public String saveItem(@RequestParam ("id") int Id,
    		@RequestParam ("itemname") String ItemName,
    		@RequestParam ("itemQty") float ItemQty,
    		@RequestParam ("itemPrice") float itmPrice) {
    	
    	InvoiceBean invoice=new InvoiceBean(ItemName, ItemQty,Id,itmPrice);
    	
    	invoice.setRegId(Id);
  
    	invoice.setItemName(ItemName);
    	invoice.setQty(ItemQty);
    	invoice.setItemprice(itmPrice);
    		invoiceBeanRepository.save(invoice);
    		return"redirect:/customer";
    }
    @RequestMapping("/invoice")
	public String home() {
		return "invoice";
	}
    @PostMapping("/bill")
    public String handleFormSubmit(int id, Model model) {
  

            // Fetch associated purchases
            Iterable<InvoiceBean> purchases = invoiceBeanRepository.findByRegId(id);
            model.addAttribute("items", purchases);
            model.addAttribute("regId", id); // Add the regId attribute
        return "bill";
    }
    @PostMapping("/deleteData")
    public String deleteData(@RequestParam("regId") int regId) {
        // Delete the records based on the regId
        invoiceBeanRepository.deleteByRegId(regId);

        // Redirect to a success page or return the appropriate response
        return "redirect:/login"; // Example: Redirect to a success page
    }


}
