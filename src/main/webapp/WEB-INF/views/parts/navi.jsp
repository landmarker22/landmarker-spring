<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container-fluid nav-bar bg-transparent">
    <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
        <a href="/landmarker/" class="navbar-brand d-flex align-items-center text-center">
            <div class="me-2">
                <img src="${ pageContext.servletContext.contextPath }/resources/img/Llogo.png" style="width: 180px;">
            </div>            
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
                <a href="/landmarker/" class="nav-item nav-link active">Home</a>
                
                <a href="#" class="nav-item nav-link">Gallery</a>
                <a href="#" class="nav-item nav-link">Login</a> 
            	<a href="mypage.do" class="nav-item nav-link">Mytest</a>               
                <a href="admin.do" class="nav-item nav-link">Admin</a>
            </div>
            <a href="" class="btn btn-primary px-3 d-none d-lg-flex">사진으로 랜드마크 검색</a>
        </div>
    </nav>
</div>