package com.kinconnect.webapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages={"com.kinconnect.webapp","com.kinconnect.webapp.repositories"})
@EntityScan(basePackages =  {"com.kinconnect.webapp.models.entities","com.kinconnect.webapp.models.ui"})
public class WebappApplication {

	public static void main(String[] args) {
		SpringApplication.run(WebappApplication.class, args);
	}
	
}
