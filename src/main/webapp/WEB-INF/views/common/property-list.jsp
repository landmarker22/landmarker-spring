<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	    <title>Makaan - Real Estate HTML Template</title>
	    <c:import url="/WEB-INF/views/parts/head.jsp" />
	</head>
	<body>
	    <div class="container-xxl bg-white p-0">
	        <!-- Spinner Start -->
	        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
	            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
	                <span class="sr-only">Loading...</span>
	            </div>
	        </div>
	        <!-- Spinner End -->
	
	        <!-- Navbar Start -->
			<c:import url="/WEB-INF/views/parts/navi.jsp" />
	        <!-- Navbar End -->
	
	        <!-- Header Start -->
	        <div class="container-fluid header bg-white p-0">
	            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
	                <div class="col-md-6 p-5 mt-lg-5">
	                    <h1 class="display-5 animated fadeIn mb-4">Property List</h1> 
	                        <nav aria-label="breadcrumb animated fadeIn">
	                        <ol class="breadcrumb text-uppercase">
	                            <li class="breadcrumb-item"><a href="#">Home</a></li>
	                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
	                            <li class="breadcrumb-item text-body active" aria-current="page">Property List</li>
	                        </ol>
	                    </nav>
	                </div>
	                <div class="col-md-6 animated fadeIn">
	                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/header.jpg" alt="">
	                </div>
	            </div>
	        </div>
	        <!-- Header End -->
	
	
	        <!-- Search Start -->
	        <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
	            <div class="container">
	                <div class="row g-2">
	                    <div class="col-md-10">
	                        <div class="row g-2">
	                            <div class="col-md-4">
	                                <input type="text" class="form-control border-0 py-3" placeholder="Search Keyword">
	                            </div>
	                            <div class="col-md-4">
	                                <select class="form-select border-0 py-3">
	                                    <option selected>Property Type</option>
	                                    <option value="1">Property Type 1</option>
	                                    <option value="2">Property Type 2</option>
	                                    <option value="3">Property Type 3</option>
	                                </select>
	                            </div>
	                            <div class="col-md-4">
	                                <select class="form-select border-0 py-3">
	                                    <option selected>Location</option>
	                                    <option value="1">Location 1</option>
	                                    <option value="2">Location 2</option>
	                                    <option value="3">Location 3</option>
	                                </select>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-md-2">
	                        <button class="btn btn-dark border-0 w-100 py-3">Search</button>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- Search End -->
	
	
	        <!-- Property List Start -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="row g-0 gx-5 align-items-end">
	                    <div class="col-lg-6">
	                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
	                            <h1 class="mb-3">Property Listing</h1>
	                            <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit diam justo sed rebum.</p>
	                        </div>
	                    </div>
	                    <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
	                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
	                            <li class="nav-item me-2">
	                                <a class="btn btn-outline-primary active" data-bs-toggle="pill" href="#tab-1">Featured</a>
	                            </li>
	                            <li class="nav-item me-2">
	                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">For Sell</a>
	                            </li>
	                            <li class="nav-item me-0">
	                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-3">For Rent</a>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="tab-content">
	                    <div id="tab-1" class="tab-pane fade show p-0 active">
	                        <div class="row g-4">
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-2.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Villa</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-3.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Office</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-4.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Building</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-5.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Home</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-6.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Shop</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
	                                <a class="btn btn-primary py-3 px-5" href="">Browse More Property</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div id="tab-2" class="tab-pane fade show p-0">
	                        <div class="row g-4">
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-2.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Villa</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-3.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Office</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-4.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Building</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-5.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Home</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-6.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Shop</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-12 text-center">
	                                <a class="btn btn-primary py-3 px-5" href="">Browse More Property</a>
	                            </div>
	                        </div>
	                    </div>
	                    <div id="tab-3" class="tab-pane fade show p-0">
	                        <div class="row g-4">
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-2.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Villa</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-3.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Office</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-4.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Building</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-5.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Home</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a href=""><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-6.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Rent</div>
	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Shop</div>
	                                    </div>
	                                    <div class="p-4 pb-0">
	                                        <h5 class="text-primary mb-3">$12,345</h5>
	                                        <a class="d-block h5 mb-2" href="">Golden Urban House For Sell</a>
	                                        <p><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Street, New York, USA</p>
	                                    </div>
	                                    <div class="d-flex border-top">
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>
	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-12 text-center">
	                                <a class="btn btn-primary py-3 px-5" href="">Browse More Property</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- Property List End -->
	
	
	        <!-- Call to Action Start -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="bg-light rounded p-3">
	                    <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
	                        <div class="row g-5 align-items-center">
	                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
	                                <img class="img-fluid rounded w-100" src="${ pageContext.servletContext.contextPath }/resources/img/call-to-action.jpg" alt="">
	                            </div>
	                            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
	                                <div class="mb-4">
	                                    <h1 class="mb-3">Contact With Our Certified Agent</h1>
	                                    <p>Eirmod sed ipsum dolor sit rebum magna erat. Tempor lorem kasd vero ipsum sit sit diam justo sed vero dolor duo.</p>
	                                </div>
	                                <a href="" class="btn btn-primary py-3 px-4 me-2"><i class="fa fa-phone-alt me-2"></i>Make A Call</a>
	                                <a href="" class="btn btn-dark py-3 px-4"><i class="fa fa-calendar-alt me-2"></i>Get Appoinment</a>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- Call to Action End -->
	        
	
	        <!-- Footer Start -->
	        <c:import url="/WEB-INF/views/parts/footer.jsp" />
	        <!-- Footer End -->
	
	
	        <!-- Back to Top -->
	        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
	    </div>
	
		<c:import url="/WEB-INF/views/parts/foot.jsp" />
	</body>
</html>