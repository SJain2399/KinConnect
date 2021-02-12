package com.kinconnect.webapp.repositories;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.kinconnect.webapp.models.entities.Task;

@RepositoryRestResource(collectionResourceRel = "task", path = "task")
public interface TaskRepository extends PagingAndSortingRepository<Task, Long> {
	
	@Query(value="select task from Task task where task.user.id=:userId and task.dueDate=curdate()")	
	List<Task> findAllDueTasksForUser(@Param("userId") Long userId);
	
	@Query(value="select task from Task task where task.user.id=:userId and task.dueDate>curdate()")	
	List<Task> findAllUpcomingTasksForUser(@Param("userId") Long userId);
	
}
