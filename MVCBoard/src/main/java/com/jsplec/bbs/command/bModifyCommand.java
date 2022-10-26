package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

public class bModifyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bid=request.getParameter("bid"); //content_view.jsp에 있는 bid
		String bName=request.getParameter("bName"); //content_view.jsp에 있는 bName
		String bTitle=request.getParameter("bTitle"); //content_view.jsp에 있는 bTitle
		String bContent=request.getParameter("bContent"); //content_view.jsp에 있는 bContent
		
		BDao dao=new BDao();
		dao.modify(bid, bName, bTitle, bContent);
	}

}
