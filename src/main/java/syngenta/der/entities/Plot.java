package syngenta.der.entities;
// Generated Oct 14, 2021, 2:35:26 PM by Hibernate Tools 5.5.3.Final

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Embeddable;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * Plot generated by hbm2java
 */
@Embeddable
public class Plot implements java.io.Serializable {

	private static final long serialVersionUID = -7415410969017941320L;
	private Integer plotId;
	@JsonIgnore
	private Trial trial;
	@JsonIgnore
	private Useraccount useraccountByApproveBy;
	@JsonIgnore
	private Useraccount useraccountByUploadBy;
	private String barcode;
	private String pltId;
	private int repNo;
	private String abbrc;
	private Integer entno;
	private String notet;
	private String plotImgPath;
	private String plotImgPathS;
	private String plotImgBoxPath;
	private String plotImgBoxPathS;
	private Date uploadDate;
	private Integer eartnA;
	private Integer dlernA;
	private Float dlerpA;
	private Float drwapA;
	private Integer eartnM;
	private Integer dlernM;
	private Float dlerpM;
	private Float drwapM;
	private Date approveDate;
	private String plotProgress;
	private String plotStatus;
	private String plotActive;
	private Date lastUpdate;
	
	private List<Ear> ears = new ArrayList(0);
	private List<Undetectear> undetectears = new ArrayList(0);
	//private Set ears = new HashSet(0);
	//private Set undetectears = new HashSet(0);

	public Plot() {
	}

	public Plot(Trial trial, Useraccount useraccountByApproveBy, String barcode, String pltId, int repNo,
			String plotProgress, String plotStatus, String plotActive, Date lastUpdate) {
		this.trial = trial;
		this.useraccountByApproveBy = useraccountByApproveBy;
		this.barcode = barcode;
		this.pltId = pltId;
		this.repNo = repNo;
		this.plotProgress = plotProgress;
		this.plotStatus = plotStatus;
		this.plotActive = plotActive;
		this.lastUpdate = lastUpdate;
	}

	public Plot(Trial trial, Useraccount useraccountByApproveBy, Useraccount useraccountByUploadBy, String barcode,
			String pltId, int repNo, String abbrc, Integer entno, String notet, String plotImgPath, String plotImgPathS,
			String plotImgBoxPath, String plotImgBoxPathS, Date uploadDate, Integer eartnA, Integer dlernA,
			Float dlerpA, Float drwapA, Integer eartnM, Integer dlernM, Float dlerpM, Float drwapM, Date approveDate,
			String plotProgress, String plotStatus, String plotActive, Date lastUpdate, List ears, List undetectears) {
		this.trial = trial;
		this.useraccountByApproveBy = useraccountByApproveBy;
		this.useraccountByUploadBy = useraccountByUploadBy;
		this.barcode = barcode;
		this.pltId = pltId;
		this.repNo = repNo;
		this.abbrc = abbrc;
		this.entno = entno;
		this.notet = notet;
		this.plotImgPath = plotImgPath;
		this.plotImgPathS = plotImgPathS;
		this.plotImgBoxPath = plotImgBoxPath;
		this.plotImgBoxPathS = plotImgBoxPathS;
		this.uploadDate = uploadDate;
		this.eartnA = eartnA;
		this.dlernA = dlernA;
		this.dlerpA = dlerpA;
		this.drwapA = drwapA;
		this.eartnM = eartnM;
		this.dlernM = dlernM;
		this.dlerpM = dlerpM;
		this.drwapM = drwapM;
		this.approveDate = approveDate;
		this.plotProgress = plotProgress;
		this.plotStatus = plotStatus;
		this.plotActive = plotActive;
		this.lastUpdate = lastUpdate;
		this.ears = ears;
		this.undetectears = undetectears;
	}

	public Integer getPlotId() {
		return this.plotId;
	}

	public void setPlotId(Integer plotId) {
		this.plotId = plotId;
	}

	public Trial getTrial() {
		return this.trial;
	}

	public void setTrial(Trial trial) {
		this.trial = trial;
	}

	public Useraccount getUseraccountByApproveBy() {
		return this.useraccountByApproveBy;
	}

	public void setUseraccountByApproveBy(Useraccount useraccountByApproveBy) {
		this.useraccountByApproveBy = useraccountByApproveBy;
	}

	public Useraccount getUseraccountByUploadBy() {
		return this.useraccountByUploadBy;
	}

	public void setUseraccountByUploadBy(Useraccount useraccountByUploadBy) {
		this.useraccountByUploadBy = useraccountByUploadBy;
	}

	public String getBarcode() {
		return this.barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getPltId() {
		return this.pltId;
	}

	public void setPltId(String pltId) {
		this.pltId = pltId;
	}

	public int getRepNo() {
		return this.repNo;
	}

	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}

	public String getAbbrc() {
		return this.abbrc;
	}

	public void setAbbrc(String abbrc) {
		this.abbrc = abbrc;
	}

	public Integer getEntno() {
		return this.entno;
	}

	public void setEntno(Integer entno) {
		this.entno = entno;
	}

	public String getNotet() {
		return this.notet;
	}

	public void setNotet(String notet) {
		this.notet = notet;
	}

	public String getPlotImgPath() {
		return this.plotImgPath;
	}

	public void setPlotImgPath(String plotImgPath) {
		this.plotImgPath = plotImgPath;
	}

	public String getPlotImgPathS() {
		return this.plotImgPathS;
	}

	public void setPlotImgPathS(String plotImgPathS) {
		this.plotImgPathS = plotImgPathS;
	}

	public String getPlotImgBoxPath() {
		return this.plotImgBoxPath;
	}

	public void setPlotImgBoxPath(String plotImgBoxPath) {
		this.plotImgBoxPath = plotImgBoxPath;
	}

	public String getPlotImgBoxPathS() {
		return this.plotImgBoxPathS;
	}

	public void setPlotImgBoxPathS(String plotImgBoxPathS) {
		this.plotImgBoxPathS = plotImgBoxPathS;
	}

	public Date getUploadDate() {
		return this.uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Integer getEartnA() {
		return this.eartnA;
	}

	public void setEartnA(Integer eartnA) {
		this.eartnA = eartnA;
	}

	public Integer getDlernA() {
		return this.dlernA;
	}

	public void setDlernA(Integer dlernA) {
		this.dlernA = dlernA;
	}

	public Float getDlerpA() {
		return this.dlerpA;
	}

	public void setDlerpA(Float dlerpA) {
		this.dlerpA = dlerpA;
	}

	public Float getDrwapA() {
		return this.drwapA;
	}

	public void setDrwapA(Float drwapA) {
		this.drwapA = drwapA;
	}

	public Integer getEartnM() {
		return this.eartnM;
	}

	public void setEartnM(Integer eartnM) {
		this.eartnM = eartnM;
	}

	public Integer getDlernM() {
		return this.dlernM;
	}

	public void setDlernM(Integer dlernM) {
		this.dlernM = dlernM;
	}

	public Float getDlerpM() {
		return this.dlerpM;
	}

	public void setDlerpM(Float dlerpM) {
		this.dlerpM = dlerpM;
	}

	public Float getDrwapM() {
		return this.drwapM;
	}

	public void setDrwapM(Float drwapM) {
		this.drwapM = drwapM;
	}

	public Date getApproveDate() {
		return this.approveDate;
	}

	public void setApproveDate(Date approveDate) {
		this.approveDate = approveDate;
	}

	public String getPlotProgress() {
		return this.plotProgress;
	}

	public void setPlotProgress(String plotProgress) {
		this.plotProgress = plotProgress;
	}

	public String getPlotStatus() {
		return this.plotStatus;
	}

	public void setPlotStatus(String plotStatus) {
		this.plotStatus = plotStatus;
	}

	public String getPlotActive() {
		return this.plotActive;
	}

	public void setPlotActive(String plotActive) {
		this.plotActive = plotActive;
	}

	public Date getLastUpdate() {
		return this.lastUpdate;
	}

	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	public List<Ear> getEars() {
		return this.ears;
	}

	public void setEars(List<Ear> ears) {
		this.ears = ears;
	}

	public List<Undetectear> getUndetectears() {
		return this.undetectears;
	}

	public void setUndetectears(List<Undetectear> undetectears) {
		this.undetectears = undetectears;
	}
	
	

}