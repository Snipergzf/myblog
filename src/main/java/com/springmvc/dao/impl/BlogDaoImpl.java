package com.springmvc.dao.impl;

import java.util.List;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import com.springmvc.dao.BlogDao;
import com.springmvc.model.Blog;

public class BlogDaoImpl extends JdbcDaoSupport implements BlogDao {

//	private JdbcTemplate jdbcTemplate;
	
	public Blog getBlog(int id) {
		String sql = "insert into blog (title, tags, descr) value(?, ?, ?)";
		this.getJdbcTemplate().update(sql, id, "1111", "1111");
		return null;
	}

	public List<Blog> getBlogs(int id, int limit) {
		return null;
	}

	public boolean insertBlog(Blog blog) {
		return false;
	}
	
	

}
