package com.kinconnect.webapp.models.ui;

import java.util.List;

import com.kinconnect.webapp.models.entities.Event;
import com.kinconnect.webapp.models.entities.GroupInfo;
import com.kinconnect.webapp.models.entities.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UserProfilePageData {
	
	private User user;
	private List<GroupInfo> subscriptions;
	private int groupCount;
	private List<Event> events;
}