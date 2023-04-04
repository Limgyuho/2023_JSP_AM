package com.koreaIT.java.am;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
                                              
@WebServlet("/home/printDan")// url 맵핑 주소

public class HomePrintDanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//jsp에게 넘겨준다 요청한것들을 넘겨준다
		request.getRequestDispatcher("/jsp/home/printDan.jsp").forward(request, response);
		
	}

}
