package javaEx.project.service;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaEx.project.dto.MemberDto;

public interface Service{
	public ArrayList<MemberDto> execute(HttpServletRequest request, HttpServletResponse response);
}