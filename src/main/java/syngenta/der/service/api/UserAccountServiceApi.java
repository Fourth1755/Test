package syngenta.der.service.api;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Role;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.hibernate5.Hibernate5Module;

import syngenta.der.entities.Useraccount;
import syngenta.der.service.UserAccountService;
import syngenta.der.utils.AuthToken;
import syngenta.der.utils.LoginUser;
import syngenta.der.utils.Response;
import syngenta.der.utils.TokenProvider;

@RestController
@RequestMapping("/api")
public class UserAccountServiceApi {

	// @Autowired
	// @Resource(name = "userService")
	// private UserAccountService userAccountService;

	@Autowired
	private AuthenticationManager authenticationManager;

	@Autowired
	private TokenProvider jwtTokenUtil;

	@Autowired
	private UserAccountService userAccountService;

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public ResponseEntity<?> generateToken(@RequestBody LoginUser loginUser) throws AuthenticationException {

		System.out.println(loginUser.getUsername() + " " + loginUser.getPassword());
		final Authentication authentication = authenticationManager.authenticate(
				new UsernamePasswordAuthenticationToken(loginUser.getUsername(), loginUser.getPassword()));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		final String token = jwtTokenUtil.generateToken(authentication);
		return ResponseEntity.ok(new AuthToken(token));
	}

	@RequestMapping(value = "/findAll", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Response<List>> findAll() throws JsonProcessingException {

		
		Response<List> s = new Response();
		
		s.setData(userAccountService.getAllUsers());
	
		s.setStatus(HttpStatus.OK.value());
	
		return new ResponseEntity<Response<List>>(s, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.PUT)
	public ResponseEntity<Void> updateUser(@RequestBody Useraccount user, @PathVariable int id){

		Useraccount us = userAccountService.findById(id);
		
		
		System.out.println(us);
		
		return new ResponseEntity(HttpStatus.OK);
	}

}
