package com.kinconnect.webapp.models.entities;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;

@Embeddable
@NoArgsConstructor
@AllArgsConstructor
public class SubscriptionKey implements Serializable {

	private static final long serialVersionUID = 1L;

    Long userId;
    Long groupId;
    
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}
	
	@Override
	  public boolean equals(Object o) {
	      if (this == o) return true;
	      if (o == null || getClass() != o.getClass()) return false;
	      SubscriptionKey groupUser = (SubscriptionKey) o;
	      if (userId != groupUser.userId) return false;
	      return groupId == groupUser.groupId;
	  }

	  @Override
	  public int hashCode() {
	      return Objects.hash(userId, groupId);
	  }

}
