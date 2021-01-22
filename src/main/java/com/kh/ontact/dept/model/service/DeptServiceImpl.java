package com.kh.ontact.dept.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ontact.dept.model.dao.DeptDao;
import com.kh.ontact.dept.model.dto.DeptDto;

@Service("deptServ")
public class DeptServiceImpl implements DeptService{
	@Autowired
	private DeptDao deptDao;
	
	//윤진 - 프로젝트
	public List<DeptDto> selectListDept(String cno){
		return deptDao.selectListDept(cno);
	}
	
	//혜림- 조직도
	@Override
	public int listCount(String cno) {
		return deptDao.listCount(cno);
	}
	
	@Override
	public List<DeptDto> selectDept(String cno) {
		return deptDao.selectDept(cno);
	}
	
	@Override
	public int searchlistCount() {
		return deptDao.searchlistCount();
	}
	
	@Override
	public List<DeptDto> searchDept(String keyword) {  
		return deptDao.searchDept(keyword);
	}
	
	@Override
	public int insertDept(DeptDto d) {  
		return deptDao.insertDept(d);
	}
	
	@Override
	public int deleteDept(HashMap<String, String> paramMap) {  
		return deptDao.deleteDept(paramMap);
	}
	
	@Override
	public DeptDto selectDtOne(String dno){
		return deptDao.selectDtOne(dno);
	}
	
}