package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.Blog;

public interface BlogDao {
	public Blog getBlog(int id);

	public List<Blog> getBlogs(int id, int limit);
	
	public boolean insertBlog(Blog blog);
}
