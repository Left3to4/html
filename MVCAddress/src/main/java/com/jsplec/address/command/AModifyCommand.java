package com.jsplec.address.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.address.dao.ADao;

public class AModifyCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		String relationship=request.getParameter("relationship");
		
		ADao dao=new ADao();
		dao.modify(id, name, phone, address, email, relationship);
	}

}
