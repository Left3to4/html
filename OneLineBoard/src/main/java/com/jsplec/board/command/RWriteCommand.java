package com.jsplec.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.address.dao.RDao;

public class RWriteCommand implements Rcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String title=request.getParameter("title");
		
		RDao dao=new RDao();
		dao.write(name, title);
	}

}
