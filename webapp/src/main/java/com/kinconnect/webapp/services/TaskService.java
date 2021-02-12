package com.kinconnect.webapp.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kinconnect.webapp.models.entities.Task;
import com.kinconnect.webapp.repositories.TaskRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TaskService {
	
	@Autowired 
	TaskRepository taskRepository;
	
	public List<Task> getDueTaskForUser(Long userId) {
		try {
			List<Task> tasks = taskRepository.findAllDueTasksForUser(userId);
			return tasks;
		}
		catch(Exception e) {
			log.error("error in task service" + e);
			return new ArrayList<Task>();
		}
	}
	
	public List<Task> getUpcomingTaskForUser(Long userId) {
		try {
			List<Task> tasks = taskRepository.findAllUpcomingTasksForUser(userId);
			return tasks;
		}
		catch(Exception e) {
			log.error("error in task service" + e);
			return new ArrayList<Task>();
		}
	}
}
