package syngenta.der.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import syngenta.der.entities.Country;
import syngenta.der.entities.Useraccount;
import syngenta.der.repository.CountryDAO;
import syngenta.der.repository.UserAccountDAO;

@Service("countryService")
//@Transactional
public class CountryService {

	@Autowired
	private CountryDAO countryDAO;
	
	public Country findById(int id) {
		return countryDAO.findById(id).get();
	}
	
	public List<Country> getAllCountry() {
		List<Country> country= new ArrayList<>();
		countryDAO.findAll().forEach(country::add);
		return country;
	}
	public Country saveOrUpdate(Country country) {
		return countryDAO.save(country);
	}
	public void delete(int id) {
		countryDAO.deleteById(id);
	}
	
}
