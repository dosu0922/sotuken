package servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ConfirmServlet
 */
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConfirmServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String text = request.getParameter("text");
		String field = request.getParameter("field");

		if (text.isEmpty()) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/");
			dispatcher.forward(request, response);

		} else {
			System.out.println("tes");
			// カンマで区切ってリストに変換
			List<String> inputList = Arrays.asList(text.split("[，,]"));
			List<String> afterInputList = new ArrayList<String>();
			for (String input : inputList) {
				input = input.replaceAll(" ", "");
				afterInputList.add(input);
				System.out.println("input:" + input);
			}

			HttpSession session = request.getSession();

			session.setAttribute("afterInputList", afterInputList);
			session.setAttribute("field", field);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		FileWriter file = new FileWriter(
				"C:\\Users\\216077\\Documents\\pleiades\\2023-09\\workspace\\Word\\src\\main\\webapp/tango.txt", true);
		PrintWriter pw = new PrintWriter(new BufferedWriter(file));

		String[] texts = request.getParameterValues("text");
		String field = (String) session.getAttribute("field");

		for (String text : texts) {
			text = "INSERT INTO word (word_name, field, exam_times) VALUES('" + text + "','" + field + "', 0);";
			pw.println(text);
		}

		pw.close();

		RequestDispatcher dispatcher = request.getRequestDispatcher("/");
		dispatcher.forward(request, response);

	}
}
