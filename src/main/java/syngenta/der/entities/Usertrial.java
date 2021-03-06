package syngenta.der.entities;
// Generated Oct 14, 2021, 2:35:26 PM by Hibernate Tools 5.5.3.Final

import javax.persistence.Embeddable;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Usertrial generated by hbm2java
 */
@Embeddable
public class Usertrial implements java.io.Serializable {

	private static final long serialVersionUID = -7415410969017941320L;
	private UsertrialId id;
	private Trial trial;
	@JsonIgnore
	private Useraccount useraccount;
	private String userRole;

	public Usertrial() {
	}

	public Usertrial(UsertrialId id, Trial trial, Useraccount useraccount, String userRole) {
		this.id = id;
		this.trial = trial;
		this.useraccount = useraccount;
		this.userRole = userRole;
	}

	public UsertrialId getId() {
		return this.id;
	}

	public void setId(UsertrialId id) {
		this.id = id;
	}

	public Trial getTrial() {
		return this.trial;
	}

	public void setTrial(Trial trial) {
		this.trial = trial;
	}

	public Useraccount getUseraccount() {
		return this.useraccount;
	}

	public void setUseraccount(Useraccount useraccount) {
		this.useraccount = useraccount;
	}

	public String getUserRole() {
		return this.userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

}
