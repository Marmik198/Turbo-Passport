package com.advancejava.auditcourse.TurboPassport.repository;

import org.springframework.data.repository.CrudRepository;

import com.advancejava.auditcourse.TurboPassport.entity.User;


public interface UserRepository extends CrudRepository <User, Integer> {

	User findByUsername(String username);
}
