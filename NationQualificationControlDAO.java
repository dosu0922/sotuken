package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.UserBean;

public class NationQualificationControlDAO extends DAOParam {
	public boolean findByMailPass(UserBean userbean) {
		//ログイン時のmailとPWの照合
		// データベースへ接続
			try (Connection conn = DriverManager.getConnection(
			JDBC_URL, DB_USER, DB_PASS)) {
				// SELECT文を準備
				String sql = "SELECT student_mail FROM user WHERE student_mail = ? AND password = ? ";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				//SELECT文中の「？」に使用する値を設定しSQLを完成
				pStmt.setString(1, userbean.getMail());
				pStmt.setString(2, userbean.getPassword());

				// SELECTを実行し、結果を取得
				ResultSet rs = pStmt.executeQuery();

				// 結果表に格納されたレコードの内容を
				if (rs.next()) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
			return false;
	}
	


}
