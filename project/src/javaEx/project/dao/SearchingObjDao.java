package javaEx.project.dao;

import javaEx.project.dto.SearchingObjDto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SearchingObjDao {
	
	private static SearchingObjDao instance = new SearchingObjDao();
	DataSource dataSource;
	
	private SearchingObjDao() {
		
	}
	
	public static SearchingObjDao getInstance() {
		return instance;
	}
	
	public SearchingObjDto getMember(String id) {
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet set = null;
		String query = "select * from objs where objnum = ?";
		SearchingObjDto dto=null;
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, id);
			set = pstmt.executeQuery();
			
			if(set.next()) {
				dto = new SearchingObjDto();
				dto.setName(set.getString("Name"));
				dto.setAge(set.getString("Age"));
				dto.setIncome(set.getString("Income"));
				dto.setJob(set.getString("Job"));
				dto.setobjNumber(set.getInt("ObjNumber"));
				dto.setSido(set.getString("Sido"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				set.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	

	public ArrayList<SearchingObjDto> membersAll(){
		
		ArrayList<SearchingObjDto> dtos = new ArrayList<SearchingObjDto>();
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "select * from objs";
		
		try {
			connection = getConnection();
			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			System.out.println("=============");
			while(rs.next()) {
				SearchingObjDto dto = new SearchingObjDto();
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getString("age"));
				dto.setIncome(rs.getString("income"));
				dto.setJob(rs.getString("job"));
				dto.setobjNumber(rs.getInt("sido"));
				dtos.add(dto);
			}
			System.out.println("---------------------------");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return dtos;
	}
	
	private Connection getConnection() {
		Context context = null;
		DataSource dataSource = null;
		Connection connection = null;
		try {
			context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
			connection = dataSource.getConnection();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return connection;
	}	
}