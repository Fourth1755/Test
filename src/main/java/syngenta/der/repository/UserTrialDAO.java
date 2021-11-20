package syngenta.der.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import syngenta.der.entities.Usertrial;
import syngenta.der.entities.UsertrialId;

@Repository
public interface UserTrialDAO extends CrudRepository<Usertrial, UsertrialId> , JpaRepository<Usertrial, UsertrialId> {

	
	//List<Usertrial> findByTrialID(String trialId);
	@Query("from Usertrial as u where u.id.userId =:id")
	List<Usertrial> findByUserID(@Param("id")int id);

	@Query("from Usertrial as u where u.id.trialId =:id")
	List<Usertrial> findByTrialID(@Param("id")String id);
	
}
