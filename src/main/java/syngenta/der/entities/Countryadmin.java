package syngenta.der.entities;
// Generated Oct 14, 2021, 2:35:26 PM by Hibernate Tools 5.5.3.Final

import java.util.Date;

import javax.persistence.Embeddable;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Countryadmin generated by hbm2java
 */
@Embeddable
public class Countryadmin implements java.io.Serializable {

	private static final long serialVersionUID = -7415410969017941320L;
	private CountryadminId id;
	@JsonIgnore
	private Country country;
	@JsonIgnore
	private Useraccount useraccount;
	private Date createDate;

	public Countryadmin() {
	}

	public Countryadmin(CountryadminId id, Country country, Useraccount useraccount, Date createDate) {
		this.id = id;
		this.country = country;
		this.useraccount = useraccount;
		this.createDate = createDate;
	}

	public CountryadminId getId() {
		return this.id;
	}

	public void setId(CountryadminId id) {
		this.id = id;
	}

	public Country getCountry() {
		return this.country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public Useraccount getUseraccount() {
		return this.useraccount;
	}

	public void setUseraccount(Useraccount useraccount) {
		this.useraccount = useraccount;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}
