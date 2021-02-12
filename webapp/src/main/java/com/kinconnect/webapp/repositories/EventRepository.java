package com.kinconnect.webapp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.kinconnect.webapp.models.entities.Event;
import com.kinconnect.webapp.models.entities.GroupInfo;

@RepositoryRestResource(collectionResourceRel = "event", path = "event")
public interface EventRepository extends CrudRepository<Event, Long>{
	
	@Query(value="select event from Event event where event.user.id=:userId")	
	List<Event> findAllEventsByUser(@Param("userId") Long userId);
	
	@Query(value="select event from Event event where event.groupInfo.id=:groupId")
	List<Event> findAllEventsForGroup(@Param("groupId") Long groupId);
}
