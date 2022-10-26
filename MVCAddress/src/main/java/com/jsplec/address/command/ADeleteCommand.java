package com.jsplec.address.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.address.dao.ADao;

public class ADeleteCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		
		ADao dao=new ADao();
		dao.delete(id);
	}

}
