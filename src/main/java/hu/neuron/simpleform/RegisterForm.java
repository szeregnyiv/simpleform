package hu.neuron.simpleform;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;


public class RegisterForm implements Serializable{

	private static final long serialVersionUID = 1L;

	private String name;

	private String password;
	

	public RegisterForm(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public void setName(String email) {
		this.name = email;
	}
	public String getName() {
		return name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
