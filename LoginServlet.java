package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.LoginLogic;
import model.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String mail = request.getParameter("mail");
		String pass = request.getParameter("password");

		HttpSession session = request.getSession();

		UserBean userbean = new UserBean(mail, pass);
		LoginLogic loginlogic = new LoginLogic();

		boolean execute1 = loginlogic.execute1(userbean);

		//ログインエラー(mail or pass 未入力)
		if (mail.equals("") || pass.equals("")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/loginerror.jsp");
			dispatcher.forward(request, response);
		} else {
			//DBにmailとPWがあるか判定
			if (execute1 == true) {
				//sessionにmailとPWを保存
				session.setAttribute("loginUser", userbean);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/mainMenu.jsp");
				dispatcher.forward(request, response);
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/loginerror.jsp");
				dispatcher.forward(request, response);
			}

		}
	}

}
