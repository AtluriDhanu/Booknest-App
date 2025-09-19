package com.booknest_app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booknest_app.entity.Inventory;
import com.booknest_app.repository.InventoryRepository;

@Service
public class InventoryServiceImp implements InventoryService {

	@Autowired
	private InventoryRepository inventoryRepository; 
	
	@Override
	public void saveInventory(Inventory inv) {
		inventoryRepository.save(inv);	
	}

	@Override
	public List<Inventory> listallinvent(Inventory inv) {
		List<Inventory> listallinvent = inventoryRepository.findAll();
		return listallinvent;
	}

	@Override
	public void deleteoneinv(long id) {
		inventoryRepository.deleteById(id);
	}
}
