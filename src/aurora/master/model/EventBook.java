package aurora.master.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "EVENT_DETAILS")
public class EventBook{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "EVENT_ID_SEQ")
	@SequenceGenerator(name = "EVENT_ID_SEQ", sequenceName = "EVENT_ID_SEQ",allocationSize=1)
	@Column(name = "EVENT_ID")
	private long evtId;
	
	@Column(name = "CATEGORY")
	private String event_cat;
	
	@Column(name = "EVENT_TITLE")
	private String event_Tit;
	
	@Column(name = "EVENT_LOCATION")
	private String event_loc;
	
	@Column(name = "EVENT_DATE",  updatable=false)
	private String event_date;

	@Column(name = "NO_OF_DAYS")
	private int no_of_days;

	@Column(name = "EXP_NO_OF_QUESTS")
	private int exp_no_guests;

	@Column(name = "FOOD_PREPARATION_CNT",updatable=false)
	private int food_cnt;
	
	@Column(name = "CATERING_SERVICES")
	private char cat_ser;
	
	@Column(name = "ADDITIONAL_INFO",updatable=false)
	private String abt;
	
	@Column(name = "CUS_FNAME")
	private String cus_fname;
	
	@Column(name = "CUS_LNAME")
	private String cus_lname;
	
	@Column(name = "CUS_EMAIL")
	private String cus_mail;
	
	@Column(name = "CUS_PHONE")
	private String contactNo;
	
	@Column(name = "STATUS")
	private String event_status;
	
	@Column(name = "CATERING")
	private String catering;

	public long getEvtId() {
		return evtId;
	}

	public void setEvtId(long evtId) {
		this.evtId = evtId;
	}

	public String getEvent_cat() {
		return event_cat;
	}

	public void setEvent_cat(String event_cat) {
		this.event_cat = event_cat;
	}

	public String getEvent_Tit() {
		return event_Tit;
	}

	public void setEvent_Tit(String event_Tit) {
		this.event_Tit = event_Tit;
	}

	public String getEvent_loc() {
		return event_loc;
	}

	public void setEvent_loc(String event_loc) {
		this.event_loc = event_loc;
	}

	public String getEvent_date() {
		return event_date;
	}

	public void setEvent_date(String date) {
		this.event_date = date;
	}

	public int getNo_of_days() {
		return no_of_days;
	}

	public void setNo_of_days(int no_of_days) {
		this.no_of_days = no_of_days;
	}

	public int getExp_no_guests() {
		return exp_no_guests;
	}

	public void setExp_no_guests(int exp_no_guests) {
		this.exp_no_guests = exp_no_guests;
	}

	public int getFood_cnt() {
		return food_cnt;
	}

	public void setFood_cnt(int food_cnt) {
		this.food_cnt = food_cnt;
	}

	public char getCat_ser() {
		return cat_ser;
	}

	public void setCat_ser(char cat_ser) {
		this.cat_ser = cat_ser;
	}

	public String getAbt() {
		return abt;
	}

	public void setAbt(String abt) {
		this.abt = abt;
	}

	public String getCus_fname() {
		return cus_fname;
	}

	public void setCus_fname(String cus_fname) {
		this.cus_fname = cus_fname;
	}

	public String getCus_lname() {
		return cus_lname;
	}

	public void setCus_lname(String cus_lname) {
		this.cus_lname = cus_lname;
	}

	public String getCus_mail() {
		return cus_mail;
	}

	public void setCus_mail(String cus_mail) {
		this.cus_mail = cus_mail;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEvent_status() {
		return event_status;
	}

	public void setEvent_status(String event_status) {
		this.event_status = event_status;
	}

	public String getCatering() {
		return catering;
	}

	public void setCatering(String catering) {
		this.catering = catering;
	}
}
