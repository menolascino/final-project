package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.claim.entity.House;

@Repository
public interface HouseRepository extends JpaRepository<House, String>{
	
}
