package syngenta.der.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import syngenta.der.entities.Country;
import syngenta.der.entities.Plot;
import syngenta.der.entities.Useraccount;

@Repository
public interface PlotDAO extends CrudRepository<Plot, Integer>, JpaRepository<Plot, Integer>  {

	
	
}
