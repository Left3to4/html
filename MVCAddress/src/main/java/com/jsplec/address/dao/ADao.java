package com.jsplec.address.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.address.dto.ADto;

public class ADao {
	
	DataSource dataSource;
	
	public ADao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc"); // 데이터베이스 연결 끝
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ADto> list() {
		ArrayList<ADto> dtos = new ArrayList<ADto>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "select id, name, phone, address, email, relationship from addresstable";
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String email = rs.getString("email");
				String relationship = rs.getString("relationship");

				ADto dto = new ADto(id, name, phone, address, email, relationship);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs!=null) rs.close();
				if(ps!=null)ps.close();
				if (connection!=null) connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dtos;
	}
	
	public void write(String name, String phone, String address, String email, String relationship) {
		Connection connection = null;
		PreparedStatement ps = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into addresstable (name, phone, address, email, relationship) values (?, ?, ?, ?, ?);";
			ps = connection.prepareStatement(query);
			
			ps.setString(1,  name);
			ps.setString(2,  phone);
			ps.setString(3,  address);
			ps.setString(4,  email);
			ps.setString(5,  relationship);
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps!=null)ps.close();
				if (connection!=null) connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public ADto detailView(String sid) {
		ADto dto = new ADto();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "select id, name, phone, address, email, relationship from addresstable where id=?";
			ps = connection.prepareStatement(query);
			ps.setInt(1, Integer.parseInt(sid));
			rs = ps.executeQuery();

			if (rs.next()) {
				String id=rs.getString("id");
				String name = rs.getString("name");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String email = rs.getString("email");
				String relationship = rs.getString("relationship");

				dto=new ADto(id, name, phone, address, email, relationship);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs!=null) rs.close();
				if(ps!=null)ps.close();
				if (connection!=null) connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dto;
	}
	
	public void modify(String id, String name, String phone, String address, String email, String relationship) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "update addresstable set name=?, phone=?, address=?, email=?, relationship=? where id=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, address);
			ps.setString(4, email);
			ps.setString(5, relationship);
			ps.setString(5, relationship);
			ps.setString(6, id);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs!=null) rs.close();
				if(ps!=null)ps.close();
				if (connection!=null) connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public void delete(String id) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "delete from addresstable where id=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs!=null) rs.close();
				if(ps!=null)ps.close();
				if (connection!=null) connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	
	}
}
