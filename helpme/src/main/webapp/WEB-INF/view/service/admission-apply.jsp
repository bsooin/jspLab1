<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jspf" %>
<body class="admission-apply-1x">

	<!-- Preloader -->
	<div id="fakeloader"></div>

	<div class="edufair-container">

		<!-- Top menu -->
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top-menu-left">
							<p>Need help?</p>
							<b><i class="fa fa-phone"></i> (00) 123 456 789</b> <b><i
								class="fa fa-envelope"></i> support@edufair.com</b>
						</div>
					</div>
					<div class="col-md-6">
						<div class="top-menu-right">
							<a href="#" class="" data-toggle="modal" data-target="#regiater"><i
								class="fa fa-user"></i> Register</a> <a href="#" class=""
								data-toggle="modal" data-target="#log-in"><i
								class="fa fa-lock"></i> Login</a>

						</div>
					</div>

					<div class="col-md-12">
						<!-- Modal -->
						<div class="modal fade" id="regiater" tabindex="-1" role="dialog">
							<div class="modal-dialog modal-sm" role="document">
								<div class="modal-content">

									<div class="modal-body">
										<div class="edufair-subscription-1x">
											<div class="edufair-subscription-title-1x">
												<h3>Register Now</h3>
											</div>
											<div class="edufair-subscription-form-1x">
												<form action="php/contact-form.php" method="POST">
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block facebook-login"><i
															class="fa fa-facebook"></i> Register with Facebook </a>
													</div>
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block google-login"><i
															class="fa fa-google"></i> Register with Google </a>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="text" id="name" class="form-control"
																placeholder="Name" required>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="email" class="form-control" id="email1"
																placeholder="Email" required>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="password" class="form-control"
																id="password1" placeholder="Password" required>
														</div>
													</div>
													<div class="col-md-12">
														<a href="#" class="edufair-btn-larg btn-block"> Submit
														</a>
													</div>
													<div class="col-md-12 terms-condition">
														<p>
															Already a member? <a href="#" class=""
																data-toggle="modal" data-target="#log-in"> Login </a>
														</p>
														<h6>
															By signing up, you agree to our <a href="#" class="">
																Terms of Use and Privacy Policy. </a>
														</h6>
													</div>
												</form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>

						<!-- Modal -->
						<div class="modal fade" id="log-in" tabindex="-1" role="dialog">
							<div class="modal-dialog modal-sm" role="document">
								<div class="modal-content">

									<div class="modal-body">
										<div class="edufair-subscription-1x">
											<div class="edufair-subscription-title-1x">
												<h3>Login</h3>
											</div>
											<div class="edufair-subscription-form-1x">
												<form action="php/contact-form.php" method="POST">
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block facebook-login"><i
															class="fa fa-facebook"></i> Login with Facebook </a>
													</div>
													<div class="col-md-12">
														<a href="#"
															class="edufair-btn-larg btn-block google-login"><i
															class="fa fa-google"></i> Login with Google </a>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="email" class="form-control" id="email2"
																placeholder="Email" required>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="password" class="form-control"
																id="password2" placeholder="Password" required>
														</div>
													</div>
													<div class="col-md-12">
														<a href="#" class="edufair-btn-larg btn-block"> Login
														</a>
													</div>
													<div class="col-md-12 terms-condition">
														<p>
															Or <a href="#" class=""> Forget Password </a>
														</p>
														<h6>
															By signing up, you agree to our <a href="#" class="">
																Terms of Use and Privacy Policy. </a>
														</h6>
													</div>

												</form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- End top menu -->

		<!-- Start Main Nav -->
		<div class="edufair-header edufair-course-header">
			<nav class="navbar navbar-default edufair-nav">
				<div class="container">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <i
									class="fa fa-align-right fa-2"></i>
							</button>
							<a class="navbar-brand edufair-brand edufair-light" href="#"><img
								src="images/edufair-light.png" alt="Logo"></a> <a
								class="navbar-brand edufair-brand edufair-dark" href="#"><img
								src="images/edufair.png" alt="Logo"></a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">


							<ul class="nav navbar-nav navbar-right">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Home <i class="fa fa-angle-down"></i></a>
									<ul class="dropdown-menu">
										<li><a href="online-course-one.html" target="_blank">Online
												Course One</a></li>
										<li><a href="online-course-two.html" target="_blank">Online
												Course Two</a></li>
										<li><a href="university-one.html" target="_blank">University
												One</a></li>
										<li><a href="university-two.html" target="_blank">University
												Two</a></li>
										<li><a href="high-school.html" target="_blank">High
												School</a></li>
										<li><a href="kindergarten.html" target="_blank">Kindergarten</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Course <i class="fa fa-angle-down"></i></a>
									<ul class="dropdown-menu">
										<li><a href="course-one.html">Course One</a></li>
										<li><a href="course-two.html">Course Two</a></li>
										<li><a href="single-course.html">Course Single</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
									<ul class="dropdown-menu">
										<li><a href="admission-apply.html">Admission Apply</a></li>
										<li><a href="vice-chancellor.html">Vice Chancellor</a></li>
										<li><a href="about-us.html">About Us</a></li>
										<li><a href="offer.html">Offer</a></li>
										<li><a href="schollarship.html">Schollarship</a></li>
										<li><a href="atletics.html">Atletics</a></li>
										<li><a href="events-one.html">Events</a></li>
										<li><a href="gallery.html">Gallery</a></li>
										<li><a href="notice.html">Notice</a></li>
										<li><a href="notice-details.html">Notice Single</a></li>
										<li><a href="carrer.html">Carrer</a></li>
										<li><a href="carrer-details.html">Carrer Single</a></li>
										<li><a href="contact-us.html">Contact Us</a></li>
										<li><a href="teacher.html">Teachers</a></li>
										<li><a href="commingsoon.html">Comming Soon</a></li>
										<li><a href="404.html">404 Page</a></li>
									</ul></li>

								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Blog <i class="fa fa-angle-down"></i></a>
									<ul class="dropdown-menu">
										<li><a href="blog.html">Blog </a></li>
										<li><a href="blog-right-sidebar.html">Blog Right
												Sidebar</a></li>
										<li><a href="single.html">Blog Single</a></li>
									</ul></li>

								<li><a href="shop.html">Shop</a></li>
								<li><a href="components.html">Component</a></li>
							</ul>

							<div class="edufair-cart hidden-xs">
								<div class="box">
									<div class="container-2">
										<span class="icon"><i class="fa fa-search"></i></span> <input
											type="search" id="search" placeholder="Search..." />
									</div>
								</div>
								<a href="#"><i class="fa fa-shopping-cart"></i><span
									class="cart-no">0</span></a>
							</div>

						</div>
						<!-- /.navbar-collapse -->

					</div>
					<!-- /.container-fluid -->
				</div>
			</nav>
			<!-- End Main Menu -->

			<!-- Start main slider -->
			<div id="carousel-example-generic"
				class="carousel slide edufair-slide carousel-fade"
				data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner edufair-inner single-inner"
					role="listbox">
					<div class="edufair-overlay">
						<img src="images/slide/slide-9.jpg" alt="slide 1"
							class="edufair-slider-image edufair-single-image">
						<div
							class="carousel-caption edufair-caption edufair-single-caption">
							<div class="edufair-slider-middle">
								<div class="container edufair-slider-text">
									<h2 class="fadeInLeft">Admission</h2>
									<ol class="breadcrumb edufair-single-breadcrumbs">
										<li><a href="#">Home</a></li>
										<li><a href="#">Admission</a></li>
									</ol>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End main slider -->
			</div>

		</div>


		<!-- Start edufair About University -->

		<div class="container">
		
			<h3>재능등록</h3>
			
			<img src="<%=request.getContextPath()%>/pages/images/one-line.png">
			
			<form method="post" enctype="multipart/form-data" action="write.do">
				
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					class="boardInsert">
					<colgroup>
						<col width="160">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th>* 카테고리</th>
							<td><select name="categoryNo"style="width: 150px;">
									<option value="0">선택</option>
									<option value="1">디자인/그래픽</option>
									<option value="2">바이럴/마케팅/광고</option>
									<option value="3">문서/서식/레포트</option>
									<option value="4">컴퓨터/개발</option>
									<option value="5">음악/영상</option>
									<option value="6">생활/대행/상담</option>
									<option value="7">노하우/여행</option>
									<option value="8">비즈니스/창업/사업</option>
									<option value="9">번역/외국어</option>
									<option value="10">선물/핸드메이드/DIY</option>
							</select> 
						
						</tr>
						<tr>
							<th>* 재능 제목</th>
							<td><input type="text" name="sName" style="width: 80%;"
								value="" maxlength="30"
								placeholder="예) 나만의 재능"><span>(30자 이내)</span></td>
						</tr>
						<tr>
							<th>* 재능가격</th>
							<td><input type="text" name="price"
								style="width: 80px; text-align: right;"value=""
								maxlength="7" onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');">원</td>
						</tr>

						
						<tr>
							<th>* 메인이미지 등록</th>
							<td><input type="file" name="pImage"
								style="width: 20%;">
								<p>* 메인 이미지는 나의 재능을 가장 잘 표현할 수
									있는 대표 이미지로 설정합니다. (855*600 최적화 / 움직이는 gif 사용금지)</p></td>
						</tr>
						<tr>
							<th>* 재능상세내용</th>
							<td><input type="text" name="sCon"
									style="width: 97%; height: 400px;"
									placeholder="본인의 재능을 최대한 자세하게 설명합니다. 명료하고 신뢰할 수 있는 문구로 작성해 주시고 구매자가 설명만 읽고 어떤 재능인지 쉽게 파악할 수 있도록 작성하는 것이 중요합니다."></td>
						</tr>
					
					</tbody>
				</table>
				
				<div>&nbsp;</div>
				<p>
					<button type="submit" style="background:white; margin: 0 0 0 50%;font-size:18px">재능등록신청</button>
				</p>
			</form>

		</div>




	<%@ include file="../include/footer.jspf" %>