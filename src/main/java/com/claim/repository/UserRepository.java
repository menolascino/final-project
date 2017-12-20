package com.claim.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, String>{

	@Query("Select U from User U where U.username=:username and password=:password")
	public User getUser(@Param("username")String username, @Param("password") String password);
}

	
