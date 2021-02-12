package com.kinconnect.webapp.models.entities;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "user")
@Getter
@Setter
public class User implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable=false)
	private String firstName;

	@Column(nullable=false)
	private String lastName;
	
	@Column(unique=true, nullable=false)
	private String email;
	
	private String bio;
	
	private String pictureLink;
	
	private long contactNumber;
	
	private Date birthDate;
	
	@OneToOne
	@JoinColumn(name = "location_id")
	private Location location;
	
	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", bio="
				+ bio + ", pictureLink=" + pictureLink + ", contactNumber=" + contactNumber + ", birthDate=" + birthDate
				+ ", location=" + location + "]";
	}
	
}
