package com.jsplec.board.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.address.dao.RDao;
import com.jsplec.board.dto.RDto;

public class RListCommand implements Rcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		RDao dao=new RDao();
		ArrayList<RDto> dtos=dao.list();
		request.setAttribute("list", dtos);
	}

}
