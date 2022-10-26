package com.jsplec.board.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.board.command.RDeleteCommand;
import com.jsplec.board.command.RListCommand;
import com.jsplec.board.command.RWriteCommand;
import com.jsplec.board.command.Rcommand;

/**
 * Servlet implementation class RFrontcontroller
 */
@WebServlet("*.do")
public class RFrontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RFrontcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String viewPage=null;
		Rcommand command=null;
		
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String com=uri.substring(conPath.length()); //지정한 index부터 시작하는 문자열 부분집합
		
		switch(com) {
		case("/list.do"):
			command=new RListCommand();
			command.execute(request, response);
			viewPage="listview.jsp";
			break;
		case("/write_view.do"):
			command=new RListCommand();
			command.execute(request, response);
			viewPage="write_view.jsp";
			break;
		case("/write.do"):
			command=new RWriteCommand();
			command.execute(request, response);
			viewPage="list.do";
			break;
		case("/delete.do"):
			command=new RDeleteCommand();
			command.execute(request, response);
			viewPage="list.do";
			break;
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
