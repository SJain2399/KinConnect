package com.kinconnect.webapp.models.ui;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.beans.factory.annotation.Autowired;

import com.kinconnect.webapp.models.entities.Event;
import com.kinconnect.webapp.models.entities.GroupInfo;
import com.kinconnect.webapp.models.entities.Task;
import com.kinconnect.webapp.models.entities.User;
import com.kinconnect.webapp.services.GroupInfoService;
import com.kinconnect.webapp.services.UserService;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RegisterEvent {
	
	private Long userId;
	
	private String description;
	
	private String label;
	
	private String groupCode;
	
	private Date eventDate;
	
	@Autowired 
	UserService userService;
	
	@Autowired 
	GroupInfoService groupInfoService;
	
	public Event eventFrom() {
		Event event = new Event();
		event.setUser(userService.getUserById(userId));
		event.setGroupInfo(groupInfoService.getGroupInfoByGroupCode(groupCode));
		event.setLabel(label);
		event.setDescription(description);
		event.setEventDate(eventDate);
		return event;
	}

	@Override
	public String toString() {
		return "RegisterEvent [userId=" + userId + ", description=" + description + ", label=" + label + ", groupCode="
				+ groupCode + ", eventDate=" + eventDate + "]";
	}
	

}
