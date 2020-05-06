package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.Provider;

import java.util.Base64;
import java.util.List;
import java.util.StringTokenizer;

@Provider
public class PatientSecurityFilter implements javax.ws.rs.container.ContainerRequestFilter {

	private static final String AUTHORIZATION_HEADER = "Authorization";
	private static final String AUTHORIZATION_PREFIX = "Basic ";
	private static final String URL_PREFIX_PATIENT = "patients/secured";

	
	
	private Connection connect() {
		Connection con = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//change DB connection details as needed port number, username and password 
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3308/paf", "root", "admin");
		} catch (Exception e) {
			// e.printStackTrace();
		}

		return con;
	}

	@Override
	public void filter(ContainerRequestContext requestcontext) throws IOException {

	if (requestcontext.getUriInfo().getPath().contains(URL_PREFIX_PATIENT)) {
			List<String> authHeader = requestcontext.getHeaders().get(AUTHORIZATION_HEADER);

			if (authHeader != null && authHeader.size() > 0) {
				String authToken = authHeader.get(0);
				authToken = authToken.replaceFirst(AUTHORIZATION_PREFIX, "");

				String decodeString = new String(Base64.getDecoder().decode(authToken));

				StringTokenizer tokenizer = new StringTokenizer(decodeString, ":");

				String email = tokenizer.nextToken();
				String password = tokenizer.nextToken();

				System.out.println(email);
				System.out.println(password);
				
				// find whether user in the DB
				Connection con = connect();

				try {
					String query = "select p.email , p.password from patients p where p.email = '" + email + "'";
					Statement statement = con.createStatement();
					ResultSet resultSet = statement.executeQuery(query);
					
				//	System.out.println("Header password "+password);
					while (resultSet.next()) {

						String Email = resultSet.getString(1);
						String Password = resultSet.getString(2);
						System.out.println("DB password "+Password);
						//email is used as the username  
						if (password.equalsIgnoreCase(Password) && email.equalsIgnoreCase(Email)) {
							return;
						}
					}
					con.close();

				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}
			
			// if authentication fails
						Response unauthorizedStatus = Response.status(Response.Status.UNAUTHORIZED)
								.entity("User cannot access the responce.").build();

						requestcontext.abortWith(unauthorizedStatus);
		}

			
		
	}
}

