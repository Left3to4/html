package com.jsplec.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Rcommand {
	public void execute(HttpServletRequest request, HttpServletResponse response);
}
