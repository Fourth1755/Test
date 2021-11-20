package syngenta.der.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import syngenta.der.entities.Country;
import syngenta.der.entities.Position;
import syngenta.der.repository.CountryDAO;
import syngenta.der.repository.PositionDAO;

@Service("positionService")
public class PositionService {
	
	@Autowired
	private PositionDAO positionDAO;
	
	public Position findById(int id) {
		return positionDAO.findById(id).get();
	}
	
	
	public List<Position> getAllPosition() {
		List<Position> position = new ArrayList<>();
		positionDAO.findAll().forEach(position::add);
		return position;
	}

}
