package syngenta.der.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import syngenta.der.entities.Position;
import syngenta.der.entities.Useraccount;
import syngenta.der.repository.UserAccountDAO;

@Service("userService")
//@Transactional
public class UserAccountService implements UserDetailsService {
	
	String ROLE_PREFIX = "ROLE_";

	@PersistenceContext
	private EntityManager entityManger;

	@Autowired
	private UserAccountDAO userAccountDAO;

	@Autowired
	private BCryptPasswordEncoder bcryptEncoder;

	public List<Useraccount> getAllUsers() {
		List<Useraccount> user = new ArrayList<>();
		userAccountDAO.findAll().forEach(user::add);
		return user;
	}

	public Useraccount findById(int id) {
	
		return userAccountDAO.findById(id).get();
	}

	public void updateUser(Useraccount user) {

		entityManger.persist(user);
	}

	public void addUser(Useraccount user) {

		userAccountDAO.save(user);
	}

	public Useraccount findByUserName(String userName) {

		List<Useraccount> userList = userAccountDAO.findByUserName(userName);

		if (userList.size() == 0) {
			throw new UsernameNotFoundException("Invalid username or password.");
		}

		return userAccountDAO.findByUserName(userName).get(0);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Useraccount user = findByUserName(username);

		return new org.springframework.security.core.userdetails.User(user.getUserName(),
				new BCryptPasswordEncoder().encode(user.getPassword()), getAuthority(user));

	}

	private Set<SimpleGrantedAuthority> getAuthority(Useraccount user) {
		Set<SimpleGrantedAuthority> authorities = new HashSet<>();
		
		// user.getAdminRole()//.forEach(role -> {
		authorities.add(new SimpleGrantedAuthority(ROLE_PREFIX+user.getAdminRole()));
		authorities.add(new SimpleGrantedAuthority(ROLE_PREFIX+user.getPosition().getPositionName()));
		
		// });
		return authorities;
	}
	
	
	public List<Useraccount> getAllUserByStatus(String status)
	{
		List<Useraccount> userList = userAccountDAO.findByStatus(status);
		return userList;
	}
	
	
	public void deleteById(int id) {

		userAccountDAO.deleteById(id);

	}
	
	public void delete(Useraccount user) {

		userAccountDAO.delete(user);

	}
	

	public void saveOrUpdate(Useraccount useraccount) {

		userAccountDAO.save(useraccount);

	}

}
