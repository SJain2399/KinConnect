package com.kinconnect.webapp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.kinconnect.webapp.models.entities.GroupInfo;
import com.kinconnect.webapp.models.entities.Subscription;
import com.kinconnect.webapp.models.entities.User;

@RepositoryRestResource(collectionResourceRel = "subscription", path = "subscription")
public interface SubscriptionRepository extends CrudRepository<Subscription, Long> {
	
	@Query(value="select sub.groupInfo from Subscription sub where sub.user.id=:userId")	
	List<GroupInfo> findAllGroupsForUser(@Param("userId") Long userId);
	
	@Query(value="select sub.user from Subscription sub where sub.groupInfo.id=:groupId")	
	List<User> findAllUsersForGroup(@Param("groupId") Long groupId);
}
