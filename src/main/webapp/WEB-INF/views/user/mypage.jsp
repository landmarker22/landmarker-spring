<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="board_count" value="${ board_count }" />
<c:set var="startPage" value="${ startPage }" />
<c:set var="endPage" value="${ endPage }" />
<c:set var="maxPage" value="${ maxPage }" />
<c:set var="currentPage" value="${ currentPage }" />

<!DOCTYPE html>
<html>
<head>
<style>
table {
	width: 100%;
	border: 0px solid #444444;
	border-collapse: collapse;
}

.tdd td {
	border: 0px solid #444444;
}

.myline {
	height: 1px;
	opacity: 0.4;
	background-color: gray;
}

#face {
	border-radius: 49px;
	background-color: lightgray;
	margin: 10px;
	width: 100px;
	height: 100px;
}

.mynum {
	position: relative;
	top: -20px
}

input[type="radio"] {
	display: none;
}

input[type="radio"]+label {
	display: inline-block;
	font-size: 18px;
	font-weight: nomal;
	padding: 10px;
	opacity: 0.7;
	cursor: pointer;
}

input[type="radio"]:checked+label {
	color: black;
	font-size: 20px;
	opacity: 1;
	font-weight: bolder;
}

.conbox {
	margin: 0 auto;
	display: none;
}


input[id="tab01"]:checked ~ .con1 {
	display: block;
}

input[id="tab02"]:checked ~ .con2 {
	display: block;
}

input[id="tab03"]:checked ~ .con3 {
	display: block;
}

input[id="tab04"]:checked ~ .con4 {
	display: block;
}

.btncheck {
	display:block;
}

input[id="tab03"]:checked ~ .btn03 {
	display: none;
}
input[id="tab04"]:checked ~ .btn04 {
	display: none;
}


.search input {
	width: 400px;
	height: 30px;
	border: 2px solid rgb(209, 207, 207);
	border-radius: 15px;
}

#searchtag::placeholder {
	text-align: center;
	font-size: 14px;
	opacity: 0.7;
}

#nametag::placeholder {
	text-align: center;
	font-size: 18px;
	font-weight:700;
}

#btn1 {
	width: 70px;
	padding: 2px;
	border-radius: 20px;
}

div.photobox {
	height: 280px;
	width: 280px;
	overflow: hidden;
	margin: 0 auto;
}



img.photo {
	width: 100%;
	height: 100%;
	object-fit: cover;
}


</style>
<title>Makaan - Real Estate HTML Template</title>
<c:import url="/WEB-INF/views/parts/head.jsp" />
</head>
<body>
	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->
		<!-- Navbar Start -->
		<c:import url="/WEB-INF/views/parts/navi.jsp" />
		<!-- Navbar End -->
		<!-- Header Start -->
		<div class="container-fluid header bg-white p-5">
			<br>
		</div>
		<!-- Header End -->
		<div class="container-xxl py-3">
			<div class="container">
				<br>
				<div class="row g-4">					
					<!-- ---------------------------------------- -->
					<div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="team-item rounded overflow-hidden">
							<div class="tab_content">
									<input type="radio" name="mymenu" id="tab04">
									<div class="btncheck btn04" style="text-align:right; margin:-30px 17px 0px 0px;
									position:relative; top:65px">
									<label for="tab04">
										<a class="btn btn-outline-primary active" style="box-shadow: none;">수정하기</a>
									</label>
									</div> 
									<input type="radio" name="mymenu" id="tab03" checked> 
									<div class="btncheck btn03" style="text-align:right; margin:-30px 17px 0px 0px;
									position:relative; top:92px; width:100px; float:right;">
									<label for="tab03">
										<a class="btn btn-outline-primary active" style="box-shadow: none;">취 소</a>
									</label>
									</div>	
								<div class="p-3 mt-1 conbox con3">
									<table class="tdd">
										<tr height="10px">
											<td rowspan="4" width="100px">
												<div id="face"></div>
	
											</td>
											<td width="76px"><div style="width: 75px;">
													<h5 class="fw-bold mb-0" style="letter-spacing: 4px;">${ user.user_name }</h5>
												</div></td>
											<td width="28%"><small style="color: #41CE96;">여
													행 중 독 자</small></td>
											<td rowspan="2" colspan="2" align="right"></td>
	
	
										</tr>
										<tr height="20px">
											<td colspan="2" align="left"><small><b
													style="text-transform: lowercase; letter-spacing: 0.5px; opacity: 0.5;">${ user.user_email }</b></small></td>
										</tr>
										<tr height="0px">
											<td colspan="4"><div class="myline" width="100%"></div>
												<div style=""></div></td>
										</tr>
										<tr>
											<td></td>
											<td class="text-center"><b style="opacity: 0.8">올린게시글</b></td>
											<td width="28%" class="text-center"><b
												style="opacity: 0.8">스크랩</b></td>
											<td width="28%" class="text-center"><b
												style="opacity: 0.8">벳지</b></td>
										</tr>
										<tr>
											<td height="30px"></td>
											<td></td>
											<td class="text-center" style=""><div
													style="height: 70px;">
													<b class="mynum" style="font-size: 80px; color: #ADE8CE">${ board_count }</b>
												</div></td>
											<td class="text-center" style=""><div
													style="height: 70px;">
													<b class="mynum" style="font-size: 80px; color: #ADE8CE">${ scrap_count }</b>
												</div></td>
											<td class="text-center" style=""><div
													style="height: 70px;">
													<b class="mynum" style="font-size: 80px; color: #FFC154">0</b>
												</div></td>
										</tr>
									</table>
								</div>
								<div class="p-3 mt-1 conbox con4">
									<form action="userupdate.do" method="post">
									<table class="tdd">
										<tr height="10px">
											<td rowspan="4" width="100px">
												<div id="face"></div>
	
											</td>
											<td width="76px"><div style="width: 75px;">
													<h5 class="fw-bold mb-0" style="letter-spacing: 4px;">
													<input id="nametag" type="text" name="username" style="letter-spacing: 4px; width:80px; 
													text-align:center; position:relative; top:10px;" placeholder="${ user.user_name }"></h5>
												</div></td>
											<td width="28%"><small style="color: #41CE96;"></small></td>
											<td colspan="2" align="right">
												<button class="btn btn-outline-primary active" type="submit" style="box-shadow: none;color:white; background-color:#0CAC82;">저 장</button>
											</td>
	
	
										</tr>
										<tr height="20px">
											<td colspan="2" align="left">
												<small><b
													style="text-transform: lowercase; letter-spacing: 0.5px; opacity: 0.5;">${ user.user_email }</b></small>
											</td>
											<td colspan="2" align="right" style="height:50px;">
											
											</td>
										</tr>
										<tr height="0px">
											<td colspan="4"><div class="myline" width="100%"></div>
												<div style=""></div></td>
										</tr>
										<tr>
											<td></td>
											<td class="text-center"><b style="opacity: 0.8">올린게시글</b></td>
											<td width="28%" class="text-center"><b
												style="opacity: 0.8">스크랩</b></td>
											<td width="28%" class="text-center"><b
												style="opacity: 0.8">벳지</b></td>
										</tr>
										<tr>
											<td height="30px"></td>
											<td></td>
											<td class="text-center" style=""><div
													style="height: 70px;">
													<b class="mynum" style="font-size: 80px; color: #ADE8CE">${ board_count }</b>
												</div></td>
											<td class="text-center" style=""><div
													style="height: 70px;">
													<b class="mynum" style="font-size: 80px; color: #ADE8CE">${ scrap_count }</b>
												</div></td>
											<td class="text-center" style=""><div
													style="height: 70px;">
													<b class="mynum" style="font-size: 80px; color: #FFC154">0</b>
												</div></td>
										</tr>
									</table>
									</form>
								</div>
							</div>	
						</div>
					</div>					
					<!--  -------------------------------------------------------------------- -->
					<div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="team-item rounded overflow-hidden">
							<div class=" p-4 mt-1">
								<table class="tdd">
									<tr>
										<td width="160px"><h5 class="fw-bold mb-0">올린게시물</h5></td>
										<td width="190px"></td>
										<td width="100px" align="right"><b style="color: orange;">${ board_count }</b></td>
									</tr>
									<tr height="30px">
										<td colspan="3"><div class="myline"></div></td>
									</tr>
								</table>
								<br>	
								<div class="tab-content">
									<div id="tab-1" class="tab-pane fade show p-0 active">
										<div class="row g-4">
											<!-- -----------------------올린게시물 컨텐츠----------------------------------- -->
											<c:forEach items="${ requestScope.gallerylist }" var="g" varStatus="status">
											
											<div class="col-lg-4 col-md-6 wow fadeInUp"
												data-wow-delay="0.1s">
												<div class="property-item rounded overflow-hidden"
													style="box-shadow: 3px 4px 12px 3px gray;width:390px; height:300px;">
													<div class="position-relative">
														<a class="detail" role="button" style="overflow: hidden; margin: 0 auto;"><img
															style="width: 390px; height: 300px; object-fit: cover;" 
															src="${ pageContext.servletContext.contextPath }/resources/galleryimg/${ g.photo_path }"
															alt=""></a>
														<div class="m-2 py-1 px-2"
															style="position: absolute; bottom: 38%; right: 35%;">
															<b
																style="color: white; text-shadow: 1px 1px 6px black; cursor: pointer;">${ g.hashtag }</b>
														</div>
													</div>
												</div>
											</div>
											
											</c:forEach>

											<!-- 올린게시물 컨텐츠 끝---------------------------------------------- -->

										</div>
									</div>
								</div>
								<br>
								<table class="tdd">	
									<tr height="30px">
										<td colspan="3"><div class="myline"></div></td>
									</tr>
									<tr>
										<td height="20px" colspan="3">
											<div>
												<ul style="justify-content: center; padding-top: 25px;"
													class="pagination">
													<!-- 1페이지로 이동처리 -->
													<c:if test="${ currentPage eq 1 }">
														<li class="page-item disabled"><a class="page-link" href="#"><i class="bi bi-chevron-double-left"></i></a></li>
													</c:if>
													<c:if test="${ currentPage > 1 }">
														<c:url var="blf" value="/mypage.do">
															<c:param name="page" value="1" />
														</c:url>
														<li class="page-item"><a class="page-link" href="${ blf }"><i class="bi bi-chevron-double-left"></i></a></li>
													</c:if>
													<!--  이전페이지 그룹으로 이동처리  -->
													<c:if
														test="${ (currentPage -10) < startPage and (currentPage - 10) > 1 }">
														<c:url var="blf2" value="/mypage.do">
															<c:param name="page" value="${ startPage - 10 }" />
														</c:url>
														<li class="page-item"><a class="page-link" href="${ blf2 }"><i class="bi bi-chevron-left"></i></a></li>
													</c:if>
													<c:if
														test="${ !((currentPage -10) < startPage and (currentPage - 10) > 1) }">
														<li class="page-item disabled"><a class="page-link"
															href="${ blf2 }"><i class="bi bi-chevron-left"></i></a></li>
													</c:if>
													<!-- 현재 페이지가 속한 페이지 그룹 출력 -->
													<c:forEach var="p" begin="${ startPage }" end="${ endPage }"
														step="1">
														<c:if test="${ p eq currentPage }">
															<li class="page-item active"><a class="page-link" href="#">${ p }</a></li>
														</c:if>
														<c:if test="${ p ne currentPage }">
															<c:url var="blf5" value="/mypage.do">
																<c:param name="page" value="${ p }" />
															</c:url>
															<li class="page-item"><a class="page-link" href="${ blf5 }">${ p }</a></li>
														</c:if>
													</c:forEach>
													<!--  다음페이지 그룹으로 이동처리  -->
													<c:if
														test="${ (currentPage +10) > endPage and (currentPage + 10) < maxPage }">
														<c:url var="blf3" value="/mypage.do">
															<c:param name="page" value="${ endPage + 10 }" />
														</c:url>
														<li class="page-item"><a class="page-link" href="${ blf3 }"><i class="bi bi-chevron-right"></i></a></li>
													</c:if>
													<c:if
														test="${ !((currentPage +10) > endPage and (currentPage + 10) < maxPage) }">
														<li class="page-item disabled"><a class="page-link" href=""><i class="bi bi-chevron-right"></i></a></li>
													</c:if>
													<c:if test="${ currentPage eq maxPage }">
														<li class="page-item disabled"><a class="page-link" href=""><i class="bi bi-chevron-double-right"></i></a>
													</c:if>
													<!-- 끝페이지로 이동처리 -->
													<c:if test="${ currentPage < maxPage }">
														<c:url var="blf4" value="/mypage.do">
															<c:param name="page" value="${ maxPage }" />
														</c:url>
														<li class="page-item"><a class="page-link" href="${ blf4 }"><i class="bi bi-chevron-double-right"></i></a>
													</c:if>
												</ul>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<!-- -------------------------------------------------------------------------- -->
					<div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="team-item rounded overflow-hidden">
							<div class="p-4 mt-1">
								<table class="tdd">
									<tr>
										<td width="160px"><h5 class="fw-bold mb-0">스크랩</h5></td>
										<td width="190px"></td>
										<td width="100px" align="right"><b style="color: orange;">${ scrap_count }</b></td>
									</tr>
									<tr height="30px">
										<td colspan="3"><div class="myline" /></td>
									</tr>
									<tr>
										<td colspan="3"></td>
									</tr>
								</table>
								<br>
								<div class="owl-carousel testimonial-carousel wow "
									data-wow-delay="0.1s">
									<c:forEach items="${ requestScope.likelist }" var="b"
										varStatus="status">
										<div class="testimonial-item rounded p-2"
											style="width: 95%; height: 310px; box-shadow: 3px 4px 11px 3px #C3C3C3; margin:12px 3px 15px 3px;">
											<div>
												<table class="p-1" style="margin:5px">
													<tr>
														<td rowspan="3"><div
																style="background-color: lightgray; width: 280px; height: 280px;">
																<div class="photobox">
																	<img class="photo"
																		src="${ pageContext.servletContext.contextPath }/resources/galleryimg/${b.photo_path}" />
																</div>
															</div></td>
														<td
															style="height: 20px; width: 260px; vertical-align: top; text-align: left;">
															<b style="padding-left: 8px; font-size:18px">${ b.hashtag }</b>
														</td>
													</tr>
													<tr>
														<td
															style="height: 220px; width: 260px; vertical-align: top; text-align: left;">
															<div style="padding-left: 8px;">
																<span style="font-size: 16px; opacity: 0.8;">${ b.gallery_content }</span>
															</div>
														</td>
													</tr>
													<tr>
														<td
															style="height: 20px; width: 260px; vertical-align: bottom; text-align: right;">
															<div style="padding-right: 8px;">
																<span style="font-size: 16px; opacity: 0.8;"><b style="opacity:0.5;">${ b.gallery_date }</b></span>
															</div>
														</td>
													</tr>
													
												</table>
											</div>
										</div>
									</c:forEach>

								</div>
								<br> <br>
								<div class="myline"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.1s">
						<div class="team-item rounded overflow-hidden">
							<div class="p-4 mt-1">
								<div class="tab_content">
									<input type="radio" name="tabmenu" id="tab01" checked>
									<label for="tab01">랜드마커 벳지</label> <input type="radio"
										name="tabmenu" id="tab02"> <label for="tab02">등록된
										랜드마크 조회</label>

									<div class="conbox con1">
										<br>
										<div class="myline"></div>
										<br>
										<div style="height: 600px; width: 200px;"></div>

									</div>

									<div class="conbox con2">
										<br>
										<div class="myline"></div>
										<div style="padding: 30px;" align="center">
											<form action="searchHash.do" method="get">
												<div class="search">
													<input id="searchtag" type="text" size="30"
														placeholder="search hashtag..."
														onfocus="this.placeholder=''"
														onblur="this.placeholder='search hashtag...'"
														name="hashtag" /> &nbsp;
													<button id="btn1" class="btn btn-primary" type="submit">search</button>
												</div>
											</form>
										</div>
										<div class="myline"></div>
										<br>

										<div style="height: 500px; width: 200px;"></div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Team End -->


		<!-- Footer Start -->
		<c:import url="/WEB-INF/views/parts/footer.jsp" />
		<!-- Footer End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<c:import url="/WEB-INF/views/parts/foot.jsp" />
	
</body>

</html>