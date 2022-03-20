package com.sevelts;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.Check;
import com.util.checkdbutil;

/**
 * Servlet implementation class CheckSevelt
 */
@WebServlet("/CheckSevelt")
public class CheckSevelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String soursecity = request.getParameter("soursecity");
		
		boolean isTrue;
		
		isTrue = checkdbutil.validate(soursecity);
		
		if (isTrue == true) {
			
			List<Check> checkDetails = checkdbutil.getCheck(soursecity);
			request.setAttribute("checkDetails", checkDetails);
			RequestDispatcher dis = request.getRequestDispatcher("vewBooking.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Not avalible vechical');");
			out.println("location='Booking.jsp'");
			out.println("</script>");
		}
		
	}


}
