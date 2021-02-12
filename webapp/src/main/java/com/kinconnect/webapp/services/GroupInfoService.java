package com.kinconnect.webapp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kinconnect.webapp.models.entities.GroupInfo;
import com.kinconnect.webapp.models.entities.Subscription;
import com.kinconnect.webapp.models.entities.User;
import com.kinconnect.webapp.repositories.GroupInfoRepository;
import com.kinconnect.webapp.repositories.SubscriptionRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class GroupInfoService {
	
	@Autowired
	GroupInfoRepository groupInfoRepository;
	
	@Autowired 
	SubscriptionRepository subscriptionRepository;
	
	public GroupInfo getGroupInfoById(Long groupId) {
		try {
			GroupInfo groupInfo = groupInfoRepository.getGroupInfoById(groupId);
			return groupInfo;
		}
		catch(Exception e) {
			log.error("error in groupInfoService" + e);
			return new GroupInfo();
		}
		
	}
	
	public GroupInfo getGroupInfoByGroupCode(String groupCode) {
		try {
			GroupInfo groupInfo = groupInfoRepository.findByGroupCode(groupCode);
			return groupInfo;
		}
		catch(Exception e) {
			log.error("error in groupInfoService" + e);
			return new GroupInfo();
		}
		
	}
	
	public GroupInfo createGroup(GroupInfo groupInfo, User user) {
		try {
			GroupInfo createdGroup = groupInfoRepository.save(groupInfo);
			Subscription subscription = new Subscription();
			subscription.setUser(user);
			subscription.setGroupInfo(groupInfo);
			subscriptionRepository.save(subscription);
			return createdGroup;
		}
		catch(Exception e) {
			log.error("error in user service" + e);
			return new GroupInfo();
		}
	}

}
