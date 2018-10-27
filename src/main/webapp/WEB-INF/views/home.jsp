<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>取名，姓名测算</title>
		<link rel="stylesheet" href="${ctx }/resources/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${ctx }/resources/font-awesome/4.5.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="${ctx }/resources/css/fonts.googleapis.com.css" />
		<link rel="stylesheet" href="${ctx }/resources/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${ctx }/resources/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="${ctx }/resources/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${ctx }/resources/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${ctx }/resources/css/ace-ie.min.css" />
		<![endif]-->
		
		<link rel="stylesheet" href="${ctx }/resources/css/bootstrap-datepicker3.min.css" />
		<link rel="stylesheet" href="${ctx }/resources/css/bootstrap-timepicker.min.css" />
		<link rel="stylesheet" href="${ctx }/resources/css/daterangepicker.min.css" />
		<link rel="stylesheet" href="${ctx }/resources/css/bootstrap-datetimepicker.min.css" />
		
		
		<!-- 图片效果 -->
		<link href="${ctx }/resources/home/css/css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="${ctx }/resources/home/css/normalize.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/resources/home/css/demo.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/resources/home/css/set2.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/resources/home/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="${ctx }/resources/home/css/demoadpacks.css">
		
		
		<script src="${ctx }/resources/jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
		<!-- ace settings handler -->
		<script src="${ctx }/resources/js/ace-extra.min.js"></script>
		<script src="${ctx }/resources/js/bootstrap-datepicker.min.js"></script>
		<script src="${ctx }/resources/js/bootstrap-timepicker.min.js"></script>
</head>
<body>
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
			<!-- <header class="codrops-header">

				<h1>本平台提供免费的姓名分析打分，宝宝取名服务 </h1>

			</header> -->

			<div class="content">
				<div class="grid">

					<figure class="effect-ming">

						<img src="${ctx}/resources/home/css/9.jpg" alt="img09">

						<figcaption>

							<h2><span>姓名 </span>批卦测算</h2>

							<p>免费姓名测试打分通过您的姓名分析您的性格、意志、事业、家庭、婚姻、子女、社交、精神、财运、健康、老运等诸多与您命运息息相关的内容.</p>

							<a href="#xingmin">View more</a>

						</figcaption>			

					</figure>

					<figure class="effect-ming">

						<img src="${ctx}/resources/home/css/8.jpg" alt="img08">

						<figcaption>

							<h2><span>宝宝</span>免费取名</h2>

							<p>运用五格数理佳，命理三才吉，字形，字意，音韵的精心筛选.</p>

							<a href="#qimin">View more</a>

						</figcaption>			

					</figure>

				</div>


			</div>
	</div>
	<div class="content">
			<div class="tabbable">
				<div class="tab-content" style="border: 3px solid #337ab7ed;">
					<div id="home" class="tab-pane fade in active">
						<p style="font-size: 20px;color: #174609;">优选起名网站综合其他测字算命网站算法，提供友好的用户体验和免费的：生辰八字算命，四柱五行算命查询、姓名测试打分、宝宝起名。我們承諾絕不收取任何费用，如何您认可我们的服务，欢迎使用和推荐给其他亲戚朋友。</p>
					</div>

				</div>
			</div>
	</div>
	<div class="content" id="xingmin" style="margin-top: 20px;">
			<div class="tabbable">
				<div class="tab-content" style="border: 3px solid #337ab7ed;">
					<div class="tab-pane fade in active">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓名 </label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1" placeholder="姓名" class="col-xs-10 col-sm-5" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">性別</label>

								<div class="col-sm-9">
									<div class="radio">
										<label>
											<input name="sex" type="radio" class="ace" checked="checked"/>
											<span class="lbl">男</span>
										</label>
										
										<label>
											<input name="sex" type="radio" class="ace" />
											<span class="lbl">女</span>
										</label>
									</div>

								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 出生年月日</label>

								<div class="col-sm-9">
									<div class="input-group col-xs-10 col-sm-5">
										<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" />
										<span class="input-group-addon">
											<i class="fa fa-calendar bigger-110"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 出生時間</label>

								<div class="col-sm-9">
									<div class="input-group bootstrap-timepicker col-xs-10 col-sm-5">
										<input id="timepicker1" type="text" class="form-control" value=""/>
										<span class="input-group-addon">
											<i class="fa fa-clock-o bigger-110"></i>
										</span>
									</div>
								</div>
							</div>
						</form>
					</div>

				</div>
			</div>
	</div>
	<div class="content" id="qimin" style="margin-top: 20px;margin-bottom: 20px;">
			<div class="tabbable">
				<div class="tab-content" style="border: 3px solid #337ab7ed;">
					<div class="tab-pane fade in active">
						<form class="form-horizontal" role="form" method="post" action="${ctx}/names/queryNames">
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 姓</label>

								<div class="col-sm-9">
									<input type="text" id="form-field-1" placeholder="姓" class="col-xs-10 col-sm-5" maxlength="1" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">包含字</label>
								<div class="col-sm-9">
									<input type="text" id="form-field-1" placeholder="三个字情况下，必须要包含的字" class="col-xs-10 col-sm-5" maxlength="2"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1">性別</label>

								<div class="col-sm-9">
									<div class="radio">
										<label>
											<input name="sex" type="radio" class="ace" checked="checked"/>
											<span class="lbl">男</span>
										</label>
										
										<label>
											<input name="sex" type="radio" class="ace" />
											<span class="lbl">女</span>
										</label>
									</div>

								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 出生年月日</label>

								<div class="col-sm-9">
									<div class="input-group col-xs-10 col-sm-5">
										<input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="yyyy-mm-dd" />
										<span class="input-group-addon">
											<i class="fa fa-calendar bigger-110"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 出生時間</label>

								<div class="col-sm-9">
									<div class="input-group bootstrap-timepicker col-xs-10 col-sm-5">
										<input id="timepicker1" type="text" class="form-control" value=""/>
										<span class="input-group-addon">
											<i class="fa fa-clock-o bigger-110"></i>
										</span>
									</div>
								</div>
							</div>
							<div class="clearfix form-actions">
								<div class="col-md-offset-3 col-md-9">
									<button class="btn btn-info" type="submit">
										<i class="ace-icon fa fa-check bigger-110"></i>
										提交订单
									</button>

								</div>
							</div>
						</form>
					</div>

				</div>
			</div>
	</div>
</body>
<script type="text/javascript">
	$('.date-picker').datepicker({
		autoclose: true,
		todayHighlight: true
	})
	//show datepicker when clicking on the icon
	.next().on(ace.click_event, function(){
		$(this).prev().focus();
	});
	
	$('#timepicker1').timepicker({
		minuteStep: 1,
		defaultTime:false,
		showSeconds: false,
		showMeridian: false,
		disableFocus: true,
		icons: {
			up: 'fa fa-chevron-up',
			down: 'fa fa-chevron-down'
		}
	}).on('focus', function() {
		$('#timepicker1').timepicker('showWidget');
	}).next().on(ace.click_event, function(){
		$(this).prev().focus();
	});
</script>
</html>