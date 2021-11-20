package syngenta.der.entities;
// Generated Oct 14, 2021, 2:35:26 PM by Hibernate Tools 5.5.3.Final

import javax.persistence.Embeddable;

/**
 * CountryadminId generated by hbm2java
 */
@Embeddable
public class CountryadminId implements java.io.Serializable {

	private static final long serialVersionUID = -7415410969017941320L;
	private int countryId;
	private int userId;

	public CountryadminId() {
	}

	public CountryadminId(int countryId, int userId) {
		this.countryId = countryId;
		this.userId = userId;
	}

	public int getCountryId() {
		return this.countryId;
	}

	public void setCountryId(int countryId) {
		this.countryId = countryId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CountryadminId))
			return false;
		CountryadminId castOther = (CountryadminId) other;

		return (this.getCountryId() == castOther.getCountryId()) && (this.getUserId() == castOther.getUserId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getCountryId();
		result = 37 * result + this.getUserId();
		return result;
	}

}