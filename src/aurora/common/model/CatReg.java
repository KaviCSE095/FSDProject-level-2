package aurora.common.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "CATERING_TEAM")
public class CatReg {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "CAT_TEAM_ID_SEQ")
	@SequenceGenerator(name = "CAT_TEAM_ID_SEQ", sequenceName = "CAT_TEAM_ID_SEQ",allocationSize=1)
	@Column(name = "CATERING_TEAM_ID")
	private long catTeamId;
	
	@Column(name = "CATERING_NAME")
	private String cat_name;
	
	@Column(name = "EMAIL")
	private String cat_email;
	
	@Column(name = "PHONE")
	private String cat_phNo;
	
	@Column(name = "TEAM_SIZE")
	private int team_size;

	@Column(name = "EXPERIENCE")
	private int team_exp;

	@Column(name = "BAR_ARRANGEMENT")
	private char bar_arrg;

	@Column(name = "SERVICE_STYLE")
	private String ser_style;
	
	@Column(name = "FOOD_SPECIALIZATION",updatable=false)
	private String food_spec;
	
	@Column(name = "CATEGORY")
	private String team_cat;
	
	@Column(name = "PASSWORD")
	private String team_pwd;
	
	@Column(name = "ABOUT_CATERING",updatable=false)
	private String abt_cat;

	public long getCatTeamId() {
		return catTeamId;
	}

	public void setCatTeamId(long catTeamId) {
		this.catTeamId = catTeamId;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	public String getCat_email() {
		return cat_email;
	}

	public void setCat_email(String cat_email) {
		this.cat_email = cat_email;
	}

	public String getCat_phNo() {
		return cat_phNo;
	}

	public void setCat_phNo(String cat_phNo) {
		this.cat_phNo = cat_phNo;
	}

	public int getTeam_size() {
		return team_size;
	}

	public void setTeam_size(int team_size) {
		this.team_size = team_size;
	}

	public int getTeam_exp() {
		return team_exp;
	}

	public void setTeam_exp(int team_exp) {
		this.team_exp = team_exp;
	}

	public char getBar_arrg() {
		return bar_arrg;
	}

	public void setBar_arrg(char bar_arrg) {
		this.bar_arrg = bar_arrg;
	}

	public String getSer_style() {
		return ser_style;
	}

	public void setSer_style(String ser_style) {
		this.ser_style = ser_style;
	}

	public String getFood_spec() {
		return food_spec;
	}

	public void setFood_spec(String food_spec) {
		this.food_spec = food_spec;
	}

	public String getTeam_cat() {
		return team_cat;
	}

	public void setTeam_cat(String team_cat) {
		this.team_cat = team_cat;
	}

	public String getTeam_pwd() {
		return team_pwd;
	}

	public void setTeam_pwd(String team_pwd) {
		this.team_pwd = team_pwd;
	}

	public String getAbt_cat() {
		return abt_cat;
	}

	public void setAbt_cat(String abt_cat) {
		this.abt_cat = abt_cat;
	}
	
}
