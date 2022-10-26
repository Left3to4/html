package com.jsplec.address.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.address.command.ACommand;
import com.jsplec.address.command.ADeleteCommand;
import com.jsplec.address.command.ADetailCommand;
import com.jsplec.address.command.AListCommand;
import com.jsplec.address.command.AModifyCommand;
import com.jsplec.address.command.AWriteCommand;

/**
 * Servlet implementation class AFrontcontroller
 */
@WebServlet("*.do")
public class AFrontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AFrontcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request,response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String viewPage=null;
		ACommand command=null;
		
		String uri=request.getRequestURI();
		String conPath=request.getContextPath();
		String com=uri.substring(conPath.length()); //지정한 index부터 시작하는 문자열 부분집합
		
		switch(com) {
		case("/list.do"):
			command=new AListCommand();
			command.execute(request, response);
			viewPage="viewlist.jsp";
			break;
		case("/write_address.do"):
			command=new AListCommand();
			command.execute(request, response);
			viewPage="write_address.jsp";
			break;
		case("/write.do"):
			command=new AWriteCommand();
			command.execute(request, response);
			viewPage="list.do";
			break;
		case("/detail_view.do"):
			command=new ADetailCommand();
			command.execute(request, response);
			viewPage="detail_view.jsp";
			break;
		case("/modify.do"):
			command=new AModifyCommand();
			command.execute(request, response);
			viewPage="list.do";
			break;
		case("/delete.do"):
			command=new ADeleteCommand();
			command.execute(request, response);
			viewPage="list.do";
			break;
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
