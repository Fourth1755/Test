package syngenta.der.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import syngenta.der.entities.Trial;
import syngenta.der.repository.TrialDAO;

@Service("trialService")
public class TrialService {

	@Autowired
	private TrialDAO trialDAO;

	public List<Trial> getAllTrials() {
		List<Trial> trial = new ArrayList<>();
		trialDAO.findAll().forEach(trial::add);
		return trialDAO.findAll();
	}

	public List<Trial> findTrailsByUserId(int id) {

		List<Trial> trial = new ArrayList<>();

		return trialDAO.findTrialByUserId(id);
	}

	public Trial findById(String id) {

		return trialDAO.findTrialByStrID(id).get(0);

	}

	public List<Trial> findTrailsByUserName(String name) {

		List<Trial> trial = new ArrayList<>();

		return trialDAO.findTrailsByUserName(name);
	}

	public List<?> findUserTrialByRole(String id, String role) {
		return trialDAO.findUserTrialByRole(id, role);
	}

	public void save(Trial trial) {
		trialDAO.save(trial);
	}
}
