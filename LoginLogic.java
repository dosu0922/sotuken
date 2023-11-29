package model;

import dao.NationQualificationControlDAO;

public class LoginLogic {
	
	//ログイン時のmailとPW確認
	public boolean execute1(UserBean userbean) {
		NationQualificationControlDAO NQCdao = new NationQualificationControlDAO();
		return NQCdao.findByMailPass(userbean);
	}

}
