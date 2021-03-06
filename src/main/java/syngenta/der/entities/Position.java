package syngenta.der.entities;
// Generated Oct 14, 2021, 2:35:26 PM by Hibernate Tools 5.5.3.Final

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Embeddable;

/**
 * Position generated by hbm2java
 */
@Embeddable
public class Position implements java.io.Serializable {

	private static final long serialVersionUID = -7415410969017941320L;
	private Integer positionId;
	private String positionName;
	private boolean createTrial;
	
	//private List useraccounts = new ArrayList(0);

	
	private List useraccounts = new ArrayList(0);

	public Position() {
	}

	public Position(String positionName, boolean createTrial) {
		this.positionName = positionName;
		this.createTrial = createTrial;
	}

	public Position(String positionName, boolean createTrial, List useraccounts) {
		this.positionName = positionName;
		this.createTrial = createTrial;
		this.useraccounts = useraccounts;
	}

	public Integer getPositionId() {
		return this.positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public String getPositionName() {
		return this.positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public boolean getCreateTrial() {
		return this.createTrial;
	}

	public void setCreateTrial(boolean createTrial) {
		this.createTrial = createTrial;
	}

	public List<Useraccount> getUseraccounts() {
		return this.useraccounts;
	}

	public void setUseraccounts(List<Useraccount> useraccounts) {
		this.useraccounts = useraccounts;
	}

}
