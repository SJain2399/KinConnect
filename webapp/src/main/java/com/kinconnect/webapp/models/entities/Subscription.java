package com.kinconnect.webapp.models.entities;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "subscription")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Subscription implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
//	@EmbeddedId
//	SubscriptionKey id;
//	
//	@ManyToOne
//	@MapsId("userId")
//	@JoinColumn(name = "user_id")
//	User user;
//
//	@ManyToOne
//	@MapsId("groupId")
//	@JoinColumn(name = "group_id")
//	GroupInfo groupInfo;


	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

    @OneToOne
    @JoinColumn(name = "user_id")
    User user;

    @OneToOne
    @JoinColumn(name = "group_id")
    GroupInfo groupInfo;

}
