package com.kinconnect.webapp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kinconnect.webapp.models.entities.User;
import com.kinconnect.webapp.repositories.UserRepository;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserService {
	
	@Autowired
	UserRepository userRepository;
	
	public User getUserById(Long id) {
		try {
			User user = userRepository.getUserById(id);
			return user;
		}
		catch(Exception e) {
			log.error("error in user service" + e);
			return new User();
		}
		
	}
	
	public User saveUser(User user) {
		try {
			User createdUser = userRepository.save(user);
			return createdUser;
		}
		catch(Exception e) {
			log.error("error in user service" + e);
			return new User();
		}
	}

}
