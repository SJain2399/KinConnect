package com.kinconnect.webapp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	// Default pages with hard coded data to see front view
	
		@RequestMapping("/")
	    public String index(){
	        return "welcome";
	    }
		
		@RequestMapping("/dummy")
	    public String dummy(){
	        return "dummy";
		}

		@RequestMapping("/default/home")
	    public String defaultHomePage(){
	        return "default/home";
	    }
		
		@RequestMapping("/default/groups")
	    public String groupProfilePage(){
	        return "default/group";
	    }
		
		@RequestMapping("/default/calendar")
	    public String myEventsPage(){
	        return "default/calendar";
	    }
		
		@RequestMapping("/default/profile")
	    public String userProfilePage(){
	        return "default/profile";
	    }
		
		@RequestMapping("/default/addressbook")
	    public String addressBookPage(){
	        return "default/address-book";
	    }
		
		// Default pages end

}
