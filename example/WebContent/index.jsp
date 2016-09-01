<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Background video - fullPage.js</title>
	<meta name="author" content="Shuim Car" />
	<meta name="description" content="fullPage full-screen backgrounds." />
	<meta name="keywords"  content="fullpage,jquery,demo,screen,fullscreen,backgrounds,full-screen" />
	<meta name="Resource-type" content="Document" />


	<link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css" />
	<link rel="stylesheet" type="text/css" href="css/examples.css" />
	<style>

	/* Style for our header texts
	* --------------------------------------- */
	h1{
		font-size: 5em;
		font-family: arial,helvetica;
		color: #fff;
		margin:0;
		padding:0;
	}

	/* Centered texts in each section
	* --------------------------------------- */
	.section{
		text-align:center;
		overflow: hidden;
	}

	#myVideo{
		position: absolute;
		right: 0;
		bottom: 0;
		top:0;
		right:0;
		width: 100%;
		height: 100%;
		background-size: 100% 100%;
 		background-color: black; /* in case the video doesn't fit the whole page*/
  		background-image: /* our video */;
  		background-position: center center;
  		background-size: contain;
   		object-fit: cover; /*cover video background */
   		z-index:3;
	}



	/* Layer with position absolute in order to have it over the video
	* --------------------------------------- */
	#section0 .layer{
		position: absolute;
		z-index: 4;
		width: 100%;
		left: 0;
		top: 43%;
	}

	/*solves problem with overflowing video in Mac with Chrome */
	#section0{
		overflow: hidden;
	}


	/* Bottom menu
	* --------------------------------------- */
	#infoMenu li a {
		color: #fff;
	}
	</style>

	<!--[if IE]>
		<script type="text/javascript">
			 var console = { log: function() {} };
		</script>
	<![endif]-->

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

	<script type="text/javascript" src="js/scrolloverflow.js"></script>

	<script type="text/javascript" src="js/jquery.fullPage.js"></script>
	<script type="text/javascript" src="js/examples.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#fullpage').fullpage({
				verticalCentered: true,
				sectionsColor: ['#1bbc9b', '#4BBFC3', '#7BAABE'],
				afterRender: function(){


					//playing the video
					$('video').get(0).play();
				}
			});
		});
	</script>

</head>
<body>

<select id="demosMenu">
  <option selected>Choose Demo</option>
  <option id="backgrounds">Background images</option>
  <option id="backgroundVideo">Background video</option>
  <option id="gradientBackgrounds">Gradient backgrounds</option>
  <option id="backgroundsFixed">Fixed fullscreen backgrounds</option>
  <option id="looping">Looping</option>
  <option id="noAnchor">No anchor links</option>
  <option id="scrollingSpeed">Scrolling speed</option>
  <option id="easing">Easing</option>
  <option id="callbacks">Callbacks</option>
  <option id="css3">CSS3</option>
  <option id="continuous">Continuous scrolling</option>
  <option id="normalScroll">Normal scrolling</option>
  <option id="scrollBar">Scroll bar enabled</option>
  <option id="scrolling">Scroll inside sections and slides</option>
  <option id="navigationV">Vertical navigation dots</option>
  <option id="navigationH">Horizontal navigation dots</option>
  <option id="fixedHeaders">Fixed headers</option>
  <option id="apple">Apple iPhone demo (animations)</option>
  <option id="oneSection">One single section</option>
  <option id="responsiveHeight">Responsive Height</option>
  <option id="responsiveWidth">Responsive Width</option>
  <option id="methods">Methods</option>
</select>

<div id="fullpage">
	<div class="section " id="section0">
		<video autoplay loop muted id="myVideo">
			<source src="images/vid.mp4" type="video/mp4" controls loop muted autoplay>
			<source src="images/flowers.webm" type="video/webm">
		</video>
		<div class="layer">
			<h1>fullPage.js videos</h1>
		</div>
	</div>
	<div class="section" id="section1">
	    <div class="slide" id="slide1"><h1><img src = "images/bg1.jpg"></h1></div>
	    <div class="slide" id="slide2"><h1><img src = "images/bg2.jpg"></h1></div>
	    <div class="slide" id="slide3"><h1>Totally customizable<img src = "images/bg3.jpg"></h1></div>
	    <div class="slide" id="slide4"><h1>Totally customizable<img src = "images/bg4.jpg"></h1></div>
	    <div class="slide" id="slide5"><%@include file="include1.jsp" %></div>
	</div>
	<div class="section" id="section2"><h1>Lovely images <br />for a lovely page</h1></div>
	<div class="section" id="section3"><h1>One Image = One thousand words</h1></div>
</div>

</body>
</html>