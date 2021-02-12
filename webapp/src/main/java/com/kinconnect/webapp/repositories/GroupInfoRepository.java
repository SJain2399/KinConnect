package com.kinconnect.webapp.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.kinconnect.webapp.models.entities.GroupInfo;

@RepositoryRestResource(collectionResourceRel = "groupinfo", path = "groupinfo")
public interface GroupInfoRepository extends CrudRepository<GroupInfo, Long>{
	
	GroupInfo findByGroupCode(String code);
	GroupInfo getGroupInfoById(Long id);
	

}
