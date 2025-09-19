package com.booknest_app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.booknest_app.entity.Inventory;
import com.booknest_app.service.InventoryService;

@Controller
public class InventoryController {

	@Autowired
	private InventoryService inventoryService;	
	
	//http://localhost:8080/inventory
	@RequestMapping ("/inventory")
	public String inventory() {
		return "inventory";
	}
	
	@RequestMapping ("/saveinv")
	public String saveinv(Inventory inv) {
		inventoryService.saveInventory(inv);
		return "inventory";
	}
	
	//http://localhost:8080/listallinvent
	@RequestMapping ("/listallinvent")
	private String listallinvent(Inventory inv, Model mod) {
		List<Inventory> listallinvent = inventoryService.listallinvent(inv);
		mod.addAttribute("listallinvent", listallinvent);
		return "listallinvent";
	}
	
	@RequestMapping("/deleteinv")
	public String deletepass(@RequestParam ("id") long id, Inventory inv, Model mod) {
	   inventoryService.deleteoneinv(id);
	   List<Inventory> listallinv = inventoryService.listallinvent(inv);
	   mod.addAttribute("listallinv", listallinv);
	   return "listallinvent"; 
	}
}
