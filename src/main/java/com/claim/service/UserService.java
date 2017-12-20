package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.User;
import com.claim.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired UserRepository userRepository;
	public void saveUser(User user) {
	userRepository.save(user);
		
	}
	public User getUser(String username, String password) {
	return userRepository.getUser(username, password);
	}
	
}

