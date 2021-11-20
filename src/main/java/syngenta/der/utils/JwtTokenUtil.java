package syngenta.der.utils;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

public class JwtTokenUtil {

	@Value("${jwt.secret}")
	private String secret;
	
	@Value("${app.jwtExpirationInMs}")
    private int jwtExpirationInMs;

	public String generateToken(Authentication authentication) {
		Principal principle  =  (Principal) authentication.getPrincipal();
		Date now = new Date();
		Date expiryDate = new Date(now.getTime() + jwtExpirationInMs);

		return Jwts.builder().setSubject(principle.getName()).setIssuedAt(new Date()).setExpiration(expiryDate)
				.signWith(SignatureAlgorithm.HS512, secret).compact();
	}

}
