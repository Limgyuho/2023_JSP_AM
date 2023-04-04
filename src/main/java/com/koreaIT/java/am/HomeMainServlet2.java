package com.koreaIT.java.am;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
                                              
//서버를 받는 부분 Servlet의 내용은 달라야 하며 중복이 되서는 안된다
@WebServlet("/home/printDan2")
public class HomeMainServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("== 8단 ==").append(request.getContextPath());
				
		response.setContentType("text/html; charset=UTF-8");
		
		//요청해서 들오느는 모든 값들은 String 이다
		//주소창에 파라미너가 무조건 존재 해야하며 null처리를 해야한다
		String inputDan = request.getParameter("dan");
		String inputLimit = request.getParameter("limit");
		String inputColor = request.getParameter("color");
		
		
		if(inputDan == null) {
			inputDan ="1";
		}
		if(inputLimit == null) {
			inputLimit ="1";
		}
		if(inputColor == null) {
			inputColor ="transparent";
		}
		
		
		//문자형을 정수형으로 변환
		int dan = Integer.parseInt(inputDan);
		int limit = Integer.parseInt(inputLimit);
		
		response.getWriter().append(String.format("<div style ='color:%s;'>== %d단 ==</div>",inputColor, dan));
		
		for (int i = 1; i<=limit; i++) {
			response.getWriter().append(String.format("<div style ='color:%s;'>%d * %d =%d</div>",inputColor, dan,i,dan*i));
		}
	}

}
