package model;

import java.io.Serializable;

public class UserBean implements Serializable {
		private String mail;
		private String password;


		public UserBean() {}
		public UserBean(String mail, String password) {
			this.mail = mail;
			this.password = password;
		}
		public String getMail() { return mail; }
		public String getPassword() { return password; }
}
