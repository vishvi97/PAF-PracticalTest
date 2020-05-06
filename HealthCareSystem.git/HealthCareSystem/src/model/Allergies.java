package model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Allergies {

	private int allergyID;
	private int patientID;
	
	private String allergyname;
	
	public int getAllergyID() {
		return allergyID;
	}
	public void setAllergyID(int allergyID) {
		this.allergyID = allergyID;
	}
	public int getPatientID() {
		return patientID;
	}
	public void setPatientID(int patientID) {
		this.patientID = patientID;
	}
	public String getAllergyname() {
		return allergyname;
	}
	public void setAllergyname(String allergyname) {
		this.allergyname = allergyname;
	}
	
	
	@Override
	public String toString() {
		return "Allergies [allergyID=" + allergyID + ", patientID=" + patientID + ", allergyname=" + allergyname + "]";
	}
	
	
}
