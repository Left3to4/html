package com.jsplec.board.dto;

import java.sql.Timestamp;

public class RDto {

	String id;
	String name;
	String title;
	Timestamp date;
	
	public RDto() {
		
	}
	

	public RDto(String id, String name, String title, Timestamp date) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

}
