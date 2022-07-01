<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jspf" %>
  <body>
  
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
							<img src="images/university/video-bg1.jpg" alt="slide 1" class="edufair-slider-image edufair-single-image">
							<div class="carousel-caption edufair-caption edufair-single-caption">
								<div class="edufair-slider-middle">
									<div class="container edufair-slider-text">
										<h2 class="fadeInLeft">Our Products</h2>	
										<ol class="breadcrumb edufair-single-breadcrumbs">
										  <li><a href="#">Home</a></li>
										  <li><a href="#">Shop</a></li>										 
										</ol>										
									</div>
								</div>
							</div>				  
						</div>
				</div>
				<!-- End main slider -->
			</div>
	
		</div>
		
		<div class="online-course-category-1x  margin-bottom-large" style="margin:20px 0px 0px 0px">
			<div class="container">
				<div class="row">				
					
					<div class="online-category">
					
						<div class="col-md-2">
							<div class="single-kindergarten-features single-kindergarten-features-1x">
								<img src="images/kindergarten/icon1.png" alt="" />
								<h4><a href="#">Science Lab</a></h4>								
							</div>
						</div>
						<div class="col-md-2">
							<div class="single-kindergarten-features single-kindergarten-features-2x">
								<img src="images/kindergarten/icon2.png" alt="" />
								<h4><a href="#">Funny</a></h4>								
							</div>
						</div>
						<div class="col-md-2">
							<div class="single-kindergarten-features single-kindergarten-features-3x">
								<img src="images/kindergarten/icon9.png" alt="" />
								<h4><a href="#">Learn Music</a></h4>								
							</div>
						</div>
						<div class="col-md-2">
							<div class="single-kindergarten-features single-kindergarten-features-4x">
								<img src="images/kindergarten/icon4.png" alt="" />
								<h4><a href="#">Computer</a></h4>								
							</div>
						</div>							
						<div class="col-md-2">
							<div class="single-kindergarten-features single-kindergarten-features-5x">
								<img src="images/kindergarten/icon7.png" alt="" />
								<h4><a href="#">Web Design</a></h4>								
							</div>
						</div>	
						<div class="col-md-2">
							<div class="single-kindergarten-features single-kindergarten-features-6x">
								<img src="images/kindergarten/icon8.png" alt="" />
								<h4><a href="#">Photoshop</a></h4>								
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>

		
		<!-- Start shop -->
		<div class="container wow fadeIn"> <!-- Start Container -->
			<div class="row">
				<div class="col-md-12">

					<div class="row">
						<div class="padding-top-large">
							<div class="col-md-3 shop-category">
							  <form>
								<div class="form-group">						      
							      <select class="form-control" id="sel1">
							        <option>Short by popularity</option>
							        <option>Short by avarage rating</option>
							        <option>Short by price</option>
							        <option>Short by latest product</option>
							      </select>

							    </div>
							  </form>
							</div>
						</div>
					</div>

					<div class="row padding-top-middle">
					
					<c:forEach var="service" items="${servicePage.content}">
						<div class="col-md-3">
							<div class="edufair-shop-container">
							 <a href="read.do?no=${service.getSNo()}&pageNo=${servicePage.currentPage}">
							 <img src="/helpme/upload/${service.pImage}" class="edufair-shop-image"></a>
							</div>
							<div class="edufair-shop-item-text">
								<a href="read.do?no=${service.getSNo()}&pageNo=${servicePage.currentPage}">${service.getSName()}</a>
								<p>${service.categoryNo}</p>
								<b>${service.price}원</b>
							</div>
						</div>
					</c:forEach>

					</div>


						<div class="row">
						<div class="col-md-12">
							<div class="text-center padding-top-large">
								<nav class="course-pagination" aria-label="Page navigation">
								  
								  <c:if test="${servicePage.hasServices()}">
	<ul class="pagination edufair-pagination">
			<c:if test="${servicePage.startPage > 5}">
			<li><a href="list.do?pageNo=${servicePage.startPage - 5}" class="fa fa-angle-left">[이전]</a></li>
			</c:if>
			
			<c:forEach var="pNo" 
					   begin="${servicePage.startPage}" 
					   end="${servicePage.endPage}">
			<li><a href="list.do?pageNo=${pNo}">[${pNo}]</a></li>
			</c:forEach>
			
			<c:if test="${servicePage.endPage < servicePage.totalPages}">
			<li><a href="list.do?pageNo=${servicePage.startPage + 5}" class="fa fa-angle-right" >[다음]</a></li>
			</c:if>
	</ul>
</c:if>
								  
								</nav>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- End Shop -->		
		<p style="text-align:center">
		<a href="service/write.do"style="font-size:10px;background:white;color:black">서비스 작성</a>
		</p>
	
	<%@ include file="../include/footer.jspf" %>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	