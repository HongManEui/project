package javaEx.project.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaEx.project.dao.MemberDao;
import javaEx.project.dto.MemberDto;

public class MembersAllService implements Service {
	
    public MembersAllService() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public ArrayList<MemberDto> execute(HttpServletRequest request, HttpServletResponse response){
		MemberDao dao = MemberDao.getInstance();
		return dao.membersAll();
	}

}
