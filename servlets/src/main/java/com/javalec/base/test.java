package com.javalec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String color=request.getParameter("color");
		String animal=request.getParameter("animal");
		String[] food=request.getParameterValues("food");
		String strfood=food[0];
		String filename="testresult.txt";
		String writeresult="";
		
		PrintWriter writer=null;
		
		
		try {
			String filePath = request.getSession().getServletContext().getRealPath(filename);
			writer=new PrintWriter(filePath);
			writer.println(name + "님의 성격 테스트 결과");
			writer.println(color + "을 좋아하는 당신은 " + animal + " 그리고 " + strfood + "을 좋아하는 성격입니다");
			writeresult="저장되었습니다";
		} catch(IOException io) {
			writeresult="저장에 실패했습니다";
		} finally {
			try {
				writer.close();
			} catch (Exception e) {

			}
		}
		
		for (int i=1;i<food.length;i++) {
			strfood+="과 " + food[i];
		}
		
		request.setAttribute("name", name);
		request.setAttribute("color", color);
		request.setAttribute("animal", animal);
		request.setAttribute("food", strfood);
		request.setAttribute("writeresult", writeresult);
		
		RequestDispatcher rd=request.getRequestDispatcher("testresult.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
