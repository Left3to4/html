package com.jsplec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.BCommand;
import com.jsplec.bbs.command.BListCommand;
import com.jsplec.bbs.command.bContentCommand;
import com.jsplec.bbs.command.bDeleteCommand;
import com.jsplec.bbs.command.bModifyCommand;
import com.jsplec.bbs.command.bWriteCommand;

/**
 * Servlet implementation class BFrontcontroller
 */
@WebServlet("*.do")
public class BFrontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BFrontcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { //control tower
			request.setCharacterEncoding("utf-8");
			
			String viewPage=null;
			BCommand command=null;
			
			String uri=request.getRequestURI();
			String conPath=request.getContextPath();
			String com=uri.substring(conPath.length()); //지정한 index부터 시작하는 문자열 부분집합
			
			switch(com) {
			case("/list.do"):
				command=new BListCommand();
				command.execute(request, response);
				viewPage="list.jsp";
				break;
			
			case("/write_view.do"):
				command=new BListCommand();
				command.execute(request, response);
				viewPage="write_view.jsp";
				break;
			
			case("/write.do"):
				command=new bWriteCommand();
				command.execute(request, response);
				viewPage="list.do";
				break;
				
			case("/content_view.do"):
				command=new bContentCommand();
				command.execute(request, response);
				viewPage="content_view.jsp";
				break;
				
			case("/modify.do"):
				command=new bModifyCommand();
				command.execute(request, response);
				viewPage="list.do";
				break;
				
			case("/delete.do"):
				command=new bDeleteCommand();
				command.execute(request, response);
				viewPage="list.do";
				break;
			}
			
			RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
	}
}

