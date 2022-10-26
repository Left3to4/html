package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

public class bWriteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bName=request.getParameter("bName"); //write_view.jsp에 있는 bName
		String bTitle=request.getParameter("bTitle"); //write_view.jsp에 있는 bTitle
		String bContent=request.getParameter("bContent"); //write_view.jsp에 있는 bContent
		
		BDao dao=new BDao();
		int result=dao.write(bName, bTitle, bContent);
		
	}

}
