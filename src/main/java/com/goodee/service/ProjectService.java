package com.goodee.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.ProjectDAO;
import com.goodee.vo.ProjectVO;

@Service
public class ProjectService {
	public ProjectDAO dao;

	public ProjectService(ProjectDAO dao) {
		super();
		this.dao = dao;
	}
	
	// 1번 DB
	public List<ProjectVO> select() {
		return dao.select();
	}
	
	// 2번 DB
	public void getList2(Model model) {
		model.addAttribute("list2", dao.selectList2());
	}
}
