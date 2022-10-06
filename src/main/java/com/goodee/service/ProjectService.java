package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.ProjectVO;

@Service
public class ProjectService {
	public ProjectDAO dao;

	public ProjectService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	
	public List<ProjectVO> select() {
		return dao.select();
	}
}
