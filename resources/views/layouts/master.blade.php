<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ECON || Export Council of Nepal</title>

    <link rel="icon" type="image/png" href="website/images/favicon.png">

    <!-- Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap' rel="stylesheet">
    <!-- Css-->
    <link rel="stylesheet" href="website/css/bootstrap.min.css">
    <link rel="stylesheet" href="website/css/owl.carousel.min.css">
    <link rel="stylesheet" href="website/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="website/css/magnific-popup.css">
    <link rel="stylesheet" href="website/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="website/css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="website/css/agrikol_iconl.css">
    <!-- Template styles -->
    <link rel="stylesheet" href="website/css/style.css">
    <link rel="stylesheet" href="website/css/responsive.css">

</head>

<body>

    <div class="preloader">
        <img src="website/images/econ.png" class="preloader__image" alt="">
    </div>
    <!-- /.preloader -->

    <div class="page-wrapper">


        <div class="site-header__header-one-wrap">

            <div class="topbar-one">
                <div class="topbar_bg" style="background-image: url(website/images/header-bg.png)"></div>
                <div class="container">
                    <div class="topbar-one__left">
                        <a href="mailto:info@nepalexport.org.np"><span class="icon-message"></span>
                            info@nepalexport.org.np</a>
                        <a href="tel:97714441337"><span class="icon-phone-call"></span>+977 1 4441337</a>
                    </div>
                    <div class="topbar-one__middle">
                        <a href="/index" class="main-nav__logo">
                            <img src="website/images/econ.png" class="main-logo" alt="Awesome Image" />
                        </a>
                    </div>
                    <div class="topbar-one__right">
                        <div class="topbar-one__social">
                            <a href="#"><i class="fab fa-facebook-square"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-dribbble"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <header class="main-nav__header-one">
                <nav class="header-navigation stricky">
                    <div class="container clearfix">
                        <div class="main-nav__left">
                            <a href="#" class="side-menu__toggler">
                                <i class="fa fa-bars"></i>
                            </a>
                        </div>
                        <div class="main-nav__main-navigation">
                            <ul class=" main-nav__navigation-box">
                                <li class="current">
                                    <a href="/">Home</a>
                                </li>
                                <!--------start menu----------->
                                @foreach ($menus as $menu)
                                    <li><a href="{{ route('category', $menu->nav_name) }}">{{ $menu->caption }}</a>
                                        <ul>

                                            @foreach($menu->childs as $submenu)
                                                @if($submenu->page_type=="Normal" || $menu->nav_name=="department" || $submenu->page_type=="Photo Gallery" || $submenu->page_type=="Video Gallery" || $submenu->page_type=="Group")
                                                    <li><a href="{{route('subcategory',[$menu->nav_name,$submenu->nav_name])}}">{{$submenu->caption}}</a></li>
                                                @endif
                                            @endforeach
                                        </ul>
                                         
                                     </li>
                                @endforeach
                                <li class="dropdown">
                                    <a href="#">Member</a>
                                    <ul>
                                        <li><a href="memberlist">Members List</a></li>
                                        <li><a href="memberform">Membership Form</a></li>
                                    </ul>
                                </li>

                            </ul>
                            <!----------end menu--------------->
                        </div><!-- /.navbar-collapse -->
                    </div>
                </nav>
            </header>
        </div>

        @yield('content')
        <!---------------- notice scroller -------------->
        <!---------------- slider Section ---------------->
        <!---------------- About Section ----------------->
        <!---------------- Message Section ---------------->
        <!---------------- End Message Section ------------>
        <!----------------- EXPORTABLE ITEMS -------------->
        <!------------------ NEWS & EVENTS ----------------->
        <!----------------- Partner Section --------------->
        <!-- Footer -->
        <footer class="site-footer">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-xl-5 col-lg-5 col-md-6">
                        <div class="footer-widget__column footer-widget__about">
                            <div class="footer-widget_about_text">
                                <div class="logo">
                                    <a href="index"><img src="website/images/econ-fit.png" alt="logo"></a>
                                </div>
                                <p>Export Council of Nepal, a council of the Nepalese trading firms/companies
                                    (traditional garment, handicraft and woolen goods exporters), was established in
                                    1996 by a group of that kind of business entrepreneurs who have been regularly
                                    involving in export business.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="footer-widget__column footer-widget__link">
                            <div class="footer-widget__title">
                                <h3>Useful Links</h3>
                            </div>
                            <ul class="footer-widget__links-list list-unstyled">
                                <li><a href="inner">About Us</a></li>
                                <li><a href="inner">Vision & Mission</a></li>
                                <li><a href="inner">Managment Team</a></li>
                                <li><a href="inner">Advisory Committee</a></li>
                                <li><a href="inner">Services</a></li>
                                <li><a href="inner">Activities</a></li>
                                <li><a href="inner">Export News</a></li>
                                <li><a href="inner">Eduction of Export</a></li>
                                <li><a href="inner">Membership Document</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="footer-widget__column footer-widget__contact">
                            <div class="footer-widget__title">
                                <h3>Contact</h3>
                            </div>
                            <div class="footer-widget_contact">
                                <p>Post Box No:13943</p>
                                <p>Bhagabatisthan, Thamel <br>Kathmandu, Nepal.</p>
                                <p><a href="mailto:info@nepalexport.org.np">info@nepalexport.org.np</a>
                                    <a href="mailto:econ.exportcouncil@gmail.com">econ.exportcouncil@gmail.com</a>
                                </p>
                                <a href="tel:97714441337">+977 1 4441337</a> / <a
                                    href="tel:97714412251">+977-1-4412251</a>
                                <div class="site-footer__social">
                                    <a href="#"><i class="fab fa-facebook-square"></i></a>
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-instagram"></i></a>
                                    <a href="#"><i class="fab fa-dribbble"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->

        <!-- Footer Bottom -->
        <div class="site-footer_bottom">
            <div class="container">
                <div class="site-footer_bottom_copyright">
                    <p>@ All copyright 2022, Export Council of Nepal</p>
                </div>
                <div class="site-footer_bottom_menu">
                    <ul class="list-unstyled">
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Use</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- End Footer Bottom -->

    </div><!-- /.page-wrapper -->


    <a href="#" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa fa-angle-up"></i></a>

    <div class="side-menu__block">
        <div class="side-menu__block-overlay custom-cursor__overlay">
            <div class="cursor"></div>
            <div class="cursor-follower"></div>
        </div><!-- /.side-menu__block-overlay -->
        <div class="side-menu__block-inner ">
            <div class="side-menu__top justify-content-end">
                <a href="#" class="side-menu__toggler side-menu__close-btn"><img
                        src="website/images/close-1-1.png" alt=""></a>
            </div><!-- /.side-menu__top -->

            <nav class="mobile-nav__container">
                <!-- content is loading via js -->
            </nav>

            <div class="side-menu__sep"></div><!-- /.side-menu__sep -->
        </div>
    </div>

    <script src="website/js/jquery.min.js"></script>
    <script src="website/js/bootstrap.bundle.min.js"></script>
    <script src="website/js/owl.carousel.min.js"></script>
    <script src="website/js/jquery.magnific-popup.min.js"></script>
    <script src="website/js/TweenMax.min.js"></script>
    <script src="website/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="website/js/marquee.js"></script>
    <script src="website/js/theme.js"></script>

    <!-- template scripts -->
    {{-- <script src="website/js/theme.js"></script> --}}

    <script type="text/javascript">
        $(function() {
            createMarquee({
                duration: 100000,
            });
        });
    </script>

</body>

</html>
