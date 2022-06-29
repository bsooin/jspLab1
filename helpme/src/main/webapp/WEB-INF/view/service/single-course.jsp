<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jspf" %>
  <body class="single-course-1x">
  
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
							<b><i class="fa fa-phone"></i> (00) 123 456 789</b>
							<b><i class="fa fa-envelope"></i> support@edufair.com</b>
						</div>				
					</div>				
					<div class="col-md-6">
						<div class="top-menu-right">
						
						<a href="#" class="" data-toggle="modal" data-target="#regiater"><i class="fa fa-user"></i> Register</a>
						<a href="#" class="" data-toggle="modal" data-target="#log-in"><i class="fa fa-lock"></i> Login</a>
						
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
												<a href="#" class="edufair-btn-larg btn-block facebook-login"><i class="fa fa-facebook"></i> Register with Facebook </a>
											</div>
											<div class="col-md-12">
												<a href="#" class="edufair-btn-larg btn-block google-login"><i class="fa fa-google"></i> Register with Google </a>
											</div>
											<div class="col-md-12">
												<div class="form-group">									    				    	
													<input type="text" id="name" class="form-control" placeholder="Name" required >
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">									    										    
													<input type="email" class="form-control" id="email1" placeholder="Email" required >
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">									    										    
													<input type="password" class="form-control" id="password1" placeholder="Password" required >
												</div>
											</div>
											<div class="col-md-12">
												<a href="#" class="edufair-btn-larg btn-block"> Submit </a>
											</div>
											<div class="col-md-12 terms-condition">
												<p>Already a member? <a href="#" class="" data-toggle="modal" data-target="#log-in"> Login </a></p>
												<h6>By signing up, you agree to our <a href="#" class=""> Terms of Use and Privacy Policy. </a></h6>
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
												<a href="#" class="edufair-btn-larg btn-block facebook-login"><i class="fa fa-facebook"></i> Login with Facebook </a>
											</div>
											<div class="col-md-12">
												<a href="#" class="edufair-btn-larg btn-block google-login"><i class="fa fa-google"></i> Login with Google </a>
											</div>
											<div class="col-md-12">
												<div class="form-group">									    										    
													<input type="email" class="form-control" id="email" placeholder="Email" required >
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">									    										    
													<input type="password" class="form-control" id="password" placeholder="Password" required >
												</div>
											</div>
											<div class="col-md-12">
												<a href="#" class="edufair-btn-larg btn-block"> Login </a>
											</div>
											<div class="col-md-12 terms-condition">
												<p>Or <a href="#" class=""> Forget Password </a></p>
												<h6>By signing up, you agree to our <a href="#" class=""> Terms of Use and Privacy Policy. </a></h6>
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
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>				
						<i class="fa fa-align-right fa-2"></i>
					  </button>
					  <a class="navbar-brand edufair-brand edufair-light" href="#"><img src="images/edufair-light.png" alt="Logo"></a>
					  <a class="navbar-brand edufair-brand edufair-dark" href="#"><img src="images/edufair.png" alt="Logo"></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  
					  
					  <ul class="nav navbar-nav navbar-right">					
						<li class="dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <i class="fa fa-angle-down"></i></a>
						  <ul class="dropdown-menu">
							<li><a href="online-course-one.html" target="_blank">Online Course One</a></li>
							<li><a href="online-course-two.html" target="_blank">Online Course Two</a></li>
							<li><a href="university-one.html" target="_blank">University One</a></li> 
							<li><a href="university-two.html" target="_blank">University Two</a></li> 
							<li><a href="high-school.html" target="_blank">High School</a></li> 
							<li><a href="kindergarten.html" target="_blank">Kindergarten</a></li> 
						  </ul>
						</li>
						
						<li class="dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Course  <i class="fa fa-angle-down"></i></a>
						  <ul class="dropdown-menu">
							<li><a href="course-one.html">Course One</a></li>			            		            
							<li><a href="course-two.html">Course Two</a></li>
							<li><a href="single-course.html">Course Single</a></li>	
						  </ul>						
						</li>
						
						<li class="dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <i class="fa fa-angle-down"></i></a>
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
						  </ul>
						</li>										

						<li class="dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog <i class="fa fa-angle-down"></i></a>
						  <ul class="dropdown-menu">
							<li><a href="blog.html">Blog </a></li>
							<li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
							<li><a href="single.html">Blog Single</a></li>			            		            
						  </ul>
						</li>
						
						<li><a href="shop.html">Shop</a></li>
						<li><a href="components.html">Component</a></li>						
					  </ul>
					  
					  <div class="edufair-cart hidden-xs">
						<div class="box">
						  <div class="container-2">
							  <span class="icon"><i class="fa fa-search"></i></span>
							  <input type="search" id="search" placeholder="Search..." />
						  </div>
						</div>
						<a href="#"><i class="fa fa-shopping-cart"></i><span class="cart-no">0</span></a>
					  </div>
					  
					</div><!-- /.navbar-collapse -->
					
				  </div><!-- /.container-fluid -->
				</div>
			</nav>			
			<!-- End Main Menu -->
				

			<!-- Start main slider -->
			<div id="carousel-example-generic" class="carousel slide edufair-slide carousel-fade" data-ride="carousel"> 
				<!-- Wrapper for slides -->		   
				<div class="carousel-inner edufair-inner single-inner" role="listbox">									
						<div class="edufair-overlay">
							<img src="images/online-course/online-course2.jpg" alt="slide 1" class="edufair-slider-image edufair-single-image">
							<div class="carousel-caption edufair-caption edufair-single-caption">
								<div class="edufair-slider-middle">
									<div class="container edufair-slider-text">
										<h2 class="fadeInLeft">Guide to Getting Certified</h2>	
										<ol class="breadcrumb edufair-single-breadcrumbs">
										  <li><a href="#">Home</a></li>
										  <li><a href="#">HTML</a></li>
										  <li class="active">Guide to Getting Certified</li>
										</ol>										
									</div>
								</div>
							</div>				  
						</div>
				</div>
				<!-- End main slider -->
			</div>
	
		</div>
		
		
		
		<div class="edufair-course-details-1x padding-top-large">
			<div class="container">
			<img alt="" src="/helpme/upload/${serviceData.service.pImage}">
				<div class="row">
					<div class="col-md-9 sticky-body">					
						<div class="row">							
							<div class="col-md-12 course-details-title">								
								<div class="col-md-4 course-teacher-details">
									<div class="media">
									  <div class="media-body">	
											Teacher Name
									  </div>
									</div>
								</div>			
								<div class="col-md-6 course-details-price">
									<strong>${serviceData.service.price}</strong>
								</div>								
							</div>
							
							<div class="col-md-12 course-banner">
								<img src="images/slide/slide-9.jpg" alt="Avatar">
							</div>
																						
							<div class="col-md-12 course-description">								
								<ul class="nav nav-tabs nav-justified course-description-nav">
									<li class="active"><a href="#description" data-toggle="tab"><i class="fa fa-bookmark"></i> 설명</a></li>
									<li class=""><a href="#review" data-toggle="tab"><i class="fa fa-comments"></i>리뷰</a></li>
								</ul>
								
								<div class="tab-content course-description-tab">
									<div class="tab-pane active fade in" id="description">
										<div class="row">
											<div class="col-md-12 course-description-tab-left sub-content">
												<p>${serviceData.service.sCon}</p>
											</div>
										</div>
									</div>
									
									<div class="tab-pane fade" id="review">
										<div class="review-tab">
											<h2>Reviews </h2>
																						
											<div class="review-tab-top">
										
												<div class="media">
												  <div class="media-left">
													<strong>${reviewPage.starAvg}</strong>
													<span>
														<c:forEach var="i" begin="1" end="${reviewPage.starAvg}" step="1">
															<i class="fa fa-star"></i>
														</c:forEach>
													</span>
												  </div>
												  <div class="media-body">
													<div class="review-progress-bar">
															<div class="single-progress-bar">
																<label>5 stars</label>
																<div class="progress">
																  <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: ${reviewPage.fiveStar}%;">
																  </div>
																</div>
																
															</div>
															<div class="single-progress-bar">
																<label>4 stars</label>
																<div class="progress">
																  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${reviewPage.fourStar}%;">
																  </div>
																</div>
															</div>
															<div class="single-progress-bar">
																<label>3 stars</label>
																<div class="progress">
																  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${reviewPage.threeStar}%;">
																  </div>
																</div>
															</div>
															<div class="single-progress-bar">
																<label>2 stars</label>
																<div class="progress">
																  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${reviewPage.twoStar}%;">
																  </div>
																</div>
															</div>
															<div class="single-progress-bar">
																<label>1 stars</label>
																<div class="progress">
																  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: ${reviewPage.oneStar}%;">
																  </div>
																</div>
															</div>
																									
													</div>										
												   </div>										
												</div>
											</div>

											<c:forEach var="review" items="${reviewPage.content}">
											<div class="instructors-tab">
												<div class="media">
												  <div class="media-body">
														<h4 class="media-heading">${review.writer.id}</h4>													
												  </div>
												</div>
												<p><h2>${review.rTitle}</h2></p>
												<p>${review.rContent}</p>
												
												<c:if test="${member.id == review.writer.id}">
													<p style="text-align:right">
														<a href="review/modify.do?no=${review.rBoardId}"style="font-size:10px;background:white;color:black">리뷰 수정</a>
														<a href="review/delete.do?no=${review.rBoardId}"style="font-size:10px;background:white;color:black">리뷰 삭제</a>
													</p>
												</c:if>
											</div>
											</c:forEach>
											
											<div class="row">
						<div class="col-md-12">
							<div class="text-center padding-top-large">
								<nav class="course-pagination" aria-label="Page navigation">
								  <c:if test="${reviewPage.hasReviews()}">
	<ul class="pagination edufair-pagination">
			<c:if test="${reviewPage.startPage > 5}">
			<li><a href="list.do?pageNo=${reviewPage.startPage - 5}" class="fa fa-angle-left">[이전]</a></li>
			</c:if>
			
			<c:forEach var="pNo" 
					   begin="${reviewPage.startPage}" 
					   end="${reviewPage.endPage}">
			<li><a href="list.do?pageNo=${pNo}">[${pNo}]</a></li>
			</c:forEach>
			
			<c:if test="${reviewPage.endPage < reviewPage.totalPages}">
			<li><a href="list.do?pageNo=${reviewPage.startPage + 5}" class="fa fa-angle-right" >[다음]</a></li>
			</c:if>
	</ul>
</c:if>
								  
								</nav>
							</div>
						</div>
					</div>
											
										</div>
									</div>
								</div><!--end of tab----->
							</div>
							
							
						</div>
					</div>
					
					<div class="col-md-3 sticky-sidebar">						
						<div class="all-course">
							<h2>Course Features</h2>
							<ul>
								<li><i class="fa fa-cube"></i> Lectures <span> 16 </span></li>
								<li><i class="fa fa-puzzle-piece"></i> Quizzes <span> 5 </span></li>
								<li><i class="fa fa-clock-o"></i> Duration <span> 3 hours </span></li>
								<li><i class="fa fa-level-up"></i> Skill level <span> All level </span></li>
								<li><i class="fa fa-language"></i> Language <span> English </span></li>
								<li><i class="fa fa-users"></i> Students <span> 250 </span></li>
								<li><i class="fa fa-check-square-o"></i> Assessments <span> Self </span></li>													
							</ul>
						</div>						
					</div>
					
				</div>
			</div>
		</div>
		
		<p style="text-align:center">
		<a href="service/modify.do?no=${service.sNo}"style="font-size:10px;background:white;color:black">서비스 수정</a>
		<a href="service/delete.do?no=${service.sNo}"style="font-size:10px;background:white;color:black">서비스 삭제</a>
		</p>
	<!-- 
		<!-- Start edufair related course -->
		<div class="edufair-related-course-1x">
			<div class="container">			
				<div class="row">
					<div class="col-md-12">
						<h2 class="edufair-main-title">Related Courses</h2>
						
						Controls
						<a class="left carousel-control  edufair-course-controll-1x" href="#course-carousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
						<a class="right carousel-control edufair-course-controll-1x" href="#course-carousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
				
					</div>
				</div>
				
				<div id="course-carousel" class="carousel slide carousel-fade" data-ride="carousel">
					Wrapper for slides
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="row">					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course2.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member1.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>Docker system for the Absolute Beginner</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course3.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member2.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>Oracle Architecture Course Administration Maintainance</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course4.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member3.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>The Complete Guide to Getting Certified</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course5.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member3.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>Computer Network Cabling: Ethernet Wiring</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>							
									
							</div>
						</div>
						
						<div class="item">
							<div class="row">					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course6.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member5.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>Salesforce Visual Workflow Complete course</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course7.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member6.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>Cisco Packet Tracer Network Simulator</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course8.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member7.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>System Center Configuration Manager</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
											</div>
										</div>									
									</div>							
								</div>					
								<div class="col-md-3">						
									<div class="edufair-related-course">						
										<div class="edufair-related-course-overlay">
										  <img src="images/online-course/online-course9.jpg" alt="Avatar" class="edufair-related-course-image">
										  <div class="edufair-related-course-middle">
											 
										  </div>
										</div>
										
										<div class="related-course-content">
											<div class="media">
											  <div class="media-left">
												<img src="images/online-course/member8.jpg" alt="Avatar">
											  </div>
											  <div class="media-body">
												<a href="#" class="">
													<h4 class="media-heading">Teacher Name</h4>
													<span>Head of the Department</span>
												</a>
											  </div>
											</div>	
											<a href="#" class="">
												<h3>AWS Certification Exam Preparation Workshop</h3>
											</a>
											<div class="related-course-footer">
												<i class="fa fa-users"></i> <span>255</span>
												<i class="fa fa-heart"></i> <span>50</span>
												<strong>Free</strong>
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
		End edufair related course		 -->

			<%@ include file="../include/footer.jspf" %>