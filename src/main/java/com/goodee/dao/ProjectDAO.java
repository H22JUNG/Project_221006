package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.ProjectVO;


@Mapper
public interface ProjectDAO {
	public List<ProjectVO> select();
}
