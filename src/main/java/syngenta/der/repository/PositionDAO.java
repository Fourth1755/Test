package syngenta.der.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import syngenta.der.entities.Position;
import syngenta.der.entities.Useraccount;

@Repository
public interface PositionDAO extends CrudRepository<Position, Integer>, JpaRepository<Position, Integer> {

}
