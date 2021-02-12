package com.kinconnect.webapp.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kinconnect.webapp.models.entities.Event;
import com.kinconnect.webapp.models.entities.User;
import com.kinconnect.webapp.repositories.EventRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EventService {
	
	@Autowired 
	EventRepository eventRepository;
	
	public Event saveEvent(Event event) {
		try {
			Event createdEvent = eventRepository.save(event);
			return createdEvent;
		}
		catch(Exception e) {
			log.error("error in event service" + e);
			return new Event();
		}
	}
	
	public List<Event> getEventsForGroup(Long groupId) {
		try {
			List<Event> events = eventRepository.findAllEventsForGroup(groupId);
			return events;
		}
		catch(Exception e) {
			log.error("error in event service" + e);
			return new ArrayList<Event>();
		}
	}
	
	public List<Event> getEventsByUser(Long userId) {
		try {
			List<Event> events = eventRepository.findAllEventsByUser(userId);
			return events;
		}
		catch(Exception e) {
			log.error("error in event service" + e);
			return new ArrayList<Event>();
		}
	}

}
