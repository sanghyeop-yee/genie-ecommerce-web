<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <title>Genie 페이지</title>
  <!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'><link rel="stylesheet" href="./style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" type="text/css"
  href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/themes/vertical-modern-menu-template/style.css">
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/pages/dashboard-modern.css">
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/pages/intro.css">
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/laravel-custom.css">
<link rel="stylesheet" type="text/css" href="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/css/custom/custom.css">
<!-- END: Custom CSS-->

<style>
.icon-block {
  padding: 0 15px;
}
.icon-block .material-icons {
  font-size: inherit;
}

.height-64px {
  height: 64px;
  line-height: 64px;
}

nav .sidenav-trigger i {
  height: 64px;
  line-height: 64px;
}

#PwdEdit {
  background-color: white; 
  color: black; 
  border: 2px solid #7600bc;
  padding: 10px;
  border-radius: 8px;
}

#PwdEdit:hover {
  background-color: #7600bc;
  color: white;
}

#formSubmit {
  background-color: white; 
  color: black; 
  border: 2px solid #7600bc;
  padding: 10px;
  border-radius: 8px;
}

#formSubmit:hover {
  background-color: #7600bc;
  color: white;
}
</style>

<script>
 
</script>





<body>

<body
  class="vertical-layout vertical-menu-collapsible page-header-dark vertical-modern-menu 2-columns  "
  data-open="click" data-menu="vertical-modern-menu" data-col="2-columns">

  <!-- BEGIN: Header-->
  <header class="page-topbar" id="header">
    <div class="navbar navbar-fixed ">
  <nav
    class="navbar-main navbar-color nav-collapsible no-shadow nav-expanded sideNav-lock  navbar-dark gradient-45deg-indigo-purple ">
    <div class="nav-wrapper">
      <div class="header-search-wrapper hide-on-med-and-down">
        <i class="material-icons">search</i>
        <input class="header-search-input z-depth-2" type="text" name="Search" placeholder="Explore Materialize"
          data-search="template-list">
        <ul class="search-list collection display-none"></ul>
      </div>
      <ul class="navbar-list right">
        <li class="dropdown-language">
          <a class="waves-effect waves-block waves-light translation-button" href="#"
            data-target="translation-dropdown">
            <span class="flag-icon flag-icon-gb"></span>
          </a>
        </li>
        <li class="hide-on-med-and-down">
          <a class="waves-effect waves-block waves-light toggle-fullscreen" href="javascript:void(0);">
            <i class="material-icons">settings_overscan</i>
          </a>
        </li>
        <li class="hide-on-large-only search-input-wrapper">
          <a class="waves-effect waves-block waves-light search-button" href="javascript:void(0);">
            <i class="material-icons">search</i>
          </a>
        </li>
        <li>
          <a class="waves-effect waves-block waves-light notification-button" href="javascript:void(0);"
            data-target="notifications-dropdown">
            <i class="material-icons">notifications_none<small class="notification-badge">5</small></i>
          </a>
        </li>
        <li>
          <a class="waves-effect waves-block waves-light sidenav-trigger" href="#" data-target="slide-out-right">
            <i class="material-icons">format_indent_increase</i>
          </a>
        </li>
      </ul>
      
      <!-- notifications-dropdown-->
      <ul class="dropdown-content" id="notifications-dropdown">
        <li>
          <h6>NOTIFICATIONS<span class="new badge">5</span></h6>
        </li>
        <li class="divider"></li>
        <li>
          <a class="black-text" href="javascript:void(0)">
            <span class="material-icons icon-bg-circle cyan small">add_shopping_cart</span>
            카트에 새로운 상품이 담겼습니다.
          </a>
          <time class="media-meta grey-text darken-2" datetime="2015-06-12T20:50:48+08:00">2 hours ago</time>
        </li>
        <li>
          <a class="black-text" href="javascript:void(0)">
            <span class="material-icons icon-bg-circle red small">stars</span>
            2시간 전에 댓글을 남겼습니다.
          </a>
          <time class="media-meta grey-text darken-2" datetime="2015-06-12T20:50:48+08:00">3 days ago</time>
        </li>
        <li>
          <a class="black-text" href="javascript:void(0)">
            <span class="material-icons icon-bg-circle amber small">trending_up</span>
            Generate monthly report
          </a>
          <time class="media-meta grey-text darken-2" datetime="2015-06-12T20:50:48+08:00">1 week ago</time>
        </li>
      </ul>
    </div>
    <nav class="display-none search-sm">
      <div class="nav-wrapper">
        <form id="navbarForm">
          <div class="input-field search-input-sm">
            <input class="search-box-sm mb-0" type="search" required="" placeholder='Explore Materialize' id="search"
              data-search="template-list">
            <label class="label-icon" for="search">
              <i class="material-icons search-sm-icon">search</i>
            </label>
            <i class="material-icons search-sm-close">close</i>
            <ul class="search-list collection search-list-sm display-none"></ul>
          </div>
        </form>
      </div>
    </nav>
  </nav>
</div> 
</header>
  <!-- END: Header-->

  <!-- BEGIN: SideNav-->
  <aside
  class="sidenav-main nav-expanded nav-lock nav-collapsible  sidenav-active-square  sidenav-light">
  <div class="brand-sidebar">
    <h1 class="logo-wrapper">
      <a class="brand-logo darken-1" href="/">
                        <img class="hide-on-med-and-down" src="/image/logo_western.png" alt="materialize logo" />
        <img class="show-on-medium-and-down hide-on-med-and-up" src="/image/logo_western.png"
          alt="materialize logo" />

                  <span class="logo-text hide-on-med-and-down">
                    ${vo.user_name} ${svo.ceo_name}님
                  </span>
      </a>
    </h1>
  </div>
  <ul class="sidenav sidenav-collapsible leftside-navigation collapsible sidenav-fixed menu-shadow" id="slide-out"
    data-menu="menu-navigation" data-collapsible="menu-accordion">
    



       <li class="navigation-header">
      <a class="navigation-header-text">Applications</a>
      <i class="navigation-header-icon material-icons">more_horiz</i>
    </li>
    <li class="bold ">
      <a class="waves-effect waves-cyan "
      href="/user/MyOrderList "
      >
      <i class="material-icons">check</i>
      <span class="menu-title" data-i18n="ToDo">주문목록/배송조회</span>
    </a>
  </li>
  <li class="bold ">
    <a class="waves-effect waves-cyan "
    href="/user/MyDeliveryList "
    >
    <i class="material-icons">content_paste</i>
    <span class="menu-title" data-i18n="File Manager">배송지 관리</span>
    </a>
  </li>
    <li class="bold ">
    <a class="waves-effect waves-cyan "
              href="/user/MyPage "
      >
      <i class="material-icons">mail_outline</i>
      <span class="menu-title" data-i18n="Mail">회원정보확인/수정</span>
              <span class="new badge pill pink accent-2 float-right mr-2">5</span>
            </a>
        </li>
      <%-- <li class="bold ">
      <a class="waves-effect waves-cyan "
                href="/user/MyInquiryList "
        >
        <i class="material-icons">import_contacts</i>
        <span class="menu-title" data-i18n="Contacts">나의 문의사항</span>
              </a>
          </li> --%>



    <li class="navigation-header">
      <a class="navigation-header-text">공지사항 </a>
      <i class="navigation-header-icon material-icons">more_horiz</i>
    </li>

    <li class="bold ">
      <a class="waves-effect waves-cyan "
                href="/"
        target=&quot;_blank&quot;>
        <i class="material-icons">help_outline</i>
        <span class="menu-title" data-i18n="Support">Support</span>
              </a>
          </li>
              </ul>
  <div class="navigation-background"></div>
  <a class="sidenav-trigger btn-sidenav-toggle btn-floating btn-medium waves-effect waves-light hide-on-large-only"
    href="#" data-target="slide-out"><i class="material-icons">menu</i></a>
</aside>  <!-- END: SideNav-->

  <!-- BEGIN: Page Main-->
  <div id="main">
    <div class="row">
                  
      <div
        class="content-wrapper-before  gradient-45deg-indigo-purple ">
      </div>
            

      <div class="col s12">
        <div class="container">
          
          <div class="section">
           <!-- Current balance & total transactions cards-->
           <div class="row vertical-modern-dashboard">
              <div class="col s12 m8 l8">
                 <!-- Current Balance -->
                 <div class="card animate fadeLeft">
                    <div class="card-content">

                    <div class="card-content pb-1">
                       <h4 class="card-title mb-0">주문목록 <i class="material-icons float-right">more_vert</i></h4>
                    </div>
                    <table class="subscription-table responsive-table highlight">
                       <thead>
                          <tr>
                             <th>주문번호</th>
                             <th>상품명</th>
                             <th></th>
                             <th></th>
                             <th>수량</th>
                             <th>가격</th>

                          </tr>
                       </thead>
                       <tbody>
                          <tr>
                             <td>${pVo.product_id}</td>
                             <td>${pVo.product_name}</td>
                             <td></td>
                             <td></td>
                             <td>${pVo.product_quantity}</td>
                             <td>${pVo.product_price}</td>
                          </tr>
                       </tbody>
                    </table>
            </div>
         </div>
      </div>
   </div>
   <!--/ Current balance & total transactions cards-->
</div>
                          </div>
        
        <div class="content-overlay"></div>
      </div>
    </div>
  </div>
  <!-- END: Page Main-->

  
  <!-- BEGIN: Footer-->
<footer
  class="page-footer footer gradient-shadow  footer-static   footer-dark gradient-45deg-indigo-purple ">
  <div class="footer-copyright">
    <div class="container">
      <span>&copy; 2022 <a href="/"
          target="_blank">Genie</a> All rights reserved.
      </span>
      <span class="right hide-on-small-only">
        <a href="/"></a>
      </span>
    </div>
  </div>
</footer>

<!-- END: Footer-->  
  <!-- BEGIN VENDOR JS-->
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/vendors.min.js"></script>
<!-- BEGIN VENDOR JS-->
<!-- BEGIN PAGE VENDOR JS-->
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartjs/chart.min.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartist-js/chartist.min.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartist-js/chartist-plugin-tooltip.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/vendors/chartist-js/chartist-plugin-fill-donut.min.js"></script>
<!-- END PAGE VENDOR JS-->
<!-- BEGIN THEME  JS-->
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/plugins.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/search.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/custom/custom-script.js"></script>
<script src="https://www.pixinvent.com/materialize-material-design-admin-template/laravel/demo-1/js/scripts/customizer.js"></script>
<!-- END THEME  JS-->

</body>