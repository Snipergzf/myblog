package com.springmvc.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.model.Blog;
import com.springmvc.service.BlogService;


@Controller
@RequestMapping(value="/blog")
public class BlogController {
	
	private static Logger logger = LoggerFactory.getLogger(BlogController.class);
	
	private BlogService blogService;
	
	@Autowired
	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}	
	
	@RequestMapping(value="/viewBlog", method=RequestMethod.GET)
	public String viewBlog(Model model) {
		logger.debug("get request");
		List<Blog> list = blogService.getBlogList();
		model.addAttribute("list",list); 
		return "index";
	}

//	public @ModelAttribute void listInfo(Model model){
//		List<Blog> list = blogService.getBlogList();
//		model.addAttribute(list);
//	}
	
	@RequestMapping(value="/viewBlogDetail/{blog_id}")
	public String viewBlogDetail(Model model, @PathVariable int blog_id){
		logger.debug("get blog_idL: ",blog_id);
		Blog blog = blogService.getBlog(blog_id);
		model.addAttribute("blog",blog);
		return "blog";
	}
	
	
	
	
}
