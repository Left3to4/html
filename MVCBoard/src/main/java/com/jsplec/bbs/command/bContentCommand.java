package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class bContentCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bid=request.getParameter("bid");
		BDao dao=new BDao();
		BDto dto=dao.contentView(bid);
		
		request.setAttribute("content_view", dto);
	}

}
