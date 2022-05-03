<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	    <title>Makaan - Real Estate HTML Template</title>
		<c:import url="/WEB-INF/views/parts/head.jsp" />
		<style type="text/css">
			.img-wrapper {
			    width: 100%;
				height: 75vh;
			    background-image: url("${ pageContext.servletContext.contextPath }/resources/img/carousel-1.jpg");
			    background-repeat: no-repeat;
			    background-size: cover;
			    background-position: center;
			}
		</style>
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
		        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active img-wrapper">
							<div class="carousel-caption d-none d-md-block">
								<h5>First slide label</h5>
								<p>Some representative placeholder content for the first slide.</p>
							</div>
						</div>
						<div class="carousel-item img-wrapper">
							<div class="carousel-caption d-none d-md-block">
								<h5>Second slide label</h5>
								<p>Some representative placeholder content for the second slide.</p>
							</div>
						</div>
						<div class="carousel-item img-wrapper">
							<div class="carousel-caption d-none d-md-block">
								<h5>Third slide label</h5>
								<p>Some representative placeholder content for the third slide.</p>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
	        </div>
	        <!-- Header End -->
	
	
	        <!-- Property List Start -->
	        <div class="container-xxl py-5">
	            <div class="container">
 	                <div class="row g-0 gx-5 align-items-end">
	                    <div class="col-lg-6">
	                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
	                            <h1 class="mb-3">최근 게시글</h1>
<!-- 	                            <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit diam justo sed rebum.</p> -->
	                        </div>
	                    </div>
	                    <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
	                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
	                            <li class="nav-item me-2">
	                                <a class="btn btn-outline-primary active" data-bs-toggle="pill" href="${ pageContext.servletContext.contextPath }/resources/#tab-1">더보기</a>
	                            </li>
<%-- 	                            <li class="nav-item me-2">
	                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="${ pageContext.servletContext.contextPath }/resources/#tab-2">For Sell</a>
	                            </li>
	                            <li class="nav-item me-0">
	                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="${ pageContext.servletContext.contextPath }/resources/#tab-3">For Rent</a>
	                            </li> --%>
	                        </ul>
	                    </div>
	                </div>
<!-- 	                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
	                    <h1 class="mb-3">인기 게시글</h1>
	                    <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
	                </div> -->
	                <div class="tab-content">
	                    <div id="tab-1" class="tab-pane fade show p-0">
	                        <div class="row g-4">
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a class="detail" role="button"><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-2 py-1 px-2">#남산타워</div>
<!--	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>-->
	                                    </div>
	                                    <div class="p-3 pb-0">
	                                        <h5 class="text-primary mb-2" style="float:left; margin:0px 10px 0px 0px;">Tester_ID</h5>
											<h8 class="text-primary mb-3" style="float:left; margin:0px 10px 0px 0px;">여 행 중 독 자</h8>
											<i class="bi bi-heart fs-5" style="float:right;"></i>
											<a><i class="bi bi-heart-fill fs-5" style="float:right; color:#e06666;"></i></a>
<!--	                                        <p style="clear:both;"><i class="fa fa-map-marker-alt text-primary me-2"></i><a class="text-dark" href="">서울 용산구 남산공원길 105</a></p>-->
	                                    </div>
<!--	                                    <div class="d-flex border-top">-->
<!--&lt;!&ndash;	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>&ndash;&gt;-->
<!--	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>-->
<!--	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>-->
<!--	                                    </div>-->
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a class="detail" role="button"><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-2 py-1 px-2">#남산타워</div>
<!--	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>-->
	                                    </div>
	                                    <div class="p-3 pb-0">
	                                        <h5 class="text-primary mb-2" style="float:left; margin:0px 10px 0px 0px;">Tester_ID</h5>
											<h8 class="text-primary mb-3" style="float:left; margin:0px 10px 0px 0px;">여 행 중 독 자</h8>
											<i class="bi bi-heart fs-5" style="float:right;"></i>
											<a><i class="bi bi-heart-fill fs-5" style="float:right; color:#e06666;"></i></a>
<!--	                                        <p style="clear:both;"><i class="fa fa-map-marker-alt text-primary me-2"></i><a class="text-dark" href="">서울 용산구 남산공원길 105</a></p>-->
	                                    </div>
<!--	                                    <div class="d-flex border-top">-->
<!--&lt;!&ndash;	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>&ndash;&gt;-->
<!--	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>-->
<!--	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>-->
<!--	                                    </div>-->
	                                </div>
	                            </div>
	                            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                                <div class="property-item rounded overflow-hidden">
	                                    <div class="position-relative overflow-hidden">
	                                        <a class="detail" role="button"><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
	                                        <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-2 py-1 px-2">#남산타워</div>
<!--	                                        <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>-->
	                                    </div>
	                                    <div class="p-3 pb-0">
	                                        <h5 class="text-primary mb-2" style="float:left; margin:0px 10px 0px 0px;">Tester_ID</h5>
											<h8 class="text-primary mb-3" style="float:left; margin:0px 10px 0px 0px;">여 행 중 독 자</h8>
											<i class="bi bi-heart fs-5" style="float:right;"></i>
											<a><i class="bi bi-heart-fill fs-5" style="float:right; color:#e06666;"></i></a>
<!--	                                        <p style="clear:both;"><i class="fa fa-map-marker-alt text-primary me-2"></i><a class="text-dark" href="">서울 용산구 남산공원길 105</a></p>-->
	                                    </div>
<!--	                                    <div class="d-flex border-top">-->
<!--&lt;!&ndash;	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>&ndash;&gt;-->
<!--	                                        <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>-->
<!--	                                        <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>-->
<!--	                                    </div>-->
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- Property List End -->
	
	
<%-- 	        <!-- Category Start -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
	                    <h1 class="mb-3">Property Types</h1>
	                    <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
	                </div>
	                <div class="row g-4">
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-apartment.png" alt="Icon">
	                                </div>
	                                <h6>Apartment</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-villa.png" alt="Icon">
	                                </div>
	                                <h6>Villa</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-house.png" alt="Icon">
	                                </div>
	                                <h6>Home</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-housing.png" alt="Icon">
	                                </div>
	                                <h6>Office</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-building.png" alt="Icon">
	                                </div>
	                                <h6>Building</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-neighborhood.png" alt="Icon">
	                                </div>
	                                <h6>Townhouse</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-condominium.png" alt="Icon">
	                                </div>
	                                <h6>Shop</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
	                        <a class="cat-item d-block bg-light text-center rounded p-3" href="${ pageContext.servletContext.contextPath }/resources/">
	                            <div class="rounded p-4">
	                                <div class="icon mb-3">
	                                    <img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/icon-luxury.png" alt="Icon">
	                                </div>
	                                <h6>Garage</h6>
	                                <span>123 Properties</span>
	                            </div>
	                        </a>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- Category End --> --%>
	
	
	        <!-- Testimonial Start -->
	        <div class="container-xxl py-5">
	            <div class="container">
	                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
	                    <h1 class="mb-3">인기 게시글</h1>
	                </div>
	                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                   	    <div class="testimonial-ite wow fadeInUp rounded p-3" data-wow-delay="0.1s">
                            <div class="property-item rounded overflow-hidden">
                                <div class="position-relative overflow-hidden">
                                    <a class="detail" role="button"><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
                                    <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-2 py-1 px-2">#남산타워</div>
<!--	                            <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>-->
                                </div>
                                <div class="p-3 pb-0">
                                    <h5 class="text-primary mb-2" style="float:left; margin:0px 10px 0px 0px;">Tester_ID</h5>
									<h8 class="text-primary mb-3" style="float:left; margin:0px 10px 0px 0px;">여 행 중 독 자</h8>
									<i class="bi bi-heart fs-5" style="float:right;"></i>
									<a><i class="bi bi-heart-fill fs-5" style="float:right; color:#e06666;"></i></a>
<!--	                            <p style="clear:both;"><i class="fa fa-map-marker-alt text-primary me-2"></i><a class="text-dark" href="">서울 용산구 남산공원길 105</a></p>-->
                                </div>
<!--	                        <div class="d-flex border-top">-->
<!--&lt;!&ndash;	                <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>&ndash;&gt;-->
<!--	                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>-->
<!--	                            <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>-->
<!--	                        </div>-->
                            </div>
                        </div>
                   	    <div class="testimonial-ite wow fadeInUp rounded p-3" data-wow-delay="0.1s">
                            <div class="property-item rounded overflow-hidden">
                                <div class="position-relative overflow-hidden">
                                    <a class="detail" role="button"><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
                                    <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-2 py-1 px-2">#남산타워</div>
<!--	                            <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>-->
                                </div>
                                <div class="p-3 pb-0">
                                    <h5 class="text-primary mb-2" style="float:left; margin:0px 10px 0px 0px;">Tester_ID</h5>
									<h8 class="text-primary mb-3" style="float:left; margin:0px 10px 0px 0px;">여 행 중 독 자</h8>
									<i class="bi bi-heart fs-5" style="float:right;"></i>
									<a><i class="bi bi-heart-fill fs-5" style="float:right; color:#e06666;"></i></a>
<!--	                            <p style="clear:both;"><i class="fa fa-map-marker-alt text-primary me-2"></i><a class="text-dark" href="">서울 용산구 남산공원길 105</a></p>-->
                                </div>
<!--	                        <div class="d-flex border-top">-->
<!--&lt;!&ndash;	                <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>&ndash;&gt;-->
<!--	                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>-->
<!--	                            <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>-->
<!--	                        </div>-->
                            </div>
                        </div>
                   	    <div class="testimonial-ite wow fadeInUp rounded p-3" data-wow-delay="0.1s">
                            <div class="property-item rounded overflow-hidden">
                                <div class="position-relative overflow-hidden">
                                    <a class="detail" role="button"><img class="img-fluid" src="${ pageContext.servletContext.contextPath }/resources/img/property-1.jpg" alt=""></a>
                                    <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-2 py-1 px-2">#남산타워</div>
<!--	                            <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3">Appartment</div>-->
                                </div>
                                <div class="p-3 pb-0">
                                    <h5 class="text-primary mb-2" style="float:left; margin:0px 10px 0px 0px;">Tester_ID</h5>
									<h8 class="text-primary mb-3" style="float:left; margin:0px 10px 0px 0px;">여 행 중 독 자</h8>
									<i class="bi bi-heart fs-5" style="float:right;"></i>
									<a><i class="bi bi-heart-fill fs-5" style="float:right; color:#e06666;"></i></a>
<!--	                            <p style="clear:both;"><i class="fa fa-map-marker-alt text-primary me-2"></i><a class="text-dark" href="">서울 용산구 남산공원길 105</a></p>-->
                                </div>
<!--	                        <div class="d-flex border-top">-->
<!--&lt;!&ndash;	                <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i>1000 Sqft</small>&ndash;&gt;-->
<!--	                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>-->
<!--	                            <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>-->
<!--	                        </div>-->
                            </div>
                        </div>
	                </div>
	            </div>
	        </div>
	        <!-- Testimonial End -->
	        
	
	        <!-- Footer Start -->
	        <c:import url="/WEB-INF/views/parts/footer.jsp" />
	        <!-- Footer End -->
	
	
	        <!-- Back to Top -->
	        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
	    </div>
	    
		<c:import url="/WEB-INF/views/parts/foot.jsp" />
	</body>
</html>