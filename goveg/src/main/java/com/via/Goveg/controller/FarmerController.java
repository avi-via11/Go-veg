package com.via.Goveg.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.via.Goveg.model.PurchaseBean;
import com.via.Goveg.model.RegisterBean;
import com.via.Goveg.repository.PurchaseRepository;
import com.via.Goveg.repository.RegisterRepository;

@Controller
public class FarmerController {

    private final RegisterRepository registerRepository;
    private final PurchaseRepository purchaseRepository;

    @Autowired
    public FarmerController(RegisterRepository registerRepository, PurchaseRepository purchaseRepository) {
        this.registerRepository = registerRepository;
        this.purchaseRepository = purchaseRepository;
    }

    @RequestMapping("/farmer")
    public String farmerForm() {
        return "farmer"; 
    }

    @PostMapping("/farmer")
    public String handleFormSubmit(int id, Model model) {
        RegisterBean register = registerRepository.findByRegId(id);
        if (register != null) {
            model.addAttribute("register", register);

            // Fetch associated purchases
            Iterable<PurchaseBean> purchases = purchaseRepository.findByRegId(id);
            model.addAttribute("purchases", purchases);
        }
        return "farmerresult";
    }
}
