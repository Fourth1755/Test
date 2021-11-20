package syngenta.der.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import syngenta.der.entities.Trial;
import syngenta.der.entities.Useraccount;
import syngenta.der.entities.Usertrial;
import syngenta.der.entities.UsertrialId;
import syngenta.der.repository.UserTrialDAO;

@Service("userTrailService")
public class UserTrailService {
	
	@Autowired
	UserTrialDAO userTrialDAO ;
	
	
	
	public Useraccount findUserAccountById(UsertrialId uid) {
		// TODO Auto-generated method stub
		return userTrialDAO.findById(uid).get().getUseraccount();
	}
	
	public List<Usertrial> findByUserID(int id) {
		
		return userTrialDAO.findByUserID(id);
	}
	
	public List<Usertrial> findByTrialID(String id) {
		
		return userTrialDAO.findByTrialID(id);
	}
	

}
