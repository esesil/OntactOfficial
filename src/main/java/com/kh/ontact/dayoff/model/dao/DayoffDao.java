package com.kh.ontact.dayoff.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ontact.dayoff.model.dto.DayoffDto;

@Repository("dayoffDao")
public class DayoffDao {
	@Autowired
	private SqlSession sqlSession;
	
	public int allListCount(String uno) {
		return sqlSession.selectOne("DayoffMapper.allListCount", uno);
	}
	public List<DayoffDto> selectDayoff(int startPage, int limit, String uno) { // 특정 페이지 단위의 게시글 조
		int startRow = (startPage - 1) * limit; // 시작 페이지를 가져옴, 0~9, 10~19
		RowBounds row = new RowBounds(startRow, limit); //ibatis 세션의 rowbounds
		return sqlSession.selectList("DayoffMapper.selectDayoff",uno,row);
	}
	public int listCount(HashMap<String, String> paramMap) {
		return sqlSession.selectOne("DayoffMapper.listCount", paramMap);
	}
	public List<DayoffDto> searchDayoff(HashMap<String, String> paramMap) { 
		return sqlSession.selectList("DayoffMapper.searchDayoff", paramMap);
	}
	public DayoffDto selectDfOne(String dfno) { 
		return sqlSession.selectOne("DayoffMapper.selectDfOne", dfno);
	}
	public int insertDayoff(DayoffDto d) { // 글 입력
		System.out.println("다오진입");
		return sqlSession.insert("DayoffMapper.insertDayoff", d);
	}
	public int updateDayoffApp(DayoffDto d, String uno) { // 글 수정 
		return sqlSession.update("DayoffMapper.updateDayoffApp", d);
	}
	public List<DayoffDto> selectDfCalendar(String dno) {
		return sqlSession.selectList("DayoffMapper.selectDfCalendar", dno);
	}
}
