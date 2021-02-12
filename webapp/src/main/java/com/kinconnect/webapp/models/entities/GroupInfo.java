package com.kinconnect.webapp.models.entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "groupinfo")
@Getter
@Setter
public class GroupInfo implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@Column(nullable=false)
	private String groupName;
	
	@Column(nullable=false, unique=true)
	private String groupCode;
	
	private String pictureLink;
	
	@Override
	public String toString() {
		return "GroupInfo [groupName=" + groupName + ", groupCode=" + groupCode + "]";
	}

	
}
