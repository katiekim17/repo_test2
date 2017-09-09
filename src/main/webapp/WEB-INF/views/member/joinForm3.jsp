<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String gc = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
/* Loading Spinner */
.spinner {
	margin: 0;
	width: 70px;
	height: 18px;
	margin: -35px 0 0 -9px;
	position: absolute;
	top: 50%;
	left: 50%;
	text-align: center
}

.spinner>div {
	width: 18px;
	height: 18px;
	background-color: #333;
	border-radius: 100%;
	display: inline-block;
	-webkit-animation: bouncedelay 1.4s infinite ease-in-out;
	animation: bouncedelay 1.4s infinite ease-in-out;
	-webkit-animation-fill-mode: both;
	animation-fill-mode: both
}

.spinner .bounce1 {
	-webkit-animation-delay: -.32s;
	animation-delay: -.32s
}

.spinner .bounce2 {
	-webkit-animation-delay: -.16s;
	animation-delay: -.16s
}

@
-webkit-keyframes bouncedelay { 0%,80%,100%{
	-webkit-transform: scale(0.0)
}

40%{
-webkit-transform


:scale


(1
.0


)
}
}
@
keyframes bouncedelay { 0%,80%,100%{
	transform: scale(0.0);
	-webkit-transform: scale(0.0)
}
40%{
transform


:scale


(1
.0


);
-webkit-transform


:scale


(1
.0


)
}
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->
<link rel="shortcut icon"
	href="../resources/assets/images/icons/favicon.ico">

<!--instagram-->
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/instagram.css">

<!-- HELPERS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/animate.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/backgrounds.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/boilerplate.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/border-radius.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/grid.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/page-transitions.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/spacing.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/typography.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/utils.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/colors.css">

<!-- ELEMENTS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/badges.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/buttons.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/content-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/dashboard-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/forms.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/images.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/info-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/invoice.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/loading-indicators.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/menus.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/panel-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/response-messages.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/responsive-tables.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/ribbon.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/social-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/tables.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/tile-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/elements/timeline.css">

<!-- FRONTEND ELEMENTS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/footer.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/blog.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/cta-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/feature-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/hero-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/icon-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/portfolio-navigation.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/pricing-table.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/sliders.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/frontend-elements/testimonial-box.css">

<!-- ICONS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/icons/fontawesome/fontawesome.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/icons/linecons/linecons.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/icons/spinnericon/spinnericon.css">

<!-- WIDGETS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/accordion-ui/accordion.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/calendar/calendar.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/carousel/carousel.css">

<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/charts/justgage/justgage.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/charts/morris/morris.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/charts/piegage/piegage.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/charts/xcharts/xcharts.css">

<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/chosen/chosen.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/colorpicker/colorpicker.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/datatable/datatable.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/datepicker/datepicker.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/datepicker-ui/datepicker.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/dialog/dialog.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/dropdown/dropdown.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/dropzone/dropzone.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/file-input/fileinput.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/input-switch/inputswitch.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/input-switch/inputswitch-alt.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/ionrangeslider/ionrangeslider.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/jcrop/jcrop.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/jgrowl-notifications/jgrowl.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/loading-bar/loadingbar.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/maps/vector-maps/vectormaps.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/markdown/markdown.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/modal/modal.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/multi-select/multiselect.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/multi-upload/fileupload.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/nestable/nestable.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/noty-notifications/noty.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/popover/popover.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/pretty-photo/prettyphoto.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/progressbar/progressbar.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/range-slider/rangeslider.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/slidebars/slidebars.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/slider-ui/slider.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/summernote-wysiwyg/summernote-wysiwyg.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/tabs-ui/tabs.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/theme-switcher/themeswitcher.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/timepicker/timepicker.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/tocify/tocify.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/tooltip/tooltip.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/touchspin/touchspin.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/uniform/uniform.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/wizard/wizard.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/xeditable/xeditable.css">

<!-- FRONTEND WIDGETS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/layerslider/layerslider.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/owlcarousel/owlcarousel.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/widgets/fullpage/fullpage.css">

<!-- SNIPPETS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/chat.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/files-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/login-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/notification-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/progress-box.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/todo.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/user-profile.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/snippets/mobile-navigation.css">

<!-- APPLICATIONS -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/applications/mailbox.css">

<!-- Admin theme -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/themes/admin/layout.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/themes/admin/color-schemes/default.css">

<!-- Frontend theme -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/themes/frontend/layout.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/themes/frontend/color-schemes/default.css">

<!-- Components theme -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/themes/components/default.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/themes/components/border-radius.css">

<!-- Admin responsive -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/responsive-elements.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/admin-responsive.css">

<!-- Frontend responsive -->

<link rel="stylesheet" type="text/css"
	href="../resources/assets/helpers/responsive-elements.css">
<link rel="stylesheet" type="text/css"
	href="../resources//assets/helpers/frontend-responsive.css">

<!-- JS Core -->

<script type="text/javascript"
	src="../resources/assets/js-core/jquery-core.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/jquery-ui-core.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/jquery-ui-widget.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/jquery-ui-mouse.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/jquery-ui-position.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/transition.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/modernizr.js"></script>
<script type="text/javascript"
	src="../resources/assets/js-core/jquery-cookie.js"></script>

<script type="text/javascript">
$(window).load(function(){
	setTimeout(function() {
		$('#loading').fadeOut( 400, "linear" );
    }, 300);
});
</script>

</head>
<body class="body-alt">
	<div id="loading">
		<div class="spinner">
			<div class="bounce1"></div>
			<div class="bounce2"></div>
			<div class="bounce3"></div>
		</div>
	</div>

	<!-- Mixitup -->

	<script type="text/javascript"
		src="../resources/assets/widgets/mixitup/mixitup.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/mixitup/images-loaded.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/mixitup/isotope.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/mixitup/portfolio-demo.js"></script>

	<script type="text/javascript">

    $( function() {

        var $container = $('.blog-masonry').imagesLoaded( function() {
            $container.isotope({
                itemSelector: '.item',
                layoutMode: 'masonry',
                masonry: {
                    columnWidth: '.col-md-3'
                }
            });
        });

    });

</script>

	<!-- Lazyload -->

	<script type="text/javascript"
		src="../resources/assets/widgets/lazyload/lazyload.js"></script>
	<script type="text/javascript">
    /* Lazyload */

    $(function() {
        $("img.lazy").lazyload({
            effect: "fadeIn",
            threshold: 100
        });
    });
</script>

<script>
//가입신청 후 서버에서의 오류로 현재 페이지로 되돌아온 경우 오류 메시지를 출력
<c:if test="${errorMsg != null}"> alert('${errorMsg}');
</c:if>

//가입폼 확인
function formCheck() {
	var id = document.getElementById('custid');
	var pw = document.getElementById('password');
	var pw2 = document.getElementById('password2');
	var name = document.getElementById('name');
	
	if (id.value.length < 3 || id.value.length > 10) {
		alert("Please input ID to 3 to 10 characters.");
		id.focus();
		id.select();
		return false;
	}
	if (pw.value.length < 3 || pw.value.length > 10) {
		alert("Please input PASSWORD to 3 to 10 characters.");
		pw.focus();
		pw.select();
		return false;
	}
	if (pw.value != pw2.value) {
		alert("Please enter your PASSWORD accurately.");
		pw.focus();
		pw.select();
		return false;
	}
	if (name.value == '') {
		alert("Please input your NAME");
		name.focus();
		name.select();
		return false;
	}
	return true;
}

//ID 중복확인 창 열기
function idcheckOpen() {
	window.open("idcheck","newwin","top=200,left=400,width=400,height=300,resizable=no");
}


// 우편번호 찾기 찾기 화면을 넣을 element
var element_wrap = document.getElementById('wrap');

function foldDaumPostcode() {
	// iframe을 넣은 element를 안보이게 한다.
	element_wrap.style.display = 'none';
}

                               
</script>
</head>
<body>
	<div id="page-wrapper">
		<div class="top-bar bg-topbar">
			<div class="container">
				<div class="float-right user-account-btn dropdown">
					<a href="#" title="My Account" class="user-profile clearfix"
						data-toggle="dropdown" aria-expanded="false"> <img width="28"
						src="../resources/assets/image-resources/gravatar.jpg"
						alt="Profile image"> <span>로그인 ID 표시</span> <i
						class="glyph-icon icon-angle-down"></i>
					</a>
					<div class="dropdown-menu pad0B float-right">
						<div class="box-sm">
							<div class="login-box clearfix">
								<div class="user-img">
									<img src="../resources/assets/image-resources/gravatar.jpg"
										alt="">
								</div>
								<div class="user-info">
									<span> ${member.custname} <i>${member.name}</i>
									</span> <a href="<%=gc%>/member/update" title="">Edit profile</a>
								</div>
							</div>
							<div class="divider"></div>
							<div class="pad5A button-pane button-pane-alt text-center">
								<a href="<%=gc%>/member/login"
									class="btn display-block font-normal btn-danger"> <i
									class="glyph-icon icon-power-off"></i> Login
								</a>
							</div>
							<div class="pad5A button-pane button-pane-alt text-center">
								<a href="<%=gc%>/member/logout"
									class="btn display-block font-normal btn-danger"> <i
									class="glyph-icon icon-power-off"></i> Logout
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- .container -->
		</div>
		<!-- .top-bar -->
	</div>
	<div class="main-header bg-header wow fadeInDown">
		<div class="container">
			<a href="<%=gc%>/member/memberHome" class="header-logo"
				title="EcoCoffee - Create perfect RECYLCE Coffee"></a>
			<!-- .header-logo -->
			<div class="right-header-btn">
				<div id="mobile-navigation">
					<button id="nav-toggle" class="collapsed" data-toggle="collapse"
						data-target=".header-nav">
						<span></span>
					</button>
				</div>
			</div>
			<!-- .header-logo -->
			<ul class="header-nav collapse">
				<li><a href="#" title="Homepages"> 홈페이지소개 <i
						class="glyph-icon icon-angle-down"></i>
				</a>
					<ul>
						<li><a href="index.html" title="Homepage example 1"><span>홈페이지
									소개</span></a></li>
						<li><a href="index-alt.html" title="Homepage example 2"><span>커피박
									소개</span></a></li>
						<li><a href="index-alt-2.html" title="Homepage example 3"><span>에코마일리지</span></a></li>

					</ul></li>
				<li><a href="#" title="Hero sections"> 가맹점소개 <i
						class="glyph-icon icon-angle-down"></i>
				</a>
					<ul class="footer-nav">
						<li><a href="hero-static.html" title="Static hero sections"><span>가맹
									카페</span></a></li>
						<li><a href="hero-alignments.html" title="Hero alignments"><span>가맹
									수거업체</span></a></li>

					</ul></li>
				<li><a href="<%=gc%>/memberMap/memberMap" title="Components"> 서비스 이용하기 <i
						class="glyph-icon icon-angle-down"></i>
				</a>
					<ul>
						<li><a href="content-boxes.html" title="Components framework">
								<span>예약관련</span>
						</a></li>
					</ul></li>
				<li><a href="<%=gc%>/menu/product" title="Components">
						상품페이지 </a></li>
				<li><a href="#" title="ContactUs"> Contact US </a></li>

			</ul>
			<!-- .header-nav -->
		</div>
		<!-- .container -->
	</div>
	<!-- .main-header -->
	<!-- <div id="page-content" class="col-md-10 center-margin frontend-components mrg25T">
	<div class="col-md-10">
	
jQueryUI Spinner

<script type="text/javascript" src="../resources/assets/widgets/spinner/spinner.js"></script>
<script type="text/javascript">
    /* jQuery UI Spinner */

    $(function() { "use strict";
        $(".spinner-input").spinner();
    });
</script>

jQueryUI Autocomplete

<script type="text/javascript" src="../resources/assets/widgets/autocomplete/autocomplete.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/autocomplete/menu.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/autocomplete/autocomplete-demo.js"></script>

Touchspin

<link rel="stylesheet" type="text/css" href="../../assets/widgets/touchspin/touchspin.css">
<script type="text/javascript" src="../resources/assets/widgets/touchspin/touchspin.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/touchspin/touchspin-demo.js"></script>

Input switch

<link rel="stylesheet" type="text/css" href="../../assets/widgets/input-switch/inputswitch.css">
<script type="text/javascript" src="../resources/assets/widgets/input-switch/inputswitch.js"></script>
<script type="text/javascript">
    /* Input switch */

    $(function() { "use strict";
        $('.input-switch').bootstrapSwitch();
    });
</script>

Textarea

<script type="text/javascript" src="../resources/assets/widgets/textarea/textarea.js"></script>
<script type="text/javascript">
    /* Textarea autoresize */

    $(function() { "use strict";
        $('.textarea-autosize').autosize();
    });
</script>

Multi select

<link rel="stylesheet" type="text/css" href="../../assets/widgets/multi-select/multiselect.css">
<script type="text/javascript" src="../resources/assets/widgets/multi-select/multiselect.js"></script>
<script type="text/javascript">
    /* Multiselect inputs */

    $(function() { "use strict";
        $(".multi-select").multiSelect();
        $(".ms-container").append('<i class="glyph-icon icon-exchange"></i>');
    });
</script>

Uniform

<link rel="stylesheet" type="text/css" href="../../assets/widgets/uniform/uniform.css">
<script type="text/javascript" src="../resources/assets/widgets/uniform/uniform.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/uniform/uniform-demo.js"></script>

Chosen

<link rel="stylesheet" type="text/css" href="../../assets/widgets/chosen/chosen.css">
<script type="text/javascript" src="../resources/assets/widgets/chosen/chosen.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/chosen/chosen-demo.js"></script>
 -->
	<div class="hero-box hero-box-smaller full-bg-13 font-inverse"
		data-top-bottom="background-position: 50% 0px;"
		data-bottom-top="background-position: 50% -600px;">

		<div class="container">
			<h1 class="hero-heading wow fadeInDown" data-wow-duration="0.6s">ECO
				Coffee</h1>
			<p class="hero-text wow bounceInUp" data-wow-duration="0.9s"
				data-wow-delay="0.2s">The most complete user interface framework
				that can be used to create stunning admin dashboards and
				presentation websites.</p>
		</div>
		<div class="hero-overlay bg-black"></div>
	</div>
	<div class="pad15L pad15R mrg25T">

		<div id="page-title">
			<h2>Welcome To ECO COFFEE</h2>
			<p>Please Join us and Enjoy!</p>
		</div>

		<div class="panel">
			<div class="panel-body">
				<h3 class="title-hero">Join</h3>
				<div class="example-box-wrapper">
					<form id="joinform" action="join"
						class="form-horizontal bordered-row" method="post"
						onsubmit="return formCheck();">
						<div class="form-group">
							<label class="col-sm-3 control-label">ID</label>
							<div class="col-sm-6">
								<input type="text" name="custid" id="custid"
									class="form-control" maxlength="10" placeholder="Your ID"
									readonly="readonly" /> <span class="input-group-btn">
									<button class="btn btn-primary" type="button"
										onclick="idcheckOpen()">Check Your ID</button>
								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">PASSWORD</label>
							<div class="col-sm-6">
								<input type="password" name="password" id="password"
									class="form-control" placeholder="Insert Your Password" /> <input
									type="password" id="password2" class="form-control"
									placeholder="Insert Your Same Password" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">NAME</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="custname" name="custname" placeholder="Insert Your Name">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">COMPANY NAME</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="name" name="name" placeholder="Insert Your Company Name">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">TEL</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="custtel" name="custtel" placeholder="Insert Your Tel">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">COMPANY TEL</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="tel" name="tel" placeholder="Insert Your Company Tel">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">COMPANY <br>
								POST CODE
							</label>
							<div class="col-sm-6">
								<input type="text" id="sample4_postcode" name="postcode"
									class="form-control popover-button-default" readonly="readonly"
									placeholder="Your Company Postcode"> <span
									class="input-group-btn">
									<button class="btn btn-primary" type="button"
										onclick="sample4_execDaumPostcode()">Postcode</button>
								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">COMPANY <br>
								ROAD ADDRESS
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="sample4_roadAddress" name="road"
									placeholder="Your Company Road Address">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">COMPANY <br>
								JIBUN ADDRESS
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="sample4_jibunAddress" name="jibun"
									placeholder="Your Company Jibun Address">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">COMPANY IDNO</label>
							<div class="col-sm-6">
								<input type="text" class="form-control popover-button-default"
									id="idno" name="idno" placeholder="Insert Your Company Idno">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">DIVISION</label>
							<div class="col-sm-6">
								<label class="radio-inline"> <input type="radio"
									name="division" value="cafe" checked /> CAFE
								</label> <label class="radio-inline"> <input type="radio"
									name="division" value="business" /> PICKUP COMPANY
								</label>
							</div>
						</div>


						<!-- 좌표넣기 연습 -->
						<div class="form-group" style="display:block;">
							<label class="col-sm-3 control-label">Map <br>
								MapPoint
							</label>
							<div class="col-sm-6">
							<input type="text" class="form-control popover-button-default"
									id="lat_lng" name="point"> 
							<span class="input-group-btn">
								
							</span>
							<!-- map이 있어야 좌표가 찍힘. 반드시 필요해!! -->	
							<div id="map"
									style="width: 300px; height: 300px; margin-top: 10px; display:none"></div>
							</div>
						</div>
							
						<div class="form-group">
							<div>
								<button type="submit" class="btn btn-success btn-block">JOIN</button>
								<button type="reset" class="btn btn-success btn-block">RESET</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="main-footer bg-gradient-4 clearfix">
		<div class="footer-pane bg-gradient-4">
			<div class="container clearfix">
				<div class="logo">&copy; 2017 SCIT 33rd A Class ECO COFFEE All
					Rights Reserved.</div>
				<div class="footer-nav-bottom">
					Contact us.&nbsp;&nbsp; <i class="glyph-icon icon-envelope-o"></i>
					<a href="https://www.instagram.com/coffeerecycle/" title="">Instagram
						Message</a>
				</div>
			</div>
		</div>
	</div>


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<!--다음지도API,라이브러리불러오기, 반드시 실행 코드보다 먼저 선언되어야 합니다.-->
<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=90659a87ed8bdd7044bb32388141231d&libraries=services"></script>



<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
mapOption = {
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 5 // 지도의 확대 레벨
};

//지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성
var geocoder = 	new daum.maps.services.Geocoder();

//마커를 미리 생성
var marker = new daum.maps.Marker({
    position: new daum.maps.LatLng(33.450701, 126.570667),
    map: map
}); 

function sample4_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 최종 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
            	extraRoadAddr += data.bname;
            }
            
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
            	extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
            	extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
            	fullRoadAddr += extraRoadAddr;
            }
            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample4_roadAddress').value = fullRoadAddr;
            document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
    
      	  geocoder.addressSearch(fullRoadAddr, function(result, status) {
         	   
         	   if (status === daum.maps.services.Status.OK) {
         		  /*  alert(result[0].y);
         		   alert(result[0].x); */
         		var lat = result[0].y;
         		var lng = result[0].x;
         		
         		   document.getElementById('lat_lng').value = lat+","+lng;
         	   }
            });             
            }
    }).open();
	
	
	}


/* function getLat(){
	  
	var address = $('#sample4_roadAddress').val();
	  geocoder.addressSearch(address, function(result, status) {
   	   
   	   if (status === daum.maps.services.Status.OK) {
   		  /*  alert(result[0].y);
   		   alert(result[0].x); 
   		var lat = result[0].y;
   		var lng = result[0].x;
   		
   		   document.getElementById('lat_lng').value = lat+","+lng;
   	   }
      });
} */

</script>



	<!-- Skrollr -->

	<script type="text/javascript"
		src="../resources/assets/widgets/skrollr/skrollr.js"></script>

	<!-- Owl carousel -->

	<script type="text/javascript"
		src="../resources/assets/widgets/owlcarousel/owlcarousel.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/owlcarousel/owlcarousel-demo.js"></script>

	<!-- HG sticky -->

	<script type="text/javascript"
		src="../resources/assets/widgets/sticky/sticky.js"></script>

	<!-- WOW -->

	<script type="text/javascript"
		src="../resources/assets/widgets/wow/wow.js"></script>

	<!-- VideoBG -->

	<script type="text/javascript"
		src="../resources/assets/widgets/videobg/videobg.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/videobg/videobg-demo.js"></script>

	<!-- Mixitup -->

	<script type="text/javascript"
		src="../resources/assets/widgets/mixitup/mixitup.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/mixitup/isotope.js"></script>


	<!-- Widgets init for demo -->

	<script type="text/javascript"
		src="../resources/assets/js-init/frontend-init.js"></script>

	<!-- WIDGETS -->

	<script type="text/javascript"
		src="../resources/assets/bootstrap/js/bootstrap.js"></script>

	<!-- Bootstrap Dropdown -->

	<script type="text/javascript"
		src="../resources/assets/widgets/dropdown/dropdown.js"></script>

	<!-- Bootstrap Tooltip -->

	<script type="text/javascript"
		src="../resources/assets/widgets/tooltip/tooltip.js"></script>

	<!-- Bootstrap Popover -->

	<script type="text/javascript"
		src="../resources/assets/widgets/popover/popover.js"></script>

	<!-- Bootstrap Progress Bar -->

	<script type="text/javascript"
		src="../resources/assets/widgets/progressbar/progressbar.js"></script>

	<!-- Bootstrap Buttons -->

	<script type="text/javascript"
		src="../resources/assets/widgets/button/button.js"></script>

	<!-- Bootstrap Collapse -->

	<script type="text/javascript"
		src="../resources/assets/widgets/collapse/collapse.js"></script>

	<!-- Superclick -->

	<script type="text/javascript"
		src="../resources/assets/widgets/superclick/superclick.js"></script>

	<!-- Input switch alternate -->

	<script type="text/javascript"
		src="../resources/assets/widgets/input-switch/inputswitch-alt.js"></script>

	<!-- Slim scroll -->

	<script type="text/javascript"
		src="../resources/assets/widgets/slimscroll/slimscroll.js"></script>

	<!-- Slidebars -->

	<script type="text/javascript"
		src="../resources/assets/widgets/slidebars/slidebars.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/slidebars/slidebars-demo.js"></script>

	<!-- PieGage -->

	<script type="text/javascript"
		src="../resources/assets/widgets/charts/piegage/piegage.js"></script>
	<script type="text/javascript"
		src="../resources/assets/widgets/charts/piegage/piegage-demo.js"></script>

	<!-- Screenfull -->

	<script type="text/javascript"
		src="../resources/assets/widgets/screenfull/screenfull.js"></script>

	<!-- Content box -->

	<script type="text/javascript"
		src="../resources/assets/widgets/content-box/contentbox.js"></script>

	<!-- Overlay -->

	<script type="text/javascript"
		src="../resources/assets/widgets/overlay/overlay.js"></script>

	<!-- Widgets init for demo -->

	<script type="text/javascript"
		src="../resources/assets/js-init/widgets-init.js"></script>

	<!-- Theme layout -->

	<script type="text/javascript"
		src="../resources/assets/themes/admin/layout.js"></script>

	<!-- Theme switcher -->

	<script type="text/javascript"
		src="../resources/assets/widgets/theme-switcher/themeswitcher.js"></script>
</body>
</html>