package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.ProjectVO;


@Mapper
public interface ProjectDAO {
	// 1번 DB
	public List<ProjectVO> select();
	
	// 2번 DB
	public List<ProjectVO> selectList2();
	
}
