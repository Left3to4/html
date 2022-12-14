package com.jsplec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.jsplec.bbs.dto.BDto;

public class BDao {

	DataSource dataSource;

	public BDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mvc"); // 데이터베이스 연결 끝
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// select all

	public ArrayList<BDto> list() {
		ArrayList<BDto> dtos = new ArrayList<BDto>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "select bid, bName, bTitle, bContent, bDate from mvc_board";
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				int bid = rs.getInt("bid");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");

				BDto dto = new BDto(bid, bName, bTitle, bContent, bDate);
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
	
	public int write(String bName, String bTitle, String bContent) {
		Connection connection = null;
		PreparedStatement ps = null;
		int returnValue=0;

		try {
			connection = dataSource.getConnection();

			String query = "insert into mvc_board (bName, bTitle, bContent, bDate) values (?, ?, ?, now());";
			ps = connection.prepareStatement(query);
			
			ps.setString(1,  bName);
			ps.setString(2,  bTitle);
			ps.setString(3,  bContent);
			
			returnValue=ps.executeUpdate();
			
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
		return returnValue;
	}
	
	public BDto contentView(String sbid) {
		BDto dto = new BDto();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "select bid, bName, bTitle, bContent, bDate from mvc_board where bid=?";
			ps = connection.prepareStatement(query);
			ps.setInt(1, Integer.parseInt(sbid));
			rs = ps.executeQuery();

			if (rs.next()) {
				int bid = rs.getInt("bid");
				String bName = rs.getString("bName");
				String bTitle = rs.getString("bTitle");
				String bContent = rs.getString("bContent");
				Timestamp bDate = rs.getTimestamp("bDate");

				dto = new BDto(bid, bName, bTitle, bContent, bDate);
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
	
	public void modify(String sbid, String sbName, String sbTitle, String sbContent) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "update mvc_board set bName=?, bTitle=?, bContent=? where bid=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, sbName);
			ps.setString(2, sbTitle);
			ps.setString(3, sbContent);
			ps.setInt(4, Integer.parseInt(sbid));
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
	
	public void delete(String bid) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();

			String query = "delete from mvc_board where bid=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, bid);
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
