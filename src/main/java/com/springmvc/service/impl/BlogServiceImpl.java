package com.springmvc.service.impl;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springmvc.dao.BlogDao;
import com.springmvc.model.Blog;
import com.springmvc.service.BlogService;



@Service("blogService")
public class BlogServiceImpl implements BlogService {

	@Autowired
	private BlogDao blogDao;
	
	public ArrayList<Blog> getBlogList() {
		this.blogDao.getBlog(233);
		ArrayList<Blog> ret = new ArrayList<Blog>();
		Blog blog1 = new Blog();
		blog1.setTitle("第一篇博客");
		blog1.setDate("2017-04-19");
		blog1.setTag("Java");
		blog1.setId(1);
		ret.add(blog1);	
		return ret;
	}

	public Blog getBlog(int blog_id) {
		this.blogDao.getBlog(blog_id);
		Blog blog = new Blog();
		blog.setDescr("哈哈哈");
		blog.setTitle("第一篇博客");
		return blog;
	}

	





}
