 <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box">
                            <a href="index.html" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="assets/images/logo-sm.png" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/logo-dark.png" alt="" height="20">
                                </span>
                            </a>

                            <a href="index.html" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="assets/images/logo-sm.png" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/logo-light.png" alt="" height="20">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect vertical-menu-btn">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>

                        <!-- App Search-->
                        <form class="app-search d-none d-lg-block">
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="uil-search"></span>
                            </div>
                        </form>
                    </div>

                    <div class="d-flex">

                        <div class="dropdown d-inline-block d-lg-none ms-2">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="uil-search"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-search-dropdown">
                    
                                <form class="p-3">
                                    <div class="m-0">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                                <i class="uil-cog"></i>
                            </button>
                        </div>
            
                    </div>
                </div>
            </header>

            <!-- ========== Left Sidebar Start ========== -->
            <div class="vertical-menu">

                <!-- LOGO -->
                <div class="navbar-brand-box">
                    <a href="index.html" class="logo logo-dark">
                        <span class="logo-sm">
                            <img src="assets/images/logo-sm.png" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="assets/images/logo-dark.png" alt="" height="20">
                        </span>
                    </a>

                    <a href="index.html" class="logo logo-light">
                        <span class="logo-sm">
                            <img src="assets/images/logo-sm.png" alt="" height="22">
                        </span>
                        <span class="logo-lg">
                            <img src="assets/images/logo-light.png" alt="" height="20">
                        </span>
                    </a>
                </div>

                <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect vertical-menu-btn">
                    <i class="fa fa-fw fa-bars"></i>
                </button>

                <div data-simplebar class="sidebar-menu-scroll">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu">
                            <li class="menu-title">Menu</li>

                            <li>
                                <a href="dashboard">
                                   <!--  <i class="uil-home-alt"></i><span class="badge rounded-pill bg-primary float-end">01</span> -->
                                    <span>Dashboard</span>
                                </a>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-window-section"></i> -->
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <span>Administrator</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="true">
                                    <li>
                                        <a href="javascript: void(0);" class="has-arrow">Revenue</a>
                                        <ul class="sub-menu" aria-expanded="true">
                                            <li><a href="monthlyrevenue">MonthlyRevenue</a></li>
                                           <!--  <li><a href="layouts-compact-sidebar.html">Compact Sidebar</a></li>
                                            <li><a href="layouts-icon-sidebar.html">Icon Sidebar</a></li>
                                            <li><a href="layouts-boxed.html">Boxed Width</a></li>
                                            <li><a href="layouts-preloader.html">Preloader</a></li>
                                            <li><a href="layouts-colored-sidebar.html">Colored Sidebar</a></li> -->
                                        </ul>
                                    </li>
                                   
                                </ul>
                            </li>
							<li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-envelope"></i> -->
                                    <i class="fa fa-address-card" aria-hidden="true"></i>
                                    <span>Master</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="branch">Manage Branch</a></li>
                                    <li><a href="rights">Rights</a></li>
                                </ul>
                            </li>
							<li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-envelope"></i> -->
                                    <i class="fa fa-window-restore" aria-hidden="true"></i>
                                    <span>Advertisement</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="addadvertisement">Add Advertisement</a></li>
                                    <li><a href="viewadvertisement">View Advertisement</a></li>
                                </ul>
                            </li>
								 <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-envelope"></i> -->
                                    <i class="fa fa-window-restore" aria-hidden="true"></i>
                                    <span>Coupon</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="addCoupon">Add Coupon</a></li>
                                    <li><a href="viewCoupon">View Coupon</a></li>
                                </ul>
                            </li>
                          
                              <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-store"></i> -->
                                    <i class="fa fa-registered" aria-hidden="true"></i>
                                    <span>Registrations</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="viewregistration">View Registration</a></li>
                                    <li><a href="viewsurveyregistration">Survey </a></li>
                                   
                                </ul>
                            </li>

                         
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                   <!--  <i class="uil-store"></i> -->
                                   <i class="fa fa-street-view" aria-hidden="true"></i>
                                    <span>Employee</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="createEmployee">CreateEmployee</a></li>
                                    <li><a href="viewemployee">ViewEmployee </a></li>
                                   
                                </ul>
                            </li>
								
								<li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-user-circle"></i> -->
                                    <i class="fa fa-tasks" aria-hidden="true"></i>
                                    <span>Product</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                 <li><a href="addproduct">Add Product</a></li>
                                    <li><a href="forapprova">For Approval</a></li>
                                    <li><a href="viewchicksproduct">View Chick Products</a></li>
                                    <li><a href="viewreadybirdproduct">View Ready Bird Product</a></li>
                                    
                                </ul>
                            </li>
                            
                          
                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <!-- <i class="uil-store"></i> -->
                                   <i class="fa fa-credit-card" aria-hidden="true"></i>
                                    <span> Rate</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="dailyrates">Daily Rate</a></li>
                                   
                                </ul>
                            </li>
                             <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                                    <!-- <i class="uil-store"></i> -->
                                    <span> Orders</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="activeOrders">Active Orders</a></li>
                                    <li><a href="cancelledOrders">Cancellations</a></li>
                                    <!-- <li><a href="orderhistory">OrderHistory</a></li> -->
                                    <li><a href="trackorder">OrderTrack</a></li>
                                    
                                </ul>
                            </li>

                        

                           
                             <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                   <i class="fa fa-cube" aria-hidden="true"></i>
                                    <span>Category</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="createCategory">Create Category</a></li>
                                    <li><a href="viewcategory">View Category</a></li>
                                </ul>
                            </li>

                           <!--  <li>
                                <a href="createCategory" class="has-arrow waves-effect">
                                    <i class="uil-book-alt"></i>
                                    <span>Category</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="contacts-grid.html">Add Category</a></li>
                                    <li><a href="contacts-list.html">View Category</a></li>
                                    
                                </ul>
                            </li> -->

                           <!--  <li class="menu-title">Pages</li> -->

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                   <i class="fa fa-sitemap" aria-hidden="true"></i>
                                    <span>Sub-Category</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="createSubcategory">Add Sub-Category</a></li>
                                    <li><a href="viewSubcategory">View Sub-Category</a></li>
                                    <!-- <li><a href="editSubcategory">Edit Sub-Category</a></li> -->
                                  <!--   <li><a href="auth-lock-screen.html">Lock Screen</a></li> -->
                                </ul>
                            </li>
                             <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                   <i class="fa fa-th-large" aria-hidden="true"></i>
                                    <span>Blogs</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="createBlog">Create Blogs</a></li>
                                    <li><a href="viewBlog">View Blogs</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                               <i class="fa fa-arrows-alt" aria-hidden="true"></i>
                                    <span>Chicken Shop Teaser</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="chicken">Add Chicken Teaser</a></li>
                                    <li><a href="viewteaser">View Chicken Teaser</a></li>
                                </ul>
                            </li>
                               <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                   <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                    <span>Commission</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="addcommission">Add Commission</a></li>
                                    
                                </ul>
                            </li>
                            
                          <!--   <li class="menu-title">Components</li> -->

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                    <i class="fa fa-question" aria-hidden="true"></i>
                                    <span>Faq</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                
                                    <li><a href="faq">Add Faq</a></li>
                                    <li><a href="viewfaq">View Faq</a></li>
    
                               </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="waves-effect">
                                    <i class="fa fa-text" aria-hidden="true">T&C</i>
                                    
                                    <span>Terms&Conditions</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="form-elements.html">Add Terms & Conditions</a></li>
                                    
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="has-arrow waves-effect">
                                <i class="fa fa-object-group" aria-hidden="true"></i>
                                    <span>Gallery</span>
                                </a>
                                <ul class="sub-menu" aria-expanded="false">
                                    <li><a href="uploadgallery">Add Gallery</a></li>
                                    <li><a href="viewgallery">View Gallery</a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
            <!-- Left Sidebar End -->