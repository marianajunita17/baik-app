<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Status Booking</title>
    <meta name="author" content="vecuro_themes">
    <meta name="description" content="Knirpse - Kindergarten & Baby Care Template">
    <meta name="keywords" content="Knirpse - Kindergarten & Baby Care Template">
    <meta name="robots" content="INDEX,FOLLOW">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Favicons - Place favicon.ico in the root directory -->
    <link rel="shortcut icon" href="{{ asset('assets/img/favicon.ico') }}" type="image/x-icon">
    <link rel="icon" href="{{ asset('assets/img/favicon.ico') }}" type="image/x-icon">

    <!--==============================
 All CSS File
 ============================== -->
    <!-- Google Fonts-->
    <link
        href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600;700;800&family=Catamaran:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
    <!-- Fontawesome Icon -->
    <link rel="stylesheet" href="{{ asset('assets/css/fontawesome.min.css') }}">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.min.css') }}">
    <!-- Slick Slider -->
    <link rel="stylesheet" href="{{ asset('assets/css/slick.min.css') }}">
    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">

</head>

<body>


    <!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->

    <!--************* Code Start From Here ************* -->

    <!--========== Preloader =========-->
    <div class="preloader">
        <button class="vs-btn wave-btn preloaderCls">Cancel Preloader </button>
        <div class="preloader-inner">
            <svg id="preloader" xmlns="http://www.w3.org/2000/svg" width="128" height="128" viewBox="0 0 128 128">
                <path id="Path_1" data-name="Path 1"
                    d="M64,0,40.08,21.9a10.98,10.98,0,0,0-5.05,8.75C34.37,44.85,64,60.63,64,60.63Z" fill="#ffb118" />
                <path id="Path_2" data-name="Path 2"
                    d="M128,64,106.12,40.1a10.97,10.97,0,0,0-8.75-5.05C83.17,34.4,67.4,64,67.4,64Z" fill="#80c141" />
                <path id="Path_3" data-name="Path 3"
                    d="M63.7,69.73a110.97,110.97,0,0,1-5.04-20.54c-1.16-8.7.68-14.17.68-14.17H97.37s-4.3-.86-14.47,10.1C79.84,48.42,63.7,69.7,63.7,69.7Z"
                    fill="#cadc28" />
                <path id="Path_4" data-name="Path 4"
                    d="M64,128l23.9-21.88a10.97,10.97,0,0,0,5.05-8.75C93.6,83.17,64,67.4,64,67.4Z" fill="#cf171f" />
                <path id="Path_5" data-name="Path 5"
                    d="M58.27,63.7a110.97,110.97,0,0,1,20.54-5.04c8.7-1.16,14.17.68,14.17.68V97.37s.86-4.3-10.1-14.47C79.58,79.84,58.3,63.7,58.3,63.7Z"
                    fill="#ec1b21" />
                <path id="Path_6" data-name="Path 6"
                    d="M0,64,21.88,87.9a10.97,10.97,0,0,0,8.75,5.05C44.83,93.6,60.6,64,60.6,64Z" fill="#018ed5" />
                <path id="Path_7" data-name="Path 7"
                    d="M64.3,58.27a110.97,110.97,0,0,1,5.04,20.54c1.16,8.7-.68,14.17-.68,14.17H30.63s4.3.86,14.47-10.1c3.06-3.3,19.2-24.58,19.2-24.58Z"
                    fill="#00bbf2" />
                <path id="Path_8" data-name="Path 8"
                    d="M69.73,64.34a111.023,111.023,0,0,1-20.55,5.05c-8.7,1.14-14.15-.7-14.15-.7V30.65s-.86,4.3,10.1,14.5c3.3,3.05,24.6,19.2,24.6,19.2Z"
                    fill="#f8f400" />
                <circle id="Ellipse_1" data-name="Ellipse 1" cx="2.03" cy="2.03" r="2.03"
                    transform="translate(61.97 61.97)" />
            </svg>
        </div>
    </div>

    <div class="popup-search-box d-none d-lg-block  ">
        <button class="searchClose border-theme text-theme"><i class="fal fa-times"></i></button>
        <form action="#">
            <input type="text" class="border-theme" placeholder="What are you looking for">
            <button type="submit"><i class="fal fa-search"></i></button>
        </form>
    </div>

    <!-- Side menu start -->
    <div class="sidemenu-wrapper">
        <div class="sidemenu-content">
            <button class="closeButton sideMenuCls"><i class="far fa-times"></i></button>
            <div class="widget footer-widget">
                <div class="vs-widget-about">
                    <div class="about-logo">
                        <a href="index.html">
                            <img src="{{ asset('assets/img/logo.svg') }}" alt="Knirpse">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Side menu end -->

    <!--======== Header ========-->
    <header class="vs-header">
        <!--header-top-wrapper start-->
        <div class="header-top-area d-none d-lg-block">
            <div class="container">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto">
                        <div class="header-links">
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="header-social">
                            <ul>
                                <li><a href="#">Profil BAIK</a></li>
                                <li><a href="#">BAIK Edukasi</i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--header-top-wrapper end-->
        <!--vs-main-menu-wrapper start-->
        <div class="sticky-wrapper">
            <div class="sticky-active">
                <div class="header-menu-area">
                    <div class="container position-relative">
                        <div class="row gx-20 align-items-center justify-content-between">
                            <div class="col-auto">
                                <div class="header-logo">
                                    <a href="index.html">
                                        <img src="{{ asset('assets/img/logo.svg') }}" alt="Knirpse">
                                    </a>
                                </div>
                            </div>
                            <div class="col-auto">
                                <nav class="main-menu menu-style1 d-none d-lg-inline-block">
                                    <ul>
                                        <li class="menu-item-has-children">
                                            <a href="{{ route('home') }}">Home</a>
                                        </li>
                                        <li><a href="profile">About Us</a></li>
                                        </li>
                                        <li><a href="{{ route('status-booking') }}">Status Janji Temu</a></li>
                                    </ul>
                                </nav>
                                <button type="button" class="vs-menu-toggle d-block d-lg-none"><i
                                        class="far fa-bars"></i> Menu</button>
                            </div>
                            <div class="col-auto d-none d-xl-block">
                                <div class="header-button">
                                    <form action="/logout" method="POST">
                                        @csrf
                                        <button class="vs-btn wave-btn">Logout</button>
                                    </form>
                                    <!-- <button type="button" class="searchBoxToggler icon-btn"><i
                                            class="far fa-search"></i></button> -->
                                    <button type="button" class="sideMenuToggler icon-btn"><i
                                            class="fal fa-bars"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--vs-main-menu-wrapper end-->
    </header>
    <!--======== / Header ========-->

    <!--======== Wishlist Section ========-->
    <div class="wishlist-area">
        <div class="container">
            <div class="tinv-wishlist woocommerce tinv-wishlist-clear">
                <div class="tinv-header">
                    <h2 class="mb-30">Status Janji Temu</h2>
                </div>
                {{-- <form action="#" method="post" autocomplete="off"> --}}
                <table class="tinvwl-table-manage-list">
                    <thead>
                        <tr>
                            {{-- <th class="product-cb">
                                    <input type="checkbox" class="global-cb" title="Select all for bulk action">
                                </th> --}}
                            {{-- <th class="product-remove"></th> --}}
                            <th class="product-thumbnail">Kode Janji Temu</th>
                            <th class="product-name">
                                <span class="tinvwl-full">Nama Konselor</span>
                            </th>
                            <th class="product-price">Nominal Bayar</th>
                            <th class="product-date">Tanggal Janji Temu</th>
                            <th class="product-stock">Status Janji Temu</th>
                            @if ($janjiTemu->status == -1)
                                <th class="product-stock">Alasan</th>
                            @endif
                            {{-- <th class="product-action">&nbsp;</th> --}}
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($janji_temu as $jt)
                            <tr class="wishlist_item">
                                <td class="product-thumbnail">
                                    <a href="">{{ $jt->id }}</a>
                                </td>
                                <td class="product-name">
                                    <a href="">{{ $jt->konselor->nama_konselor }}</a>
                                </td>
                                <td class="product-price">
                                    <span class="woocommerce-Price-amount amount"><bdi><span
                                                class="woocommerce-Price-currencySymbol">Rp.</span>
                                            {{ $jt->nominal }}</bdi></span>
                                </td>
                                <td class="product-date">
                                    <time
                                        class="entry-date">{{ date('j F Y H:i', strtotime($jt->tgl_konsultasi_mulai)) }}</time>
                                </td>
                                <td class="product-stock">
                                    <p class="stock in-stock">
                                        <span></span><span class="tinvwl-txt">@statusText($jt->status)</span>
                                    </p>
                                </td>
                                @if ($janjiTemu->status == -1)
                                    <td class="product-stock">
                                        <p class="stock in-stock">
                                            <span></span><span class="tinvwl-txt">{{ $jt->alasan }}</span>
                                        </p>
                                    </td>
                                @endif
                                {{-- <td class="product-action">
                                    <button class="button vs-btn alt" name="tinvwl-add-to-cart" value="58" title="Add to Cart">
                                        <i class="fal fa-shopping-cart"></i><span class="tinvwl-txt">Add to Cart</span>
                                    </button>
                                </td> --}}
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                </form>
            </div>
        </div>
    </div>
    <!--======== / Wishlist Section ========-->

    <!--==============================
 Footer Area
 ==============================-->

    <!--********************************
   Code End  Here
 ******************************** -->


    <!-- Scroll To Top -->
    <a href="#" class="scrollToTop scroll-btn"><i class="far fa-arrow-up"></i></a>
    <!--==============================
        All Js File
    ============================== -->
    <!-- Jquery -->
    <script src="{{ asset('assets/js/jquery-3.5.0.min.js') }}"></script>
    <!-- Slick Slider -->
    <script src="{{ asset('assets/js/slick.min.js') }}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <!-- Magnific Popup -->
    <script src="{{ asset('assets/js/jquery.magnific-popup.min.js') }}"></script>
    <!-- Isotope Filter -->
    <script src="{{ asset('assets/js/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/js/isotope.pkgd.min.js') }}"></script>
    <!-- Counter up  -->
    <script src="{{ asset('assets/js/jquery.counterup.min.js') }}"></script>
    <!-- Parallax  -->
    <script src="{{ asset('assets/js/parallax.min.js') }}"></script>
    <!-- Custom Carousel -->
    <script src="{{ asset('assets/js/vscustom-carousel.min.js') }}"></script>
    <!-- Range Slider -->
    <script src="{{ asset('assets/js/jquery-ui.min.js') }}"></script>
    <!-- WOW JS (Animation JS) -->
    <script src="{{ asset('assets/js/wow.min.js') }}"></script>
    <!-- Form Js -->
    <script src="{{ asset('assets/js/ajax-mail.js') }}"></script>
    <!-- Main Js File -->
    <script src="{{ asset('assets/js/main.js') }}"></script>

</body>

</html>
