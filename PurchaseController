package com.booknest_app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.booknest_app.entity.Inventory;
import com.booknest_app.entity.Purchase;
import com.booknest_app.service.PurchaseService;

@Controller
public class PurchaseController {

	@Autowired
	private PurchaseService purchaseService;
	
	//http://localhost:8080/purch
	@RequestMapping ("/purch")
	public String purch() {
		return "purchase";
	}
	
	@RequestMapping ("/savepur")
	public String savepurch (Purchase pur) {
		purchaseService.savePurchase (pur);
		return "purchase";
	}
	
	//http://localhost:8080/listallpurch
	@RequestMapping ("/listallpurch")
	private String listallpurch (Purchase pur, Model mod) {
	List<Purchase> listallpurch = purchaseService.listallpurch(pur);
	mod.addAttribute("listallpurch", listallpurch);
	return "listallpurch";
	}
	
	@RequestMapping ("/deletepur")
	public String deletepur(@RequestParam ("id") long id, Purchase pur, Model mod) {
		   purchaseService.deleteonepur(id);
		   List<Purchase> listallpur = purchaseService.listallpurch(pur);
		   mod.addAttribute("listallpur", listallpur);
		   return "listallpurch"; 
	}
}
