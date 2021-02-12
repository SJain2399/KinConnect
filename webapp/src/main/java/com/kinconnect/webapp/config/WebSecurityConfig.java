package com.kinconnect.webapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

//	@Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth.inMemoryAuthentication()
//                .withUser("shruti")
//                .password("{bycrypt}12345678")
//                .roles("USER")
//                .and()
//                .withUser("shreya")
//                .password("{bycrypt}87654321")
//                .roles("USER");
//    }
	
	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
	        .antMatchers("/signup/**", "/signin/**")
			.permitAll()
			.anyRequest()
			.permitAll()
			.and()
            .formLogin()
            .loginPage("/signin")
            .defaultSuccessUrl("/home")
            .failureUrl("/login?error=true")
            .permitAll()
        .and()
            .logout()
            .logoutSuccessUrl("/login?logout=true")
            .invalidateHttpSession(true)
            .permitAll()
        .and()
            .csrf()
            .disable();
	
    }
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//
//		http
//		.csrf().disable()
//		.authorizeRequests()
//		.antMatchers("/signup/**", "/signin/**")
//		.permitAll()
//		.anyRequest()
//		.permitAll()
//		.and()
//		.formLogin()
//			.loginPage("/signin")
//			.defaultSuccessUrl("/home", true)
//		.permitAll();
//	}

}
