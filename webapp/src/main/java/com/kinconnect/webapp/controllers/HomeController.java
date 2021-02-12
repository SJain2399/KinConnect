package com.kinconnect.webapp.controllers;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kinconnect.webapp.models.entities.Event;
import com.kinconnect.webapp.models.entities.GroupInfo;
import com.kinconnect.webapp.models.entities.Task;
import com.kinconnect.webapp.models.entities.User;
import com.kinconnect.webapp.models.ui.AddressBookData;
import com.kinconnect.webapp.models.ui.GroupInfoPageData;
import com.kinconnect.webapp.models.ui.RegisterEvent;
import com.kinconnect.webapp.models.ui.UserHomePageData;
import com.kinconnect.webapp.models.ui.UserProfilePageData;
import com.kinconnect.webapp.services.EventService;
import com.kinconnect.webapp.services.GroupInfoService;
import com.kinconnect.webapp.services.SubscriptionService;
import com.kinconnect.webapp.services.TaskService;
import com.kinconnect.webapp.services.UserService;

import org.apache.commons.lang3.StringUtils;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@Autowired 
	private UserService userService;
	
	@Autowired 
	private GroupInfoService groupInfoService;
	
	@Autowired 
	private SubscriptionService subscriptionService;
	
	@Autowired 
	private TaskService taskService;
	
	@Autowired 
	EventService eventService;
	
	@RequestMapping("/home/{userId}") 
    public ModelAndView homePage(@PathVariable ("userId") Long userId) {
		
		User user = userService.getUserById(userId);
		if (user == null) {
			log.info("Got null user: Redirecting to default home page");
			return new ModelAndView("/default/home");
		}
			
		ModelAndView mv = new ModelAndView("/home");
		if(user != null && StringUtils.isEmpty(user.getPictureLink()))
			user.setPictureLink("/img/avatar-empty.png");
		
		List<GroupInfo> subscriptions = subscriptionService.getSubscriptions(user.getId());
		for (GroupInfo groupInfo: subscriptions) {
			if(StringUtils.isEmpty(groupInfo.getPictureLink()))
				groupInfo.setPictureLink("/img/avatar-empty128x128.png");
		}
		log.info("" + subscriptions.size() + "Subscriptions found for user: "+ user.getFirstName());
		
		List<Task> tasks = taskService.getDueTaskForUser(user.getId());
		log.info("" + tasks.size() + " tasks found for user: "+ user.getFirstName());
		
		List<Task> upcomingTasks = taskService.getUpcomingTaskForUser(user.getId());
		log.info("" + upcomingTasks.size() + " upcoming tasks found for user: "+ user.getFirstName());
		
		UserHomePageData uhd = new UserHomePageData();
		uhd.setUser(user);
		uhd.setSubscriptions(subscriptions);
		uhd.setTasks(tasks);
		uhd.setUpcomingTasks(upcomingTasks);
		mv.addObject("homePageData", uhd);

		return mv;
    }
	
	@RequestMapping("/home/user/calendar/{userId}")
    public ModelAndView myCalendar(@PathVariable ("userId") Long userId){
		User user = userService.getUserById(userId);
		if (user == null) {
			log.info("Got null user: Redirecting to default home page");
			return new ModelAndView("/default/calendar");
		}
			
		ModelAndView mv = new ModelAndView("/calendar");
		mv.addObject("user", user);
		return mv;
    }
	
	@RequestMapping("/home/group/info/{groupId}")
	public ModelAndView groupInfoPage(@PathVariable ("groupId") Long groupId) {
		GroupInfo groupInfo = groupInfoService.getGroupInfoById(groupId);
		if (groupInfo == null) {
			log.info("Got null groupInfo: Redirecting to default group page");
			return new ModelAndView("/default/group");
		}
			
		ModelAndView mv = new ModelAndView("/group");
		if(groupInfo != null && StringUtils.isEmpty(groupInfo.getPictureLink()))
			groupInfo.setPictureLink("/img/avatar-empty.png");
	
		List<User> subscribers = subscriptionService.getSubscribers(groupInfo.getId());
		for (User user: subscribers) {
			if(StringUtils.isEmpty(user.getPictureLink()))
				user.setPictureLink("/img/avatar-empty128x128.png");
		}
		log.info("" + subscribers.size() + "subscribers found for group: "+ groupInfo.getGroupName());
		
		List<Event> events = eventService.getEventsForGroup(groupId);
		
		GroupInfoPageData gid = new GroupInfoPageData();
		gid.setGroupInfo(groupInfo);
		gid.setSubscribers(subscribers);
		gid.setEvents(events);
		mv.addObject("groupInfoPageData", gid);

		return mv;
	}
	
	@RequestMapping("/home/user/profile/{userId}")
	public ModelAndView userProfilePage(@PathVariable ("userId") Long userId) {
		User user = userService.getUserById(userId);
		if (user == null) {
			log.info("Got null user: Redirecting to default profile page");
			return new ModelAndView("/default/profile");
		}
			
		ModelAndView mv = new ModelAndView("/profile");
		if(user != null && StringUtils.isEmpty(user.getPictureLink()))
			user.setPictureLink("/img/avatar-empty.png");

		List<GroupInfo> subscriptions = subscriptionService.getSubscriptions(user.getId());
		for (GroupInfo groupInfo: subscriptions) {
			if(StringUtils.isEmpty(groupInfo.getPictureLink()))
				groupInfo.setPictureLink("/img/avatar-empty128x128.png");
		}
		log.info("" + subscriptions.size() + "Subscriptions found for user: "+ user.getFirstName());

		List<Event> events = eventService.getEventsByUser(userId);
		
		UserProfilePageData upd = new UserProfilePageData();
		upd.setUser(user);
		upd.setSubscriptions(subscriptions);
		upd.setEvents(events);
		mv.addObject("userProfilePageData", upd);

		return mv;
	}
	
	@RequestMapping("/home/user/address/book/{userId}")
	public ModelAndView addressBookPage(@PathVariable ("userId") Long userId) {
		User user = userService.getUserById(userId);
		if (user == null) {
			log.info("Got null user: Redirecting to default address book page");
			return new ModelAndView("/default/address-book");
		}
			
		ModelAndView mv = new ModelAndView("/address-book");
		if(user != null && StringUtils.isEmpty(user.getPictureLink()))
			user.setPictureLink("/img/avatar-empty.png");

		List<GroupInfo> subscriptions = subscriptionService.getSubscriptions(user.getId());
		Set<User> friends = new HashSet<User>();
		
		for (GroupInfo groupInfo: subscriptions) {
			List<User> subscribers = subscriptionService.getSubscribers(groupInfo.getId());
			if (!subscribers.isEmpty()) {
				for (User subscriber: subscribers) {
					if(StringUtils.isEmpty(subscriber.getPictureLink()))
						subscriber.setPictureLink("/img/avatar-empty128x128.png");
					friends.add(subscriber);
				}
			}
		}
		log.info("" + friends.size() + " friends found for user: "+ user.getFirstName());

		AddressBookData abd = new AddressBookData();
		abd.setUser(user);
		abd.setFriends(friends);
		mv.addObject("addressBookData", abd);

		return mv;
	}	
	
	@GetMapping("/public/signup")
    public String signupForm(Model model){
		model.addAttribute("user", new User());
        return "sign-up";
    }
	
	@PostMapping("/public/signup")
	public String signUp(@ModelAttribute User user) {
		log.info("object recieved: " + user.toString());
		try {
			User createdUser = userService.saveUser(user);
			if (createdUser == null)
				return "redirect:/signup";
			return "redirect:/home/" + user.getId();
		}
		catch (Exception e) {
			log.error("Exception occurred in home controller: ", e);
			return "redirect:/public/signup";
		}	
	}
	
	@PostMapping("/home/create/group/{userId}")
	public ResponseEntity<String> createGroup(@PathVariable ("userId") Long userId, GroupInfo groupInfo) {
		log.info("object recieved: " + groupInfo.toString());
		User user = userService.getUserById(userId);
		try {
			GroupInfo createdGroup = groupInfoService.createGroup(groupInfo, user);
			return(new ResponseEntity<String>("Ok",HttpStatus.OK));
		}
		catch (Exception e) {
			log.error("Exception occurred in home controller: ", e);
			return(new ResponseEntity<String>("Error", HttpStatus.BAD_REQUEST));
		}	
	}
	
	@PostMapping("/home/user/post/event/{userId}")
	public ResponseEntity<String> postEvent(@PathVariable ("userId") Long userId, RegisterEvent registerEvent) {
		log.info("object recieved: " + registerEvent.toString());
		
		try {
			Event event = registerEvent.eventFrom();
			Event createdEvent = eventService.saveEvent(event);
			return(new ResponseEntity<String>("Ok",HttpStatus.OK));
		}
		catch (Exception e) {
			log.error("Exception occurred in home controller: ", e);
			return(new ResponseEntity<String>("Error", HttpStatus.BAD_REQUEST));
		}	
	}
	
}
