package com.kinconnect.webapp.repositories;



import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.kinconnect.webapp.models.entities.User;

@RepositoryRestResource(collectionResourceRel = "user", path = "user")
public interface UserRepository extends CrudRepository<User, Long> {

	User getUserById(Long id);

}
