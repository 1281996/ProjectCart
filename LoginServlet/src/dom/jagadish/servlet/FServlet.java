package dom.jagadish.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dom.jai.dao.UserDAO;

@WebServlet("/FServlet")
public class FServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String user = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String pwd1 = request.getParameter("pwd1");

		if (request.getParameter("pwd").equals(request.getParameter("pwd1"))) {
			pw.println("Password Matched ");
			try {
				Connection con = UserDAO.getcon();

				PreparedStatement ps = con
						.prepareStatement("select userid from UsersLis");

				ResultSet rs = ps.executeQuery();

				if (rs.next()) {

					if (user.equals(rs.getString("userid"))) {

						PreparedStatement ps1 = con
								.prepareStatement("UPDATE UsersLis set password = pwd where userid = user");

						ps1.executeQuery();

						RequestDispatcher rd1 = request
								.getRequestDispatcher("login.jsp");
						rd1.forward(request, response);
					} else {

						pw.println("Invalid");
						RequestDispatcher rd2 = request
								.getRequestDispatcher("ForgotPassword.jsp");
						rd2.include(request, response);
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			pw.println("password mismatch");
		}
	}

}
