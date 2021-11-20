package syngenta.der.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import syngenta.der.entities.Country;
import syngenta.der.entities.Trial;
import syngenta.der.entities.Useraccount;

@Repository
public interface TrialDAO extends CrudRepository<Trial, Integer>, JpaRepository<Trial, Integer> {

	@Query("from Trial as t inner join t.useraccount as u where u.userId =:id ")
	List<Trial> findTrialByUserId(@Param("id") int id);

	@Query("from Trial as t inner join t.useraccount as u where u.userName =:name ")
	List<Trial> findTrailsByUserName(@Param("name")String name);
	
	@Query("from Trial where trialId =:id ")
	List<Trial> findTrialByStrID(@Param("id") String id);
	
	@Query("from Trial as t inner join t.usertrials as u where u.userRole =:role and t.trialId =:id")
	List<Trial> findUserTrialByRole(@Param("id") String id,@Param("role") String role);
	
	
}
