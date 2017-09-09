<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String gc = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<style>
/* Loading Spinner */
.spinner{margin:0;width:70px;height:18px;margin:-35px 0 0 -9px;position:absolute;top:50%;left:50%;text-align:center}.spinner > div{width:18px;height:18px;background-color:#333;border-radius:100%;display:inline-block;-webkit-animation:bouncedelay 1.4s infinite ease-in-out;animation:bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode:both;animation-fill-mode:both}.spinner .bounce1{-webkit-animation-delay:-.32s;animation-delay:-.32s}.spinner .bounce2{-webkit-animation-delay:-.16s;animation-delay:-.16s}@-webkit-keyframes bouncedelay{0%,80%,100%{-webkit-transform:scale(0.0)}40%{-webkit-transform:scale(1.0)}}@keyframes bouncedelay{0%,80%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}40%{transform:scale(1.0);-webkit-transform:scale(1.0)}}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 완료</title>
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->
<link rel="shortcut icon" href="../resources/assets/images/icons/favicon.ico">

<!--instagram-->
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/instagram.css">

<!-- HELPERS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/animate.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/backgrounds.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/boilerplate.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/border-radius.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/grid.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/page-transitions.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/spacing.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/typography.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/utils.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/colors.css">

<!-- ELEMENTS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/elements/badges.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/buttons.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/content-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/dashboard-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/forms.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/images.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/info-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/invoice.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/loading-indicators.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/menus.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/panel-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/response-messages.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/responsive-tables.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/ribbon.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/social-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/tables.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/tile-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/elements/timeline.css">

<!-- FRONTEND ELEMENTS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/footer.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/blog.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/cta-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/feature-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/hero-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/icon-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/portfolio-navigation.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/pricing-table.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/sliders.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/frontend-elements/testimonial-box.css">

<!-- ICONS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/icons/fontawesome/fontawesome.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/icons/linecons/linecons.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/icons/spinnericon/spinnericon.css">

<!-- WIDGETS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/accordion-ui/accordion.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/calendar/calendar.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/carousel/carousel.css">

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/justgage/justgage.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/morris/morris.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/piegage/piegage.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/charts/xcharts/xcharts.css">

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/chosen/chosen.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/colorpicker/colorpicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/datatable/datatable.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/datepicker/datepicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/datepicker-ui/datepicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/dialog/dialog.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/dropdown/dropdown.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/dropzone/dropzone.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/file-input/fileinput.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/input-switch/inputswitch.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/input-switch/inputswitch-alt.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/ionrangeslider/ionrangeslider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/jcrop/jcrop.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/jgrowl-notifications/jgrowl.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/loading-bar/loadingbar.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/maps/vector-maps/vectormaps.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/markdown/markdown.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/modal/modal.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/multi-select/multiselect.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/multi-upload/fileupload.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/nestable/nestable.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/noty-notifications/noty.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/popover/popover.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/pretty-photo/prettyphoto.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/progressbar/progressbar.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/range-slider/rangeslider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/slidebars/slidebars.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/slider-ui/slider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/summernote-wysiwyg/summernote-wysiwyg.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/tabs-ui/tabs.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/theme-switcher/themeswitcher.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/timepicker/timepicker.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/tocify/tocify.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/tooltip/tooltip.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/touchspin/touchspin.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/uniform/uniform.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/wizard/wizard.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/xeditable/xeditable.css">

<!-- FRONTEND WIDGETS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/layerslider/layerslider.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/owlcarousel/owlcarousel.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/widgets/fullpage/fullpage.css">

<!-- SNIPPETS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/chat.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/files-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/login-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/notification-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/progress-box.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/todo.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/user-profile.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/snippets/mobile-navigation.css">

<!-- APPLICATIONS -->

<link rel="stylesheet" type="text/css" href="../resources/assets/applications/mailbox.css">

<!-- Admin theme -->

<link rel="stylesheet" type="text/css" href="../resources/assets/themes/admin/layout.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/themes/admin/color-schemes/default.css">

<!-- Frontend theme -->

<link rel="stylesheet" type="text/css" href="../resources/assets/themes/frontend/layout.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/themes/frontend/color-schemes/default.css">

<!-- Components theme -->

<link rel="stylesheet" type="text/css" href="../resources/assets/themes/components/default.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/themes/components/border-radius.css">

<!-- Admin responsive -->

<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/responsive-elements.css">
<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/admin-responsive.css">

<!-- Frontend responsive -->

<link rel="stylesheet" type="text/css" href="../resources/assets/helpers/responsive-elements.css">
<link rel="stylesheet" type="text/css" href="../resources//assets/helpers/frontend-responsive.css">

<!-- JS Core -->

<script type="text/javascript" src="../resources/assets/js-core/jquery-core.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/jquery-ui-core.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/jquery-ui-widget.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/jquery-ui-mouse.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/jquery-ui-position.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/transition.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/modernizr.js"></script>
<script type="text/javascript" src="../resources/assets/js-core/jquery-cookie.js"></script>

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

<script type="text/javascript" src="../resources/assets/widgets/mixitup/mixitup.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/mixitup/images-loaded.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/mixitup/isotope.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/mixitup/portfolio-demo.js"></script>

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

<script type="text/javascript" src="../resources/assets/widgets/lazyload/lazyload.js"></script>
<script type="text/javascript">
    /* Lazyload */

    $(function() {
        $("img.lazy").lazyload({
            effect: "fadeIn",
            threshold: 100
        });
    });
</script>
<div id="page-wrapper"><div class="top-bar bg-topbar">
    <div class="container">
            <div class="float-right user-account-btn dropdown">
            <a href="#" title="My Account" class="user-profile clearfix" data-toggle="dropdown" aria-expanded="false">
                <img width="28" src="../resources/assets/image-resources/gravatar.jpg" alt="Profile image">
                <span>로그인 ID 표시</span>
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <div class="dropdown-menu pad0B float-right">
                <div class="box-sm">
                    <div class="login-box clearfix">
                        <div class="user-img">
                            <img src="../resources/assets/image-resources/gravatar.jpg" alt="">
                        </div>
                        <div class="user-info">
                        <span>
                            ${member.custname}
                            <i>${member.name}</i>
                        </span>
                            <a href="<%=gc%>/member/update" title="">Edit profile</a>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div class="pad5A button-pane button-pane-alt text-center">
                        <a href="<%=gc%>/member/login" class="btn display-block font-normal btn-danger">
                            <i class="glyph-icon icon-power-off"></i>
                            Login
                        </a>
                    </div>
                    <div class="pad5A button-pane button-pane-alt text-center">
                        <a href="<%=gc%>/member/logout" class="btn display-block font-normal btn-danger">
                            <i class="glyph-icon icon-power-off"></i>
                            Logout
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- .container -->
</div><!-- .top-bar -->
</div>
<div class="main-header bg-header wow fadeInDown">
    <div class="container">
    <a href="<%=gc%>/member/memberHome" class="header-logo" title="EcoCoffee - Create perfect RECYLCE Coffee"></a><!-- .header-logo -->
    <div class="right-header-btn">
        <div id="mobile-navigation">
            <button id="nav-toggle" class="collapsed" data-toggle="collapse" data-target=".header-nav"><span></span></button>
        </div>
    </div><!-- .header-logo -->
    <ul class="header-nav collapse">
        <li>
            <a href="#" title="Homepages">
                홈페이지소개
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <ul>
                <li><a href="index.html" title="Homepage example 1"><span>홈페이지 소개</span></a></li>
                <li><a href="index-alt.html" title="Homepage example 2"><span>커피박 소개</span></a></li>
                <li><a href="index-alt-2.html" title="Homepage example 3"><span>에코마일리지</span></a></li>
                
            </ul>
        </li>
        <li>
            <a href="#" title="Hero sections">
               가맹점소개
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <ul class="footer-nav">
                <li><a href="hero-static.html" title="Static hero sections"><span>가맹 카페</span></a></li>
                <li><a href="hero-alignments.html" title="Hero alignments"><span>가맹 수거업체</span></a></li>
           
            </ul>
        </li>
       <li>
            <a href="#" title="Components">
                서비스 이용하기
                <i class="glyph-icon icon-angle-down"></i>
            </a>
            <ul>
                <li>
                    <a href="content-boxes.html" title="Components framework">
                        <span>예약관련</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="<%=gc%>/menu/product" title="Components">
               상품페이지
            </a>
        </li>
        <li>
            <a href="#" title="ContactUs">
                Contact US               
            </a>
        </li>
       
    </ul><!-- .header-nav -->
</div><!-- .container -->
</div><!-- .main-header -->

<div class="hero-box hero-box-smaller full-bg-13 font-inverse" data-top-bottom="background-position: 50% 0px;" data-bottom-top="background-position: 50% -600px;">
       
    <div class="container">
        <h1 class="hero-heading wow fadeInDown" data-wow-duration="0.6s">ECO Coffee</h1>
        <p class="hero-text wow bounceInUp" data-wow-duration="0.9s" data-wow-delay="0.2s">The most complete user interface framework that can be used to create stunning admin dashboards and presentation websites.</p>
    </div>
    <div class="hero-overlay bg-black"></div>
</div>
<div class="pad15L pad15R mrg25T">

<div id="page-title">
    <h2>JOIN OUR HOMEPAGE</h2>
    <p>Welcome To ECO COFFEE</p>
</div>

<div class="panel">
    <div class="panel-body">
        <h3 class="title-hero">
            JOIN : ${member.custid}
        </h3>
        <div class="example-box-wrapper">
            <form class="form-horizontal bordered-row" id="demo-form" data-parsley-validate="">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">PASSWORD</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.password}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">NAME</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.custname}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">COMPANY NAME</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.name}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">TEL</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.custtel}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">COMPANY TEL</label>
                            <div class="col-sm-6">
                               <input type="text" value="${member.tel}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">COMPANY <br> POST CODE</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.postcode}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">COMPANY <br> ROAD ADDRESS</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.road}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">COMPANY <br> JIBUN ADDRESS</label>
                            <div class="col-sm-6">
                            <input type="text" value="${member.jibun}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">COMPANY IDNO</label>
                            <div class="col-sm-6">
                                <input type="text" value="${member.idno}" readonly="readonly" required class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">DIVISION</label>
                            <div class="col-sm-6">
                                <div class="checkbox">
                                    <input type="text" value="${member.division}" readonly="readonly" required class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="display:block;">
							<label class="col-sm-3 control-label">Lat</label>
							<div class="col-sm-6">
									<input type="text" value="${member.lat}" readonly="readonly" required class="form-control"> 
							</div>
							<br><br>
							<label class="col-sm-3 control-label">Lng</label>
								<div class="col-sm-6">
									<input type="text" value="${member.lng}" readonly="readonly" required class="form-control"> 
								</div>
							
							<!-- map이 있어야 좌표가 찍힘. 반드시 필요해!! -->	
							<div id="map"
									style="width: 300px; height: 300px; margin-top: 10px; display:none"></div>
							</div>
                        
                        
                        
                        
                        
                    </div>
                </div>
                <div class="bg-default content-box text-center pad20A mrg25T">
                    <button type = "button" class="btn btn-lg btn-primary" onclick="location.href='<%=gc%>/member/login'">LOGIN</button>
                </div>
            </form>
        </div>
    </div>
</div>
</div>

<div class="main-footer bg-gradient-4 clearfix">
	<div class="footer-pane bg-gradient-4">
        <div class="container clearfix">
            <div class="logo">&copy; 2017 SCIT 33rd A Class ECO COFFEE All Rights Reserved.</div>
            <div class="footer-nav-bottom">
              	Contact us.&nbsp;&nbsp;
					<i class="glyph-icon icon-envelope-o"></i>
                    <a href="https://www.instagram.com/coffeerecycle/" title="">Instagram Message</a>
            </div>
        </div>
   </div>
</div>

<!-- Skrollr -->

<script type="text/javascript" src="../resources/assets/widgets/skrollr/skrollr.js"></script>

<!-- Owl carousel -->

<script type="text/javascript" src="../resources/assets/widgets/owlcarousel/owlcarousel.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/owlcarousel/owlcarousel-demo.js"></script>

<!-- HG sticky -->

<script type="text/javascript" src="../resources/assets/widgets/sticky/sticky.js"></script>

<!-- WOW -->

<script type="text/javascript" src="../resources/assets/widgets/wow/wow.js"></script>

<!-- VideoBG -->

<script type="text/javascript" src="../resources/assets/widgets/videobg/videobg.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/videobg/videobg-demo.js"></script>

<!-- Mixitup -->

<script type="text/javascript" src="../resources/assets/widgets/mixitup/mixitup.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/mixitup/isotope.js"></script>


<!-- Widgets init for demo -->

<script type="text/javascript" src="../resources/assets/js-init/frontend-init.js"></script>

<!-- WIDGETS -->

<script type="text/javascript" src="../resources/assets/bootstrap/js/bootstrap.js"></script>

<!-- Bootstrap Dropdown -->

<script type="text/javascript" src="../resources/assets/widgets/dropdown/dropdown.js"></script>

<!-- Bootstrap Tooltip -->

<script type="text/javascript" src="../resources/assets/widgets/tooltip/tooltip.js"></script>

<!-- Bootstrap Popover -->

<script type="text/javascript" src="../resources/assets/widgets/popover/popover.js"></script>

<!-- Bootstrap Progress Bar -->

<script type="text/javascript" src="../resources/assets/widgets/progressbar/progressbar.js"></script>

<!-- Bootstrap Buttons -->

<script type="text/javascript" src="../resources/assets/widgets/button/button.js"></script>

<!-- Bootstrap Collapse -->

<script type="text/javascript" src="../resources/assets/widgets/collapse/collapse.js"></script>

<!-- Superclick -->

<script type="text/javascript" src="../resources/assets/widgets/superclick/superclick.js"></script>

<!-- Input switch alternate -->

<script type="text/javascript" src="../resources/assets/widgets/input-switch/inputswitch-alt.js"></script>

<!-- Slim scroll -->

<script type="text/javascript" src="../resources/assets/widgets/slimscroll/slimscroll.js"></script>

<!-- Slidebars -->

<script type="text/javascript" src="../resources/assets/widgets/slidebars/slidebars.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/slidebars/slidebars-demo.js"></script>

<!-- PieGage -->

<script type="text/javascript" src="../resources/assets/widgets/charts/piegage/piegage.js"></script>
<script type="text/javascript" src="../resources/assets/widgets/charts/piegage/piegage-demo.js"></script>

<!-- Screenfull -->

<script type="text/javascript" src="../resources/assets/widgets/screenfull/screenfull.js"></script>

<!-- Content box -->

<script type="text/javascript" src="../resources/assets/widgets/content-box/contentbox.js"></script>

<!-- Overlay -->

<script type="text/javascript" src="../resources/assets/widgets/overlay/overlay.js"></script>

<!-- Widgets init for demo -->

<script type="text/javascript" src="../resources/assets/js-init/widgets-init.js"></script>

<!-- Theme layout -->

<script type="text/javascript" src="../resources/assets/themes/admin/layout.js"></script>

<!-- Theme switcher -->

<script type="text/javascript" src="../resources/assets/widgets/theme-switcher/themeswitcher.js"></script>  
</body>
</html>