package com.kinconnect.webapp.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kinconnect.webapp.models.entities.User;
import com.kinconnect.webapp.models.entities.GroupInfo;
import com.kinconnect.webapp.repositories.SubscriptionRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SubscriptionService {
	
	@Autowired 
	SubscriptionRepository subscriptionRepository;
	
	public List<User> getSubscribers(Long groupId) {
		try {
			List<User> subscribers = subscriptionRepository.findAllUsersForGroup(groupId);
			return subscribers;
		}
		catch(Exception e) {
			log.error("error in subscription service" + e);
			return new ArrayList<User>();
		}
	}
	
	public List<GroupInfo> getSubscriptions(Long userId) {
		try {
			List<GroupInfo> subscriptions = subscriptionRepository.findAllGroupsForUser(userId);
			log.info("Inside SubscriptionService: Total subscriptions found: " + subscriptions.size());
			return subscriptions;
		}
		catch(Exception e) {
			log.error("error in subscription service" + e);
			return new ArrayList<GroupInfo>();
		}
	}

}
