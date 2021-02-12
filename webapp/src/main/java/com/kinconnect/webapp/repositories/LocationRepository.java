package com.kinconnect.webapp.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.kinconnect.webapp.models.entities.Location;

@RepositoryRestResource(collectionResourceRel = "location", path = "location")
public interface LocationRepository extends CrudRepository<Location, Long> {

}
