package syngenta.der.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import syngenta.der.entities.Useraccount;

@Repository
public interface UserAccountDAO
		extends CrudRepository<Useraccount, Integer>, JpaRepository<Useraccount, Integer> {

	// public <T> void save(Useraccount user);

	// Useraccount findById(long id);

	@Query("select u from Useraccount u where u.userName =:userName ")
	List<Useraccount> findByUserName(@Param("userName") String userName);
	
	//Useraccount findByEmail(String email);
	// find user by status
		@Query("select u from Useraccount u where u.userStatus =:status")
		List<Useraccount> findByStatus(@Param("status") String status);
}
