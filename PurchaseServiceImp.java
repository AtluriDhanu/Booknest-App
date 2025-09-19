package com.booknest_app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booknest_app.entity.Purchase;
import com.booknest_app.repository.PurchaseRepository;

@Service
public class PurchaseServiceImp implements PurchaseService {

	@Autowired
	private PurchaseRepository purchaseRepository;
	
	@Override
	public void savePurchase(Purchase pur) {
		purchaseRepository.save(pur);
	}

	@Override
	public List<Purchase> listallpurch(Purchase pur) {
		List<Purchase> listallpurch = purchaseRepository.findAll();
		return listallpurch;
	}

	@Override
	public void deleteonepur(long id) {
		purchaseRepository.deleteById(id);
	}
}
