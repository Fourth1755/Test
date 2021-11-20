package syngenta.der.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import syngenta.der.entities.Plot;
import syngenta.der.repository.PlotDAO;

@Service("plotService")
public class PlotService {
	@Autowired
	PlotDAO plotDAO ;
	
	public Plot findById(int id) {
		return plotDAO.findById(id).get();
	}
	
}
