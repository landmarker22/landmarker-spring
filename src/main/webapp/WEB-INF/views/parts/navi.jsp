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
                <a href="about.do" class="nav-item nav-link">About</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Property</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="propertyList.do" class="dropdown-item">Property List</a>
                        <a href="propertyType.do" class="dropdown-item">Property Type</a>
                        <a href="propertyAgent.do" class="dropdown-item">Property Agent</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="testImonial.do" class="dropdown-item">Testimonial</a>
                        <a href="error404.do" class="dropdown-item">404 Error</a>
                    </div>
                </div>
                <a href="contact.do" class="nav-item nav-link">Contact</a>
            </div>
            <a href="" class="btn btn-primary px-3 d-none d-lg-flex">Add Property</a>
        </div>
    </nav>
</div>