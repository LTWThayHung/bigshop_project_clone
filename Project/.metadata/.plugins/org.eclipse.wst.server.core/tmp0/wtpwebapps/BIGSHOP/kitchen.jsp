<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Big store a Ecommerce Online Shopping Category Flat
	Bootstrap Responsive Website Template | Kitchen :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords"
	content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700'
	rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!---//End-rate---->

</head>
<body>
	<a href="offer.jsp"><img src="images/download.png"
		class="img-head" alt=""></a>
	<div class="header">

		<div class="container">

				<div class="logo">
				<h1>
					<a href="index.jsp"><b>T<br>H<br>E
					</b>Big Store<span>The Best Supermarket</span></a>
				</h1>
			</div>
			<!--begin of menu-->
    <jsp:include page="/Menu.jsp"></jsp:include>
    <!--end of menu-->


			<div class="nav-top">
				<nav class="navbar navbar-default">

					<div class="navbar-header nav_2">
						<button type="button"
							class="navbar-toggle collapsed navbar-toggle1"
							data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>


					</div>
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav ">
							<c:forEach items= "${listAllCategory}" var = "c"> 
							<li><a href="category?cid=${c.getCid()}" class=" hyper"><span>${c.cname}</span></a>
							</li>
							</c:forEach>


							<li><a href="contact.jsp" class="hyper"><span>Contact
										Us</span></a></li>
						</ul>
					</div>
				</nav>
				<div class="cart">

					<span class="fa fa-shopping-cart my-cart-icon"><span
						class="badge badge-notify my-cart-badge"></span></span>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
	</div>
	<!---->

	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<a href="kitchen.jsp"> <img class="first-slide"
					src="images/ba-hh.jpg" alt="First slide"></a>

			</div>
			<div class="item">
				<a href="care.jsp"> <img class="second-slide "
					src="images/ba-kc.jpg" alt="Second slide"></a>

			</div>
			<div class="item">
				<a href="hold.jsp"><img class="third-slide "
					src="images/ba-pers.jpg" alt="Third slide"></a>

			</div>
		</div>

	</div>
	<!-- /.carousel -->

	
	
	<!-- <script>
		$(document).ready(function() {
			// Bắt sự kiện click vào ảnh sản phẩm
			$('.offer-img').click(function() {
				var productId = $(this).data('id'); // Lấy ID sản phẩm từ data-id
				var modalId = "#myModal" + productId; // Xác định ID của modal tương ứng

				// Thực hiện cập nhật thông tin sản phẩm trong modal
				// Ví dụ: sử dụng AJAX để lấy thông tin sản phẩm từ server và cập nhật vào modal

				$.ajax({
					url : '/getProductInfo', // Đường dẫn để lấy thông tin sản phẩm từ server
					method : 'GET',
					data : {
						productId : productId
					}, // Truyền ID sản phẩm để lấy thông tin tương ứng
					success : function(response) {
						// Cập nhật thông tin sản phẩm trong modal
						$(modalId + ' .modal-content').html(response);
					},
					error : function(error) {
						console.log("Đã xảy ra lỗi: ", error);
					}
				});
			});
		});
	</script> -->
	

	<!--content-->
	<div class="product">
		<div class="container">
			<div class="spec ">
				<h3>Products</h3>
				<div class="ser-t">
					<b></b> <span><i></i></span> <b class="line"></b>
				</div>
			</div>
			<div class=" con-w3l agileinf">'
			
			<!-- tai len danh sach san pham la kitchen -->
			<c:forEach var="listKC" items="${sessionScope.listKitchen}">
			<div class="col-md-3 pro-1">
					<div class="col-m">
						<a href="#" data-toggle="modal" data-target="#myModal${listKC.id}"
							data-id="${listKC.id}" > <img src="${listKC.image}"
							class="img-responsive" alt="">
						</a>
						<div class="mid-1">
							<div class="women">
								<h6>
									<a href="single.jsp">${listKC.title}</a>
								</h6>
							</div>
							<div class="mid-2">
								<p>
									<label>$${listKC.price}</label><em class="item_price">$${listKC.discount_price}</em>
								</p>
								<div class="block">
									<div class="starbox small ghosting"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="add">
								<button class="btn btn-danger my-cart-btn my-cart-b"
									data-id="24" data-name="Wheat" data-summary="summary 24"
									data-price="6.00" data-quantity="1"
									data-image="images/of24.png">Add to Cart</button>
							</div>
						</div>
					</div>
				</div>
			
			</c:forEach>	
		
			
				<!-- Modal sẽ hiển thị thông tin sản phẩm -->
					<c:forEach var="listKC" items="${sessionScope.listKitchen}">
						<div class="modal fade" id="myModal${listKC.id}" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<!-- Nội dung của modal -->
								<div class="modal-content modal-info">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body modal-spa">
										<div class="col-md-5 span-2">
											<div class="item">
												<img src="${listKC.image}" class="img-responsive" alt="">
											</div>
										</div>
										<div class="col-md-7 span-1 ">
											<h3>${listKC.title}</h3>
											<p class="in-para">${listKC.description}</p>
											<div class="price_single">
												<span class="reducedfrom "><del>$${listKC.price}
													</del>$${listKC.discount_price}</span>

												<div class="clearfix"></div>
											</div>
											<div class="add-to">
												<button class="btn btn-danger my-cart-btn my-cart-btn1 "
													data-id="1" data-name="Moong" data-summary="summary 1"
													data-price="1.50" data-quantity="1"
													data-image="${listKC.image}">Add to Cart</button>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>

								</div>
							</div>
						</div>
					</c:forEach>
				
				<!--  -->

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-grid">
				<h3>About Us</h3>
				<p>Nam libero tempore, cum soluta nobis est eligendi optio
					cumque nihil impedit quo minus id quod maxime placeat facere
					possimus.</p>
			</div>
			<div class="col-md-3 footer-grid ">
				<h3>Menu</h3>
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="kitchen.jsp">Kitchen</a></li>
					<li><a href="care.jsp">Personal Care</a></li>
					<li><a href="hold.jsp">Household</a></li>
					<li><a href="contact.jsp">Contact</a></li>
				</ul>
			</div>
			<div class="col-md-3 footer-grid ">
				<h3>Customer Services</h3>
				<ul>
					<li><a href="shipping.jsp">Shipping</a></li>
					<li><a href="terms.jsp">Terms & Conditions</a></li>
					<li><a href="faqs.jsp">Faqs</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					<li><a href="offer.jsp">Online Shopping</a></li>

				</ul>
			</div>
			<div class="col-md-3 footer-grid">
				<h3>My Account</h3>
				<ul>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="signup.jsp">Sign Up</a></li>
					<li><a href="wishlist.jsp">Wishlist</a></li>

				</ul>
			</div>
			<div class="clearfix"></div>
			<div class="footer-bottom">
				<h2>
					<a href="index.jsp"><b>T<br>H<br>E
					</b>Big Store<span>The Best Supermarket</span></a>
				</h2>
				<p class="fo-para">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris</p>
				<ul class="social-fo">
					<li><a href="#" class=" face"><i class="fa fa-facebook"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" twi"><i class="fa fa-twitter"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" pin"><i class="fa fa-pinterest-p"
							aria-hidden="true"></i></a></li>
					<li><a href="#" class=" dri"><i class="fa fa-dribbble"
							aria-hidden="true"></i></a></li>
				</ul>
				<div class=" address">
					<div class="col-md-4 fo-grid1">
						<p>
							<i class="fa fa-home" aria-hidden="true"></i>12K Street , 45
							Building Road Canada.
						</p>
					</div>
					<div class="col-md-4 fo-grid1">
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i>+1234 758 839 ,
							+1273 748 730
						</p>
					</div>
					<div class="col-md-4 fo-grid1">
						<p>
							<a href="mailto:info@example.com"><i class="fa fa-envelope-o"
								aria-hidden="true"></i>info@example1.com</a>
						</p>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
			<div class="copy-right">
				<p>
					&copy; 2016 Big store. All Rights Reserved | Design by <a
						href="http://w3layouts.com/"> W3layouts</a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer-->

	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //smooth scrolling -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	<script type="text/javascript">
		$(function() {

			var goToCartIcon = function($addTocartBtn) {
				var $cartIcon = $(".my-cart-icon");
				var $image = $(
						'<img width="30px" height="30px" src="'
								+ $addTocartBtn.data("image") + '"/>').css({
					"position" : "fixed",
					"z-index" : "999"
				});
				$addTocartBtn.prepend($image);
				var position = $cartIcon.position();
				$image.animate({
					top : position.top,
					left : position.left
				}, 500, "linear", function() {
					$image.remove();
				});
			}

			$('.my-cart-btn').myCart({
				classCartIcon : 'my-cart-icon',
				classCartBadge : 'my-cart-badge',
				affixCartIcon : true,
				checkoutCart : function(products) {
					$.each(products, function() {
						console.log(this);
					});
				},
				clickOnAddToCart : function($addTocart) {
					goToCartIcon($addTocart);
				},
				getDiscountPrice : function(products) {
					var total = 0;
					$.each(products, function() {
						total += this.quantity * this.price;
					});
					return total * 1;
				}
			});

		});
	</script>

</body>
</html>