package com.claim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.House;
import com.claim.repository.HouseRepository;

@Service
public class HouseService {
	
	@Autowired
	private HouseRepository houseRepository;
	
	public void saveHouse(House house) {
			houseRepository.save(house);
	}
	
	public List<House> getAllHouses() {
		return houseRepository.findAll();
	}
	
	public House findHouse(String name) {
		return houseRepository.findOne(name);
}

}
