@extends('layouts.main')

@section('container-content')
<!--======== About Section ========-->
<div class="breadcumb-wrapper" data-bg-src="{{ asset('assets/img/bg/bg-home.jpg') }}">
    <div class="container">
        <div class="breadcumb-content">
            <h1 class="breadcumb-title">Welcome, {{ $cms_users->nama_pasien }} </h1>
        </div>
    </div>
</div>
<!--======== / About Section ========-->

<!--======== Shop Section ========-->
<section class="vs-product-wrapper space-page">
    <div class="container">
        <div class="vs-sort-bar mb-40">
            <div class="row gy-20 align-items-center">
                <div class="col-xl-3 col-md-4">
                    <div class="product-search">
                        <div class="widget widget_search">
                            <form class="search-form">
                                <input type="text" placeholder="Search Here">
                                <button type="submit"><i class="far fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-auto">
                    <span class="show-product">Showing 1–9 of 12 results</span>
                </div>
                <div class="col-sm-auto ms-auto">
                    <select class="form-select sortby" name="sortby" id="sortby">
                        <option>Sort by Latest</option>
                        <option>Sort by Oldest</option>
                        <option>Sort by Ascending</option>
                        <option>Sort by Descending</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row gy-40 flex-column-reverse flex-lg-row">
            <div class="col-xl-3 col-lg-4">
                <div class="sidebar-area shop-sidebar">
                    <div class="widget widget_price_filter">
                        <h4 class="widget_title">Price Filter</h4>
                        <div class="price_slider_wrapper">
                            <div class="price_label">
                                Price: <span class="from">$0</span> — <span class="to">$70</span>
                            </div>
                            <div class="price_slider"></div>
                            <button type="submit" class="button">Filter</button>
                        </div>
                    </div>

                    <div class="widget widget_categories">
                        <h4 class="widget_title">Categories</h4>
                        <ul>
                            <li><a href="shop.html">Wooden Toys</a> <span>(10)</span></li>
                            <li><a href="shop.html">Rattle Rectangle</a> <span>(07)</span></li>
                            <li><a href="shop.html">Kids Products</a> <span>(05)</span></li>
                            <li><a href="shop.html">Outdoor Playing</a> <span>(02)</span></li>
                        </ul>
                    </div>
                    <div class="widget widget_tag_cloud wow fadeInUp" data-wow-delay="0.1s">
                        <h4 class="widget_title">Tags</h4>
                        <div class="tagcloud">
                            <a href="shop.html">Bunny</a>
                            <a href="shop.html">Doll</a>
                            <a href="shop.html">Dogy</a>
                            <a href="shop.html">Cars</a>
                            <a href="shop.html">Puppet</a>
                            <a href="shop.html">Toys</a>
                            <a href="shop.html">Wooden</a>
                            <a href="shop.html">Learning</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8">
                <div class="row gy-30">
                    <!-- Single Class -->
                    @foreach ($spesialisasis as $s)
                        <div class="col-xl-4 col-lg-6 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="vs-product-box row col-xl-9">
                                <div class="product-img">
                                    <a href="{{ route('spesialisasi.konselor', ['id' => $s->id]) }}">
                                        <img src="{{ asset('assets/img/product/kategori.png') }}"
                                            alt="Product Image" class="w-100">
                                    </a>
                                    <div class="product-content">
                                        <h2 class="product-title h4">{{ $s->nama_spesialisasi }}</a></h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <!-- Pagination -->
                <div class="vs-pagination mt-60">
                    <ul>
                        <li>
                            <a href="shop.html"><i class="fas fa-chevron-left"></i></a>
                        </li>
                        <li><a href="shop.html" class="active">1</a></li>
                        <li><a href="shop.html">2</a></li>
                        <li><a href="shop.html">3</a></li>
                        <li><a href="shop.html">...</a></li>
                        <li><a href="shop.html">10</a></li>
                        <li>
                            <a href="shop.html"><i class="fas fa-chevron-right"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
