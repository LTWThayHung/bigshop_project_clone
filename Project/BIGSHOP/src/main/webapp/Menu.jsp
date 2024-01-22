<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
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
	media="screen" />
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
</head>
<body>
	<div class="head-t">
		<ul class="card">
		<c:if test="${sessionScope.acc.isAdmin == 1 }">
			<li><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>Manager Account</a></li>
			</c:if>
			<c:if test="${sessionScope.acc.isSell == 1 }">
			<li><a href="login.jsp"><i class="fa fa-user" aria-hidden="true"></i>Manager Product</a></li>
			</c:if>
			<c:if test="${sessionScope.acc !=  null}">
				<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>Hello
						${sessionScope.acc.user}</a></li>
			</c:if>
			<li><a href="wishlist.jsp"><i class="fa fa-heart"
					aria-hidden="true"></i>Wishlist</a></li>
			<c:if test="${sessionScope.acc !=  null}">
				<li><a href="logout"><i class="fa fa-user"
						aria-hidden="true"></i>Logout</a></li>
			</c:if>
			<c:if test="${sessionScope.acc ==  null}">
				<li><a href="login.jsp"><i class="fa fa-user"
						aria-hidden="true"></i>Login</a></li>
				<li><a href="signup.jsp"><i class="fa fa-arrow-right"
						aria-hidden="true"></i>Sign Up</a></li>
			</c:if>
			<li><a href="about.jsp"><i class="fa fa-file-text-o"
					aria-hidden="true"></i>Order History</a></li>
			<li><a href="shipping.jsp"><i class="fa fa-ship"
					aria-hidden="true"></i>Shipping</a></li>
		</ul>
	</div>

	<div class="header-ri">
		<ul class="social-top">
			<li><a href="#" class="icon facebook"><i
					class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
			<li><a href="#" class="icon twitter"><i
					class="fa fa-twitter" aria-hidden="true"></i><span></span></a></li>
			<li><a href="#" class="icon pinterest"><i
					class="fa fa-pinterest-p" aria-hidden="true"></i><span></span></a></li>
			<li><a href="#" class="icon dribbble"><i
					class="fa fa-dribbble" aria-hidden="true"></i><span></span></a></li>
		</ul>
	</div>

</body>
</html>