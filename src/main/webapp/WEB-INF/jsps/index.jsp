<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>三颗猫饼干的博客</title>
	
	<link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet">
	
	<!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional fonts for this theme -->
    <link href="<%=request.getContextPath()%>/resources/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this theme -->
    <link href="<%=request.getContextPath()%>/resources/css/clean-blog.css" rel="stylesheet">


    <!-- Temporary navbar container fix until Bootstrap 4 is patched -->
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    </style>
</head>
<body>
	<!-- Navigation -->
    <nav class="navbar fixed-top navbar-toggleable-md navbar-light" id="mainNav">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand page-scroll" href="index.html">Start Bootstrap</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="about.html">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="post.html">Sample Post</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link page-scroll" href="contact.html">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
 	
 	<!-- Page Header -->
    <header class="intro-header" style="background-image: url(<%=request.getContextPath()%>/resources/imgs/home-bg.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1">
                    <div class="site-heading">
                        <h1>三颗猫饼干的博客</h1>
                        <span class="subheading">Snipergzf's blog</span>
                    </div>
                </div>
            </div>
        </div>
    </header>
 	
 	<!-- Main Content -->
 	<div class="blog_container clearfix" index>
 		<div class="left">
 			<h3 class="categories">导航</h3>
 		</div>
 		<div class="right">
	 			<h3 class="blog list">博客</h3>
	 			<hr>
	 			<ul id="blogList">
	 				<c:forEach items="${list}" var="blog">
						<li>
							<h2>
								<a class="blog-link" href="<c:url value="/blog/viewBlogDetail/${blog.id}"/>">${blog.title}</a>
							</h2>
							<div class="label">
								<div class="label-card">
									<i class="fa fa-calendar"></i>
									${blog.date}
								</div>
								<div class="label-card">
									<span class="pageTag">
										<i class="fa fa-tags"></i>
										<a href="#" title="Tag: ${blog.tag}" rel="tag">${blog.tag}</a>
									</span>
								</div>
							</div>
							<hr>
						</li>
					</c:forEach>
	 			</ul>
 		</div>
 	</div>
 	
 	
 	
 	<!-- Footer -->
    <footer class="site-footer">
           <div class="wrapper">
	           	<p class="description">
	           		高泽锋的博客
	           	</p>
            	<p class="contact">
           	 		Contact me at
           	 	<a href="https://github.com/Snipergzf">
           	 		<i class="fa fa-github-square" aria-hidden="true">
           	 		</i>
           	 	</a>
           	 	<a href="zefenggao@163.com">
           	 		<i class="fa fa-envelope-o" aria-hidden="true">
           	 		</i>
           	 	</a>
           	 	<a href="http://weibo.com/3025590095/profile?rightmod=1&wvr=6&mod=personinfo">
           	 		<i class="fa fa-weibo" aria-hidden="true">
           	 		</i>
           	 	</a>
           	</p>
           </div>
    </footer>
    
    <!-- Tether -->
    <script src="<%=request.getContextPath()%>/resources/js/tether.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/resources/js/clean-blog.min.js"></script>
 	
</body>
</html>