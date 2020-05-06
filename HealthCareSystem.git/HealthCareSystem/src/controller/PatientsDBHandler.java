package controller;

import java.util.ArrayList;
import java.sql.*;
import java.util.List;

import model.Allergies;
import model.Patient;

public class PatientsDBHandler {

	Connection con = null;

	public PatientsDBHandler() {

		String url = "jdbc:mysql://localhost:3308/paf";
		String username = "root";
		String password = "admin";

		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			System.out.println(e);
		}

	}

//get all patients 
	public List<Patient> getPatients() {

		List<Patient> patients = new ArrayList<>();
		String sql = "Select * from patients";

		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				Patient p = new Patient();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setAge(rs.getInt(3));
				p.setBloodType(rs.getString(6));
				p.setPatientAddress(rs.getString(4));
				p.setEmail(rs.getString(7));
				// p.setPassword(rs.getString(8));

				p.setPatientTelephone(rs.getInt(5));

				patients.add(p);
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return patients;
	}

//get patient details by ID
	public Patient getPatient(int id) {

		String sql = "Select * from patients where patientID=" + id;
		Patient p = new Patient();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			if (rs.next()) {

				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setAge(rs.getInt(3));
				p.setBloodType(rs.getString(6));
				p.setPatientAddress(rs.getString(4));
				p.setEmail(rs.getString(7));
				p.setPassword(rs.getString(8));

				p.setPatientTelephone(rs.getInt(5));

			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return p;
	}

	// create patient
	public int createPatient(Patient p1) {
		// TODO Auto-generated method stub
		String sql = "insert into patients ( patientName,patientAge,patientAddress,patientTelephone,bloodType,email,password) values (?, ?, ?, ?, ?, ?, ?);";
		int id = 0;
		try {

			PreparedStatement st = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			st.setString(1, p1.getName());
			st.setInt(2, p1.getAge());
			st.setInt(4, p1.getPatientTelephone());
			st.setString(5, p1.getBloodType());
			st.setString(3, p1.getPatientAddress());
			st.setString(6, p1.getEmail());
			st.setString(7, p1.getPassword());

			st.executeUpdate();
			ResultSet rs = st.getGeneratedKeys();
			rs.next();
			id = rs.getInt(1);

		} catch (Exception e) {
			System.out.println(e);
		}
		return id;

	}

//update patient 
	public void updatePatient(Patient p1) {
		// TODO Auto-generated method stub
		String sql = "update patients set patientName=? , patientAge=?, patientAddress=? , patientTelephone=? , bloodType=? , email=? , password=? where patientID=? ";

		try {

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, p1.getName());
			st.setInt(2, p1.getAge());
			st.setInt(8, p1.getId());
			st.setInt(4, p1.getPatientTelephone());
			st.setString(5, p1.getBloodType());
			st.setString(3, p1.getPatientAddress());
			st.setString(6, p1.getEmail());
			st.setString(7, p1.getPassword());

			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}

//delete patient
	public void deletePatient(int id) {
		// TODO Auto-generated method stub

		String sql = "delete from patients where patientID=?";

		try {

			PreparedStatement st = con.prepareStatement(sql);

			st.setInt(1, id);

			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}

	//get the list of allergies
	public List<Allergies> getAllergies() {

		List<Allergies> allergies = new ArrayList<>();
		String sql = "Select * from allergies";

		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				Allergies a = new Allergies();

				a.setAllergyID(rs.getInt(1));
				a.setPatientID(rs.getInt(2));
				a.setAllergyname(rs.getString(3));
				allergies.add(a);

			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return allergies;
	}
	
//get the allergies by patient ID
	public List<Allergies> getAllergybyPatientID(int id) {

		String sql = "Select *  from allergies a where a.patientID=" + id;
		List<Allergies> allergy = new ArrayList<>();

		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {
				Allergies a = new Allergies();
				System.out.println(rs.getInt("idallergyID"));
				a.setAllergyID(rs.getInt("idallergyID"));
				a.setPatientID(rs.getInt("patientID"));
				a.setAllergyname(rs.getString("allergyName"));
				allergy.add(a);

			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return allergy;
	}

	// Get allergy by ID
	public Allergies getAllergybyID(int id) {

		String sql = "Select * from allergies where idallergyID=" + id;
		Allergies a = new Allergies();
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			if (rs.next()) {

				a.setAllergyID(rs.getInt(1));
				a.setPatientID(rs.getInt(2));
				a.setAllergyname(rs.getString(3));

			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return a;
	}

	//add allergies
	public void addAllergies(Allergies a1) {
		// TODO Auto-generated method stub
		String sql = "insert into allergies ( PatientID,allergyName) values (?, ?);";

		try {

			PreparedStatement st = con.prepareStatement(sql);

			st.setInt(1, a1.getPatientID());
			st.setString(2, a1.getAllergyname());

			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}
//update allergies
	public void updateAllergy(Allergies a1) {
		// TODO Auto-generated method stub
		String sql = "update allergies set PatientID=? , allergyName=? where idallergyID=? ";

		try {

			PreparedStatement st = con.prepareStatement(sql);

			st.setInt(3, a1.getAllergyID());
			st.setInt(1, a1.getPatientID());
			st.setString(2, a1.getAllergyname());

			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}
//delete allergies
	public void deleteAllergy(int id) {
		// TODO Auto-generated method stub

		String sql = "delete from allergies where idallergyID=?";

		try {

			PreparedStatement st = con.prepareStatement(sql);

			st.setInt(1, id);

			st.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
