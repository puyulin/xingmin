<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Dashboard - Ace Admin</title>

		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${ctx}/resources/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${ctx}/resources/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="${ctx}/resources/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${ctx}/resources/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${ctx}/resources/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="${ctx}/resources/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${ctx}/resources/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${ctx}/resources/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="${ctx}/resources/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="${ctx}/resources/js/html5shiv.min.js"></script>
		<script src="${ctx}/resources/js/respond.min.js"></script>
		<![endif]-->
		
		<style type="text/css">
			.no-skin .nav-list>li .submenu>li>a{
				background-color: #f8f8fe
			}
			.main-container:before{
				width: 80%;
			}
			.sidebar:before{
				margin-bottom: 58px;
				border-left: 1px solid #E5E5E5;
			}
			.nav-list >li{
				border-left: 1px solid #E5E5E5;
			}
			.footer .footer-inner .footer-content{
				border-top: 1px solid #E5E5E5;
			}
		</style>
	</head>

	<body class="no-skin" style="background-color: #fff">
			<div id="navbar" class="navbar navbar-default  ace-save-state" style="min-height: 75px;background: #fff">
				<div class="navbar-container ace-save-state" id="navbar-container">
					<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
						<span class="sr-only">Toggle sidebar</span>
	
						<span class="icon-bar"></span>
	
						<span class="icon-bar"></span>
	
						<span class="icon-bar"></span>
					</button>
	
					<div class="navbar-header pull-left" >
						<a href="${ctx}" class="navbar-brand" style="width:600px;height:75px;;background: url('${ctx}/resources/images/xingmin/logo.png');background-repeat:no-repeat;" >
							<small>
								<i class="fa fa-leaf"></i>
							</small>
						</a>
					</div>
				</div>
			</div>
		<div class="container">
		
	
			<div class="main-container ace-save-state" id="main-container">
				<script type="text/javascript">
					try{ace.settings.loadState('main-container')}catch(e){}
				</script>
	
				<div id="sidebar" class="sidebar responsive ace-save-state" style="background-color: #f8f8fe">
					<script type="text/javascript">
						try{ace.settings.loadState('sidebar')}catch(e){}
					</script>
	
	
					<ul class="nav nav-list">
						<li class="">
							<a href="#" class="dropdown-toggle" style="background-color: #f8f8fe"> 
								<i class="menu-icon fa fa-desktop"></i>
								<span class="menu-text">
									名字
								</span>
	
							</a>
	
							<b class="arrow"></b>
	
							<ul class="submenu" style="display: block;">
								<c:forEach items="${userList }" var="user">
									<li class="">
										<a href="${ctx}/names/score?id=${user.user_id}">
											<i class="menu-icon fa fa-caret-right"></i>
											${user.name }
										</a>
										<b class="arrow"></b>
									</li>
								</c:forEach>
							</ul>
						</li>
	
					</ul><!-- /.nav-list -->
	
				</div>
				<div class="main-content">
					<div class="main-content-inner">
						<div class="page-content">
						
							
						</div><!-- /.page-content -->
					</div>
					
				</div><!-- /.main-content -->
		</div>
				

			


			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->
		<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

						&nbsp; &nbsp;
						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
					</div>
				</div>
			</div>
		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="${ctx}/resources/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/resources/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx}/resources/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="${ctx}/resources/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="${ctx}/resources/js/jquery-ui.custom.min.js"></script>
		<script src="${ctx}/resources/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${ctx}/resources/js/jquery.easypiechart.min.js"></script>
		<script src="${ctx}/resources/js/jquery.sparkline.index.min.js"></script>
		<script src="${ctx}/resources/js/jquery.flot.min.js"></script>
		<script src="${ctx}/resources/js/jquery.flot.pie.min.js"></script>
		<script src="${ctx}/resources/js/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->
		<script src="${ctx}/resources/js/ace-elements.min.js"></script>
		<script src="${ctx}/resources/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			});
			
			
			
				
			
		</script>
	</body>
</html>
