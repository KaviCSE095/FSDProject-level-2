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
@Table(name = "EMP_TABLE")
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "EMP_SEQUENCE")
	@SequenceGenerator(name = "EMP_SEQUENCE", sequenceName = "EMP_SEQUENCE",allocationSize=1)
	@Column(name = "EMP_ID")
	private long empId;
	
	@Column(name = "EMP_NAME")
	private String empName;
	
	@Column(name = "EMP_USERNAME")
	private String empUserName;
	
	@Column(name = "EMP_PASSWORD")
	private String empPassword;
	
	@Column(name = "EMP_ADDRESS")
	private String empAddress;
	
	

	
	public long getEmpId() {
		return empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpUserName() {
		return empUserName;
	}

	public void setEmpUserName(String empUserName) {
		this.empUserName = empUserName;
	}

	public String getEmpPassword() {
		return empPassword;
	}

	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}

	public String getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}

	public String getEmpPh() {
		return empPh;
	}

	public void setEmpPh(String empPh) {
		this.empPh = empPh;
	}

	public String getEmpDob() {
		return empDob;
	}

	public void setEmpDob(String empDob) {
		this.empDob = empDob;
	}

	@Column(name = "EMP_PH")
	private String empPh;

	@Column(name = "EMP_DOB")
	private String empDob;


}
