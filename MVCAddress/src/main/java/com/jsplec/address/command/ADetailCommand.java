package com.jsplec.address.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.address.dao.ADao;
import com.jsplec.address.dto.ADto;

public class ADetailCommand implements ACommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		ADao dao=new ADao();
		ADto dto=dao.detailView(id);
		
		request.setAttribute("detail_view", dto);
	}

}
