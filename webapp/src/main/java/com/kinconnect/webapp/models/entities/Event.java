package com.kinconnect.webapp.models.entities;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "event")
@Getter
@Setter
public class Event {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@OneToOne
	@JoinColumn(name = "user_id", nullable=false)
	private User user;
	
	private String description;
	
	@Column(nullable=false)
	private String label;
	
	@OneToOne
	@JoinColumn(name = "group_id", nullable=false)
	private GroupInfo groupInfo;
	
	@Column(nullable=false)
	private Date eventDate;
	
	@CreationTimestamp
	private Timestamp creationDate;

	@Override
	public String toString() {
		return "Event [user=" + user + ", description=" + description + ", label=" + label + ", groupInfo=" + groupInfo
				+ ", eventDate=" + eventDate + "]";
	}
	
	
	
}
