package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Patient {
	
	private String name;
	private int age;
	private int id;
	private String patientAddress;
	private int patientTelephone;
	private String bloodType;
	private String email;
	private String password;
	private List<Allergies> allergies;
	
	
	
	public Patient() {
		super();
		this.allergies = new ArrayList<Allergies>();
	}
	public List<Allergies> getAllergies() {
		return allergies;
	}
	public void setAllergies(List<Allergies> list) {
		this.allergies = list;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPatientAddress() {
		return patientAddress;
	}
	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}
	public int getPatientTelephone() {
		return patientTelephone;
	}
	public void setPatientTelephone(int patientTelephone) {
		this.patientTelephone = patientTelephone;
	}

	public String getBloodType() {
		return bloodType;
	}
	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Patient [name=" + name + ", age=" + age + ", id=" + id + ", patientAddress=" + patientAddress
				+ ", patientTelephone=" + patientTelephone + ", bloodType=" + bloodType + ", email=" + email
				+ ", password=" + password + "]";
	}
	

}

