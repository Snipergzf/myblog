package com.springmvc.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.springmvc.model.Blog;


@Service
public interface BlogService {
	
	ArrayList<Blog> getBlogList();
	Blog getBlog(int id);
}
