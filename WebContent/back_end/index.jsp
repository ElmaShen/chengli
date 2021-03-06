<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//session.setAttribute("name", "arg1");
	if (session.getAttribute("name") == null) {
		response.sendRedirect("login.html");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>承利保險經紀人 後台管理 - 會員管理</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="assets/css/bootstrap.css" />
<link rel="stylesheet" href="assets/css/font-awesome.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet" href="assets/css/ace-fonts.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.css" />
		<![endif]-->

<!-- custome styles -->
<link rel="stylesheet" href="css/style.css" />
<!-- 卡卡 -->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.js"></script>

<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.js"></script>
		<![endif]-->
</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<div id="navbar" class="navbar navbar-default">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<!-- #section:basics/sidebar.mobile.toggle -->
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>

				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

			<!-- /section:basics/sidebar.mobile.toggle -->
			<div class="navbar-header pull-left">
				<!-- #section:basics/navbar.layout.brand -->
				<a href="#" class="navbar-brand"> <small> <i
						class="fa fa-leaf"></i> 承利保險經紀人 後台管理
				</small>
				</a>

				<!-- /section:basics/navbar.layout.brand -->

				<!-- #section:basics/navbar.toggle -->

				<!-- /section:basics/navbar.toggle -->
			</div>

			<!-- #section:basics/navbar.dropdown -->
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<ul class="nav ace-nav">
					<!-- #section:basics/navbar.user_menu -->
					<li class="light-blue">
						<!-- <a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<span class="user-info">
									<small>您好，</small>
									name
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li class="divider"></li>

								<li> --> <a href="LogoutServlet"> <i
							class="ace-icon fa fa-power-off"></i> 登出
					</a> <!-- </li>
							</ul> -->
					</li>

					<!-- /section:basics/navbar.user_menu -->
				</ul>
			</div>

			<!-- /section:basics/navbar.dropdown -->
		</div>
		<!-- /.navbar-container -->
	</div>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<!-- #section:basics/sidebar -->
		<div id="sidebar" class="sidebar                  responsive">
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
			</script>

			<ul class="nav nav-list">
				<li class="active"><a href="admin.jsp"> <span
						class="menu-text"> 帳號管理</span>
				</a> <b class="arrow"></b></li>

				<li class=""><a href="donation.jsp"> <span
						class="menu-text"> 捐贈資料管理 </span>
				</a> <b class="arrow"></b></li>
			</ul>
			<!-- /.nav-list -->

			<!-- #section:basics/sidebar.layout.minimize -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i class="ace-icon fa fa-angle-double-left"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>

			<!-- /section:basics/sidebar.layout.minimize -->
			<script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'collapsed')
				} catch (e) {
				}
			</script>
		</div>

		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">首頁</a>
						</li>
						<li class="active">帳號管理</li>
					</ul>
					<!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<!-- <div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div> -->
					<!-- /.nav-search -->

					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- #section:settings.box -->
					<!-- 已刪 卡卡 -->
					<!-- /.ace-settings-container -->

					<!-- /section:settings.box -->
					<div class="page-header">
						<h1>帳號管理</h1>
					</div>
					<!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-xs-12">
									<table id="simple-table"
										class="table table-striped table-bordered table-hover"
										hidden="true">
										<thead>
											<tr>
												<th class="center">編號</th>
												<th>管理員姓名</th>
												<th>電子信箱</th>
												<th>帳號</th>
												<th>密碼</th>
												<th>
													<button class="btn btn-xs btn-primary btn-insert">
														<i class="ace-icon fa fa-search-plus bigger-120">新增</i>
													</button>
												</th>
											</tr>
										</thead>

										<tbody>
											<tr>
											</tr>
										</tbody>
									</table>

									<form class="form-horizontal" role="form" hidden="true">
										<!-- #section:elements.form -->

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1"> 姓名 </label>

											<div class="col-sm-9">
												<input id='ad_name' name="ad_name" type="text"
													id="form-field-1" placeholder="姓名"
													class="col-xs-10 col-sm-5" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1"> 帳號 </label>

											<div class="col-sm-9">
												<input id='ad_uid' name='ad_uid' type="text"
													id="form-field-1" placeholder="帳號"
													class="col-xs-10 col-sm-5" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1"> 密碼 </label>

											<div class="col-sm-9">
												<input id='ad_upwd' name='ad_upwd' type="password"
													id="form-field-1" placeholder="密碼"
													class="col-xs-10 col-sm-5" />
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-3 control-label no-padding-right"
												for="form-field-1"> 電子信箱 </label>

											<div class="col-sm-9">
												<input id='ad_email' name="ad_email" type="text"
													id="form-field-1" placeholder="電子信箱"
													class="col-xs-10 col-sm-5" />
											</div>
										</div>

										<div class="clearfix form-actions">
											<div class="col-md-offset-3 col-md-9">
												<button class="btn btn-info" type="button">
													<i class="ace-icon fa fa-check bigger-110"></i> <font
														style="color: #fff;">儲存</font>
												</button>

												&nbsp; &nbsp; &nbsp;
												<button class="btn btn-cancel" type="reset">
													<i class="ace-icon fa fa-undo bigger-110"></i> 取消
												</button>
											</div>
										</div>

									</form>
								</div>
								<!-- /.span -->
							</div>
							<!-- /.row -->

							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

		<div class="footer">
			<div class="footer-inner">
				<!-- #section:basics/footer -->
				<div class="footer-content">
					<span class="bigger-120"> <span class="blue bolder">一貫道崇德學院
							後台管理</span> &copy; 2016
					</span>
				</div>

				<!-- /section:basics/footer -->
			</div>
		</div>

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document.write("<script src='assets/js/jquery.js'>"
						+ "<"+"/script>");
	</script>

	<!-- <![endif]-->

	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document.write("<script src='assets/js/jquery.mobile.custom.js'>"
					+ "<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.js"></script>

	<!-- page specific plugin scripts -->

	<!--[if lte IE 8]>
		  <script src="../assets/js/excanvas.js"></script>
		<![endif]-->
	<script src="assets/js/jquery-ui.custom.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.js"></script>
	<script src="assets/js/jquery.easypiechart.js"></script>
	<script src="assets/js/jquery.sparkline.js"></script>
	<script src="assets/js/flot/jquery.flot.js"></script>
	<script src="assets/js/flot/jquery.flot.pie.js"></script>
	<script src="assets/js/flot/jquery.flot.resize.js"></script>

	<!-- ace scripts -->
	<script src="assets/js/ace/elements.scroller.js"></script>
	<script src="assets/js/ace/elements.colorpicker.js"></script>
	<script src="assets/js/ace/elements.fileinput.js"></script>
	<script src="assets/js/ace/elements.typeahead.js"></script>
	<script src="assets/js/ace/elements.wysiwyg.js"></script>
	<script src="assets/js/ace/elements.spinner.js"></script>
	<script src="assets/js/ace/elements.treeview.js"></script>
	<script src="assets/js/ace/elements.wizard.js"></script>
	<script src="assets/js/ace/elements.aside.js"></script>
	<script src="assets/js/ace/ace.js"></script>
	<script src="assets/js/ace/ace.ajax-content.js"></script>
	<script src="assets/js/ace/ace.touch-drag.js"></script>
	<script src="assets/js/ace/ace.sidebar.js"></script>
	<script src="assets/js/ace/ace.sidebar-scroll-1.js"></script>
	<script src="assets/js/ace/ace.submenu-hover.js"></script>
	<script src="assets/js/ace/ace.widget-box.js"></script>
	<script src="assets/js/ace/ace.settings.js"></script>
	<script src="assets/js/ace/ace.settings-rtl.js"></script>
	<script src="assets/js/ace/ace.settings-skin.js"></script>
	<script src="assets/js/ace/ace.widget-on-reload.js"></script>
	<script src="assets/js/ace/ace.searchbox-autocomplete.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$('.easy-pie-chart.percentage')
					.each(
							function() {
								var $box = $(this).closest('.infobox');
								var barColor = $(this).data('color')
										|| (!$box.hasClass('infobox-dark') ? $box
												.css('color')
												: 'rgba(255,255,255,0.95)');
								var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)'
										: '#E2E2E2';
								var size = parseInt($(this).data('size')) || 50;
								$(this)
										.easyPieChart(
												{
													barColor : barColor,
													trackColor : trackColor,
													scaleColor : false,
													lineCap : 'butt',
													lineWidth : parseInt(size / 10),
													animate : /msie\s*(8|7|6)/
															.test(navigator.userAgent
																	.toLowerCase()) ? false
															: 1000,
													size : size
												});
							})

			$('.sparkline').each(
					function() {
						var $box = $(this).closest('.infobox');
						var barColor = !$box.hasClass('infobox-dark') ? $box
								.css('color') : '#FFF';
						$(this).sparkline('html', {
							tagValuesAttribute : 'data-values',
							type : 'bar',
							barColor : barColor,
							chartRangeMin : $(this).data('min') || 0
						});
					});

			//flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			//but sometimes it brings up errors with normal resize event handlers
			$.resize.throttleWindow = false;

			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});
			var data = [ {
				label : "social networks",
				data : 38.7,
				color : "#68BC31"
			}, {
				label : "search engines",
				data : 24.5,
				color : "#2091CF"
			}, {
				label : "ad campaigns",
				data : 8.2,
				color : "#AF4E96"
			}, {
				label : "direct traffic",
				data : 18.6,
				color : "#DA5430"
			}, {
				label : "other",
				data : 10,
				color : "#FEE074"
			} ]
			function drawPieChart(placeholder, data, position) {
				$.plot(placeholder, data, {
					series : {
						pie : {
							show : true,
							tilt : 0.8,
							highlight : {
								opacity : 0.25
							},
							stroke : {
								color : '#fff',
								width : 2
							},
							startAngle : 2
						}
					},
					legend : {
						show : true,
						position : position || "ne",
						labelBoxBorderColor : null,
						margin : [ -30, 15 ]
					},
					grid : {
						hoverable : true,
						clickable : true
					}
				})
			}
			drawPieChart(placeholder, data);

			/**
			we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			so that's not needed actually.
			 */
			placeholder.data('chart', data);
			placeholder.data('draw', drawPieChart);

			//pie chart tooltip example
			var $tooltip = $(
					"<div class='tooltip top in'><div class='tooltip-inner'></div></div>")
					.hide().appendTo('body');
			var previousPoint = null;

			placeholder.on('plothover', function(event, pos, item) {
				if (item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : "
								+ item.series['percent'] + '%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({
						top : pos.pageY + 10,
						left : pos.pageX + 10
					});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}

			});

			/////////////////////////////////////
			$(document).one('ajaxloadstart.page', function(e) {
				$tooltip.remove();
			});

			var d1 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d1.push([ i, Math.sin(i) ]);
			}

			var d2 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.5) {
				d2.push([ i, Math.cos(i) ]);
			}

			var d3 = [];
			for (var i = 0; i < Math.PI * 2; i += 0.2) {
				d3.push([ i, Math.tan(i) ]);
			}

			var sales_charts = $('#sales-charts').css({
				'width' : '100%',
				'height' : '220px'
			});
			$.plot("#sales-charts", [ {
				label : "Domains",
				data : d1
			}, {
				label : "Hosting",
				data : d2
			}, {
				label : "Services",
				data : d3
			} ], {
				hoverable : true,
				shadowSize : 0,
				series : {
					lines : {
						show : true
					},
					points : {
						show : true
					}
				},
				xaxis : {
					tickLength : 0
				},
				yaxis : {
					ticks : 10,
					min : -2,
					max : 2,
					tickDecimals : 3
				},
				grid : {
					backgroundColor : {
						colors : [ "#fff", "#fff" ]
					},
					borderWidth : 1,
					borderColor : '#555'
				}
			});

			$('#recent-box [data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('.tab-content')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

			$('.dialogs,.comments').ace_scroll({
				size : 300
			});

			//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
			//so disable dragging when clicking on label
			var agent = navigator.userAgent.toLowerCase();
			if ("ontouchstart" in document && /applewebkit/.test(agent)
					&& /android/.test(agent))
				$('#tasks').on('touchstart', function(e) {
					var li = $(e.target).closest('#tasks li');
					if (li.length == 0)
						return;
					var label = li.find('label.inline').get(0);
					if (label == e.target || $.contains(label, e.target))
						e.stopImmediatePropagation();
				});

			$('#tasks').sortable({
				opacity : 0.8,
				revert : true,
				forceHelperSize : true,
				placeholder : 'draggable-placeholder',
				forcePlaceholderSize : true,
				tolerance : 'pointer',
				stop : function(event, ui) {
					//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
					$(ui.item).css('z-index', 'auto');
				}
			});
			$('#tasks').disableSelection();
			$('#tasks input:checkbox').removeAttr('checked').on('click',
					function() {
						if (this.checked)
							$(this).closest('li').addClass('selected');
						else
							$(this).closest('li').removeClass('selected');
					});

			//show the dropdowns on top or bottom depending on window height and menu position
			$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
				var offset = $(this).offset();

				var $w = $(window)
				if (offset.top > $w.scrollTop() + $w.innerHeight() - 100)
					$(this).addClass('dropup');
				else
					$(this).removeClass('dropup');
			});

		})
	</script>

	<!-- the following scripts are used in demo only for onpage help and you don't need them -->
	<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
	<link rel="stylesheet" href="docs/assets/js/themes/sunburst.css" />

	<script type="text/javascript">
		ace.vars['base'] = '..';
	</script>
	<script src="assets/js/ace/elements.onpage-help.js"></script>
	<script src="assets/js/ace/ace.onpage-help.js"></script>
	<script src="docs/assets/js/rainbow.js"></script>
	<script src="docs/assets/js/language/generic.js"></script>
	<script src="docs/assets/js/language/html.js"></script>
	<script src="docs/assets/js/language/css.js"></script>
	<script src="docs/assets/js/language/javascript.js"></script>
	<script src="./js/jquery.validate.js"></script>
	<script src="./js/additional-methods.min.js"></script>
	<script src="./js/admin.js"></script>
	
	
	<style>
.error {
	color: red;
}

</style>

</body>
</html>
