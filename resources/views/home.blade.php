@extends('layouts.app')

@section('content')
    <!-- SLIDER-BANNER-AREA START -->
    <section class="slider-banner-area clearfix">
        <!-- Sidebar-social-media start -->
        <div class="sidebar-social hidden-xs">
            <div class="table">
                <div class="table-cell">
                    <ul>
                        @foreach($siteinfos as $siteinfo)
                        <li><a href="{{$siteinfo->googleplus}}" target="_blank" title="Google Plus"><i class="zmdi zmdi-google-plus"></i></a></li>
                        <li><a href="{{$siteinfo->twitter}}" target="_blank" title="Twitter"><i class="zmdi zmdi-twitter"></i></a></li>
                        <li><a href="{{$siteinfo->facebook}}" target="_blank" title="Facebook"><i class="zmdi zmdi-facebook"></i></a></li>
                        <li><a href="{{$siteinfo->linkedin}}" target="_blank" title="Linkedin"><i class="zmdi zmdi-linkedin"></i></a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        <!-- Sidebar-social-media start -->
        <div class="banner-left floatleft">
            <!-- Slider-banner start -->
            <div class="slider-banner">
                @foreach($banners as $banner)
                <div class="single-banner banner-1">
                    <a class="banner-thumb" href="{{$banner->banner_one_link}}"><img src="{{asset('storage/images/banner/'.$banner->banner_one)}}" alt="" style="height: 167.5px;width: 289px" /></a>
                    <span class="pro-label new-label hidden-md">Offers</span>
                    <a href="{{$banner->banner_one_link}}" class="button-one font-16px" data-text="Buy now">Buy now</a>
                </div>
                <div class="single-banner banner-2">
                    <a class="banner-thumb" href="{{$banner->banner_two_link}}"><img src="{{asset('storage/images/banner/'.$banner->banner_two)}}" alt="" style="height: 167.5px;width: 289px" /></a>
                    <div class="banner-brief">
                        <h2 class="banner-title hidden-md"><a href="{{$banner->banner_two_link}}">Deals</a></h2>
                        <p class="hidden-md hidden-sm hidden-xs"></p>
                        <a href="{{$banner->banner_two_link}}" class="button-one font-16px" data-text="Buy now">Buy now</a>
                    </div>
                </div>
                @endforeach
            </div>
            <!-- Slider-banner end -->
        </div>
        <div class="slider-right floatleft">
            <!-- Slider-area start -->
            <div class="slider-area">
                <div class="bend niceties preview-2">
                    <div id="ensign-nivoslider" class="slides">
                        @foreach($sliders as $slider)
                        <img src="{{asset('storage/images/slider/'.$slider->image)}}" alt="" title="#slider-direction-1"  />
                        @endforeach
                    </div>
                    @php $i = 0; @endphp
                    @foreach($sliders as $slider)
                        @php $i++; @endphp
                    <!-- direction {{$i}} -->
                    <div id="slider-direction-{{$i}}" class="t-cn slider-direction">
                        <div class="slider-progress"></div>
                        <div class="slider-content t-lfl s-tb slider-1" style="text-align: right">
                            <div class="title-container s-tb-c title-compress">
                                <div class="layer-1">
                                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.5s">
                                        <h2 class="slider-title3 text-uppercase mb-0" >welcome to our</h2>
                                    </div>
                                    <div class="wow fadeIn" data-wow-duration="1.5s" data-wow-delay="1.5s">
                                        <h2 class="slider-title1 text-uppercase mb-0">shop</h2>
                                    </div>
                                    <div class="wow fadeIn" data-wow-duration="2s" data-wow-delay="2.5s">
                                        <h3 class="slider-title2 text-uppercase" >gallery</h3>
                                    </div>
                                    <div class="wow fadeIn" data-wow-duration="2.5s" data-wow-delay="3.5s">
                                        <a href="{{$slider->slider_link}}" class="button-one style-2 text-uppercase mt-20" data-text="Shop now">Shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            <!-- Slider-area end -->
        </div>
        <!-- Sidebar-social-media start -->
        <div class="sidebar-account hidden-xs">
            <div class="table">
                <div class="table-cell">
                    <ul>
                        <li><a class="search-open" href="#" title="Search"><i class="zmdi zmdi-search"></i></a></li>
                        @if(!Session::has('ID'))
                        <li><a href="#" title="Login" data-toggle="collapse" data-target="#login1"><i class="zmdi zmdi-lock"></i></a>
                            <div class="customer-login text-left collapse" id="login1">
                                <form action="{{url('auth')}}" onsubmit="login(event)" id="login">
                                    <h4 class="title-1 title-border text-uppercase mb-30">Registered customers?</h4>
                                    <p class="text-gray">If you have an account with us, Please login!</p>
                                    <ul class="error-login text-center alert alert-danger hidden"></ul>
                                    <input type="text" name="email" placeholder="Email here..." />
                                    <input type="password" name="password" placeholder="Password" />
                                    <p><a class="text-gray" href="#" id="forgotPass">Forget your password?</a></p>
                                    <button class="button-one submit-button mt-15" data-text="login" type="submit">login</button>
                                </form>
                            </div>
                        </li>
                        <li><a href="#" title="Register" data-toggle="collapse" data-target="#register1"><i class="zmdi zmdi-hc-fw"> &#xf1ff;</i></a>
                            <div class="customer-login text-left collapse" id="register1">
                                <form action="{{url('clients')}}" onsubmit="register(event)" id="register">
                                    <h4 class="title-1 title-border text-uppercase mb-30">Don't have an account yet? Register here.</h4>
                                    <p class="text-gray">If you don't have an account with us, Please register!</p>
                                    <ul class="error-register text-center alert alert-danger hidden"></ul>
                                    <p class="success-register text-center alert alert-success hidden"></p>
                                    <input type="text" name="company" placeholder="Company Name here..." />
                                    <input type="email" name="email" placeholder="Email here..." />
                                    <input type="password" name="password" placeholder="Password" />
                                    <button class="button-one submit-button mt-15" data-text="register" type="submit">register</button>
                                </form>
                            </div>
                        </li>
                        <li><a href="{{url('allCarts')}}" title="My-Cart"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                        @else
                        <li><a href="#" data-toggle="collapse" data-target="#My-Account" title="My-Account"><i class="zmdi zmdi-account"></i></a>
                            <div class="customer-login collapse" id="My-Account">
                                <a href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID'))}}" class="button-one submit-button mt-15" data-text="My-Account" style="color: #fff">My-Account</a>
                                <a href="{{url('cmrLogout')}}" class="button-one submit-button mt-15" data-text="Logout" style="color: #fff">Logout</a>
                            </div>
                        </li>
                        <li><a href="#" title="My-Compare"><i class="zmdi zmdi-refresh"></i></a></li>
                        <li><a href="{{url('wishlists')}}" title="Wishlist"><i class="zmdi zmdi-favorite"></i></a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
        <!-- Sidebar-social-media start -->
    </section>
    <!-- End Slider-section -->
    <!-- PURCHASE-ONLINE-AREA START -->
    <div class="purchase-online-area pt-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h2 class="title-border">Purchase Online on Offtica</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <!-- Nav tabs -->
                    <ul class="tab-menu clearfix">
                        <li class="active"><a href="#new-arrivals" data-toggle="tab">New Arrivals</a></li>
                        <li><a href="#best-seller"  data-toggle="tab">Feature </a></li>
                        <li><a href="#most-view" data-toggle="tab">Most Viewed </a></li>
                        <li><a href="#discounts" data-toggle="tab">Discounts</a></li>
                    </ul>
                </div>
                <div class="col-lg-12">
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="new-arrivals">
                            <div class="row">
                            @foreach($newProducts as $newProduct)
                                <!-- Single-product start -->
                                <div class="single-product col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                    <div class="product-img">
                                        <span class="pro-label new-label">new</span>
                                        <a href="{{url('products/'.$newProduct->id)}}"><img src="{{asset('storage/images/product/'.$newProduct->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
                                        <div class="product-action clearfix">
                                            <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$newProduct->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                            <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$newProduct->id}}" data-name="{{$newProduct->productName}}" data-image="{{asset('storage/images/product/'.$newProduct->image->image1)}}" data-saleprice="{{$newProduct->salePrice}}" data-desc="{{substr(strip_tags($newProduct->description), 0, 127)}}..."  data-regularprice="{{$newProduct->regularPrice}}" data-url="{{url('products/'.$newProduct->id)}}" class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                            <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$newProduct->id}}" data-name="{{$newProduct->productName}}" data-image="{{asset('storage/images/product/'.$newProduct->image->image1)}}" data-saleprice="{{$newProduct->salePrice}}" data-stock="{{$newProduct->availablity}}" data-color="@foreach($newProduct->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$newProduct->id)}}" data-requrl="{{url('productsByCat/'.$newProduct->minicategory_id.'/'.$newProduct->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                            @if($newProduct->salePrice)
                                            <a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$newProduct->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="product-info clearfix">
                                        <div class="fix">
                                            <h4 class="post-title floatleft"><a href="{{url('products/'.$newProduct->id)}}">{{substr($newProduct->productName, 0, 15)}}</a></h4>
                                            <p class="floatright hidden-sm">{{$newProduct->category->categoryName}}</p>
                                        </div>
                                        <div class="fix">
                                            <span class="pro-price floatleft">
                                                @if($newProduct->salePrice)
                                                ৳ {{number_format($newProduct->salePrice, 2)}}
                                                @else
                                                <a href="#" data-subject="Price quotation for {{$newProduct->productName}}" data-message="I would like to know the price of {{$newProduct->productName}}." id="quotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                                @endif
                                            </span>
                                            @php $sum = $i = 0; @endphp
                                            @foreach($newProduct->productreviews as $productreview)
                                                @php
                                                    $i++;
                                                    $sum += $productreview->rating;
                                                @endphp
                                            @endforeach
                                            <span class="pro-rating floatright">
                                            @if($sum)
                                                @php $score = round($sum/$i); @endphp
                                                @if($score == 5)
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                @elseif($score == 4)
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                @elseif($score == 3)
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                @elseif($score == 2)
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                @else
                                                    <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                @endif
                                            @else
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            @endif
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single-product end -->
                                @endforeach
                            </div>
                        </div>
                        <div class="tab-pane" id="best-seller">
                            <div class="row">
                            @foreach($featureProducts as $featureProduct)
                                <!-- Single-product start -->
                                    <div class="single-product col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                        <div class="product-img">
                                            <span class="pro-label new-label">feature</span>
                                            <a href="{{url('products/'.$featureProduct->id)}}"><img src="{{asset('storage/images/product/'.$featureProduct->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
                                            <div class="product-action clearfix">
                                                <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$featureProduct->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                                <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$featureProduct->id}}" data-name="{{$featureProduct->productName}}" data-image="{{asset('storage/images/product/'.$featureProduct->image->image1)}}" data-saleprice="{{$featureProduct->salePrice}}" data-regularprice="{{$featureProduct->regularPrice}}"  data-desc="{{substr(strip_tags($featureProduct->description), 0, 127)}}..." data-url="{{url('products/'.$featureProduct->id)}}" class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                                <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$featureProduct->id}}" data-name="{{$featureProduct->productName}}" data-image="{{asset('storage/images/product/'.$featureProduct->image->image1)}}" data-saleprice="{{$featureProduct->salePrice}}" data-stock="{{$featureProduct->availablity}}" data-color="@foreach($featureProduct->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$featureProduct->id)}}" data-requrl="{{url('productsByCat/'.$featureProduct->minicategory_id.'/'.$featureProduct->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                                @if($featureProduct->salePrice)
                                                <a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$featureProduct->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="product-info clearfix">
                                            <div class="fix">
                                                <h4 class="post-title floatleft"><a href="{{url('products/'.$featureProduct->id)}}">{{substr($featureProduct->productName, 0, 15)}}</a></h4>
                                                <p class="floatright hidden-sm hidden-xs">{{$featureProduct->category->categoryName}}</p>
                                            </div>
                                            <div class="fix">
                                                <span class="pro-price floatleft">
                                                    @if($featureProduct->salePrice)
                                                        ৳ {{number_format($featureProduct->salePrice, 2)}}
                                                    @else
                                                        <a href="#" data-subject="Price quotation for {{$featureProduct->productName}}" data-message="I would like to know the price of {{$featureProduct->productName}}." id="quotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                                    @endif
                                                </span>
                                                @php $sum = $i = 0; @endphp
                                                @foreach($featureProduct->productreviews as $productreview)
                                                    @php
                                                        $i++;
                                                        $sum += $productreview->rating;
                                                    @endphp
                                                @endforeach
                                                <span class="pro-rating floatright">
                                                @if($sum)
                                                        @php $score = round($sum/$i); @endphp
                                                        @if($score == 5)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                        @elseif($score == 4)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @elseif($score == 3)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @elseif($score == 2)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @else
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @endif
                                                    @else
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    @endif
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single-product end -->
                                @endforeach
                            </div>
                        </div>
                        <div class="tab-pane" id="most-view">
                            <div class="row">
                            @foreach($mostViewed as $mostViewed)
                                <!-- Single-product start -->
                                    <div class="single-product col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                        <div class="product-img">
                                            <a href="{{url('products/'.$mostViewed->id)}}"><img src="{{asset('storage/images/product/'.$mostViewed->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
                                            <div class="product-action clearfix">
                                                <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$mostViewed->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                                <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$mostViewed->id}}" data-name="{{$mostViewed->productName}}" data-image="{{asset('storage/images/product/'.$mostViewed->image->image1)}}" data-saleprice="{{$mostViewed->salePrice}}"  data-desc="{{substr(strip_tags($mostViewed->description), 0, 127)}}..." data-regularprice="{{$mostViewed->regularPrice}}" data-url="{{url('products/'.$mostViewed->id)}}" class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                                <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$mostViewed->id}}" data-name="{{$mostViewed->productName}}" data-image="{{asset('storage/images/product/'.$mostViewed->image->image1)}}" data-saleprice="{{$mostViewed->salePrice}}" data-stock="{{$mostViewed->availablity}}" data-color="@foreach($mostViewed->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$mostViewed->id)}}" data-requrl="{{url('productsByCat/'.$mostViewed->minicategory_id.'/'.$mostViewed->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                                @if($mostViewed->salePrice)
                                                <a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$mostViewed->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                @endif
                                            </div>
                                        </div>
                                        <div class="product-info clearfix">
                                            <div class="fix">
                                                <h4 class="post-title floatleft"><a href="{{url('products/'.$mostViewed->id)}}">{{substr($mostViewed->productName, 0, 15)}}</a></h4>
                                                <p class="floatright hidden-sm">{{$mostViewed->category->categoryName}}</p>
                                            </div>
                                            <div class="fix">
                                                <span class="pro-price floatleft">
                                                    @if($mostViewed->salePrice)
                                                        ৳ {{number_format($mostViewed->salePrice, 2)}}
                                                    @else
                                                        <a href="#" data-subject="Price quotation for {{$mostViewed->productName}}" data-message="I would like to know the price of {{$mostViewed->productName}}." id="quotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                                    @endif
                                                </span>
                                                @php $sum = $i = 0; @endphp
                                                @foreach($mostViewed->productreviews as $productreview)
                                                    @php
                                                        $i++;
                                                        $sum += $productreview->rating;
                                                    @endphp
                                                @endforeach
                                                <span class="pro-rating floatright">
                                                @if($sum)
                                                        @php $score = round($sum/$i); @endphp
                                                        @if($score == 5)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                        @elseif($score == 4)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @elseif($score == 3)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @elseif($score == 2)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @else
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @endif
                                                    @else
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    @endif
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single-product end -->
                                @endforeach
                            </div>
                        </div>
                        <div class="tab-pane" id="discounts">
                            <div class="row">
                            @foreach($offers as $offer)
                                @foreach($offer->products as $offerProduct)
                                    @php
                                        $price = $offerProduct->salePrice-(($offerProduct->salePrice*$offer->discount_value)/100);
                                    @endphp
                                    <!-- Single-product start -->
                                        <div class="single-product col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                            <div class="product-img">
                                                <span class="pro-label new-label">Discount {{$offer->discount_value}}%</span>
                                                <a href="{{url('products/'.$offerProduct->id)}}"><img src="{{asset('storage/images/product/'.$offerProduct->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
                                                <div class="product-action clearfix">
                                                    <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$offerProduct->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                                    <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$offerProduct->id}}" data-name="{{$offerProduct->productName}}" data-image="{{asset('storage/images/product/'.$offerProduct->image->image1)}}" data-desc="{{substr(strip_tags($offerProduct->description), 0, 127)}}..." data-saleprice="{{$price}}" data-regularprice="{{$offerProduct->regularPrice}}" data-url="{{url('products/'.$offerProduct->id)}}" class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                                    <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$offerProduct->id}}" data-name="{{$offerProduct->productName}}" data-image="{{asset('storage/images/product/'.$offerProduct->image->image1)}}" data-saleprice="{{$price}}" data-stock="{{$offerProduct->availablity}}" data-color="@foreach($offerProduct->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$offerProduct->id)}}" data-requrl="{{url('productsByCat/'.$offerProduct->minicategory_id.'/'.$offerProduct->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                                    <a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$offerProduct->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-info clearfix">
                                                <div class="fix">
                                                    <h4 class="post-title floatleft"><a href="{{url('products/'.$offerProduct->id)}}">{{substr($offerProduct->productName, 0, 15)}}</a></h4>
                                                    <p class="floatright hidden-sm">{{$offerProduct->category->categoryName}}</p>
                                                </div>
                                                <div class="fix">
                                                    <span class="pro-price floatleft">৳ {{number_format($price, 2)}}</span>
                                                    @php $sum = $i = 0; @endphp
                                                    @foreach($offerProduct->productreviews as $productreview)
                                                        @php
                                                            $i++;
                                                            $sum += $productreview->rating;
                                                        @endphp
                                                    @endforeach
                                                    <span class="pro-rating floatright">
                                                    @if($sum)
                                                        @php $score = round($sum/$i); @endphp
                                                        @if($score == 5)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                        @elseif($score == 4)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @elseif($score == 3)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @elseif($score == 2)
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @else
                                                            <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        @endif
                                                    @else
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                        <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                    @endif
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single-product end -->
                                    @endforeach
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- PURCHASE-ONLINE-AREA END -->
    <!-- PRODUCT-AREA START -->
    <div class="product-area pt-80 pb-80 product-style-2" id="quick-order">
        <div class="container">
            <!-- Section-title start -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h2 class="title-border">Easy Ordering</h2>
                    </div>
                </div>
            </div>
            <!-- Section-title end -->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <!-- Nav tabs -->
                    <ul class="tab-menu clearfix">
                        <li class="active"><a href="#direct-buy" data-toggle="tab">Direct buy </a></li>
                        <li><a href="#ask-for-quote"  data-toggle="tab">Ask for quote </a></li>
                    </ul>
                </div>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane active" id="direct-buy">
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <!-- Widget-Categories start -->
                            <aside class="widget widget-categories  mb-30">
                                <div class="widget-title">
                                    <h4>Categories</h4>
                                </div>
                                <div id="tree" class="widget-info product-cat boxscrol2">

                                </div>
                            </aside>
                            <!-- Widget-categories end -->
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <!-- Widget-Categories start -->
                            <aside class="widget widget-categories  mb-30">
                                <div class="widget-title">
                                    <h4>Product</h4>
                                </div>
                                <div class="widget-info product-cat boxscrol2">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <tbody id="product">
                                            @foreach($pricedProducts as $product)
                                                <tr>
                                                    <td align="left" style="padding: 0">
                                                        <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." data-saleprice="{{$product->salePrice}}" data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" class="quick-view">{{$product->productName}}</a>
                                                    <td>
                                                        <input type="number" name="qty{{$product->id}}" min="1" value="1" style="height: 20px;width: 50px;padding: 0">
                                                    </td>
                                                    <td style="padding: 0">
                                                        <a href="#" data-toggle="tooltip" class="addToCart" data-placement="top" title="Add To Cart" data-id="{{$product->id}}" data-productName="{{$product->productName}}" data-price="{{$product->salePrice}}" data-url="{{url('/addCart')}}"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </aside>
                            <!-- Widget-categories end -->
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <!-- Widget-Categories start -->
                            <aside class="widget widget-categories  mb-30">
                                <div class="widget-title">
                                    <h4>My Cart</h4>
                                </div>
                                <div class="widget-info product-cat boxscrol2">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <tbody id="cart">
                                            @if($carts == null)
                                                <tr id="cartMessage"><td align="center"><h3>Cart is empty!</h3></td></tr>
                                            @else
                                                @foreach($carts as $cart)
                                                    @php $product = \App\Product::find($cart['product_id']); @endphp
                                                <tr>
                                                    <td align="left">{{$product->productName}}  x {{$cart['qty']}}</td>
                                                    <td class="text-right">৳{{number_format($product->salePrice * $cart['qty'], 2)}}</td>
                                                </tr>
                                                @endforeach
                                                <tr>
                                                    <td align="right">
                                                        <a href="/allCarts" class="button-one submit-button mt-15" data-text="view / edit cart" type="submit" style="margin-bottom: 20px;">view / edit cart</a>
                                                    </td>
                                                </tr>
                                            @endif
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </aside>
                            <!-- Widget-categories end -->
                        </div>
                    </div>
                    <div class="tab-pane" id="ask-for-quote">
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <!-- Widget-Categories start -->
                            <aside class="widget widget-categories  mb-30">
                                <div class="widget-title">
                                    <h4>Categories</h4>
                                </div>
                                <div id="tree1" class="widget-info product-cat boxscrol2">

                                </div>
                            </aside>
                            <!-- Widget-categories end -->
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <!-- Widget-Categories start -->
                            <aside class="widget widget-categories  mb-30">
                                <div class="widget-title">
                                    <h4>Product</h4>
                                </div>
                                <div class="widget-info product-cat boxscrol2">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <tbody id="product1">
                                            @foreach($products as $product)
                                                <tr id="quoteProduct{{$product->id}}">
                                                    <td align="left" style="padding: 0">
                                                        <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." data-saleprice="{{$product->salePrice}}" data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" class="quick-view">{{$product->productName}}</a>
                                                    </td>
                                                    <td>
                                                        <input type="number" name="quantity{{$product->id}}" min="1" value="1" style="height: 20px;width: 50px;padding: 0">
                                                    </td>
                                                    <td style="padding: 0">
                                                        <a href="#" data-id="{{$product->id}}" data-name="{{$product->productName}}" id="addQuotation" class="btn btn-info btn-xs" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </aside>
                            <!-- Widget-categories end -->
                        </div>
                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <!-- Widget-Categories start -->
                            <aside class="widget widget-categories  mb-30">
                                <div class="widget-title">
                                    <h4>Quotation</h4>
                                </div>
                                <div class="widget-info product-cat boxscrol2">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <tbody id="toQuote">
                                                <tr id="quoteMessage"><td align="left">Select product from left to get price quotation</td></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </aside>
                            <!-- Widget-categories end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- PRODUCT-AREA END -->
    <!-- DISCOUNT-PRODUCT START -->
    <div class="discount-product-area discount-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <div class="row">
                        <div class="discount-product-slider dots-bottom-right">
                        @foreach($offers as $offer)
                            @foreach($offer->products as $offerProduct)
                                <!-- single-discount-product start -->
                                <div class="col-lg-12">
                                    <div class="discount-product">
                                        <span class="pro-label new-label">Price</span>
                                        <span class="label label-default" style="font-size: 30px;alignment: right;">Product Name</span>
                                        <div class="row">
                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
                                                <a href="{{url('products/'.$offerProduct->id)}}">
                                                    <img src="{{asset('storage/images/product/'.$offerProduct->image->image1)}}" alt="" style="width: 300px;height: 245px;" />
                                                </a>
                                            </div>
                                            <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
                                                <div class="count-down text-center">
                                                    <div data-countdown="{{$offer->valid_until}}"></div>
                                                </div>
                                                <div class="discount-info">
                                                    <h1 class="text-dark-red">Discount {{$offer->discount_value}}%</h1>
                                                    <p>{{substr(strip_tags($offerProduct->description), 0, 168)}}...</p>
                                                    <a class="button-2 text-dark-red text-uppercase" href="{{url('products/'.$offerProduct->id)}}">GET DISCOUNT <i class="zmdi zmdi-long-arrow-right"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single-discount-product end -->
                            @endforeach
                        @endforeach
                        </div>
                    </div>
                </div>
                @php $i = 0;@endphp
                @foreach($deals as $deal)
                    @php $i++;@endphp
                    @foreach($deal->products as $dealProduct)
                    <!-- up-comming-product start -->
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="up-comming-product">
                            <div class="up-comming-img">
                                <a href="{{url('products/'.$dealProduct->id)}}"><img src="{{asset('storage/images/product/'.$dealProduct->image->image1)}}" alt="" style="width: 300px;height: 200px;" /></a>
                            </div>
                            <div class="up-comming-info text-center">
                                <div class="up-comming-brief">
                                    <h4 class="post-title"><a href="{{url('products/'.$dealProduct->id)}}">{{$dealProduct->productName}}</a></h4>
                                    <h4 class="comming-pro-price">৳ {{number_format($dealProduct->salePrice-(($dealProduct->salePrice*$deal->discount_value)/100), 2)}}</h4>
                                </div>
                                <div class="count-down">
                                    <div data-countdown="{{$deal->valid_until}}"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- up-comming-product end -->
                        @if($i == 1)
                            @php break;@endphp
                        @endif
                    @endforeach
                        @if($i == 1)
                            @php break;@endphp
                        @endif
                @endforeach
            </div>
        </div>
    </div>
    <!-- DISCOUNT-PRODUCT END -->
    <!-- PRODUCT-AREA START -->
    <div class="product-area pt-80 pb-35">
        <div class="container">
            <!-- Section-title start -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title text-center">
                        <h2 class="title-border">Featured Products</h2>
                    </div>
                </div>
            </div>
            <!-- Section-title end -->
            <div class="row cus-row-30">
                <div class="product-slider arrow-left-right">
                @foreach($featureProducts as $featureProduct)
                    <!-- Single-product start -->
                        <div class="single-product col-lg-12">
                            <div class="product-img">
                                <span class="pro-label new-label">feature</span>
                                <a href="{{url('products/'.$featureProduct->id)}}"><img src="{{asset('storage/images/product/'.$featureProduct->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
                                <div class="product-action clearfix">
                                    <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$featureProduct->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                    <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$featureProduct->id}}" data-name="{{$featureProduct->productName}}" data-image="{{asset('storage/images/product/'.$featureProduct->image->image1)}}" data-saleprice="{{$featureProduct->salePrice}}" data-regularprice="{{$featureProduct->regularPrice}}" data-url="{{url('products/'.$featureProduct->id)}}" data-desc="{{substr(strip_tags($featureProduct->description), 0, 127)}}..." class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                    <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$featureProduct->id}}" data-name="{{$featureProduct->productName}}" data-image="{{asset('storage/images/product/'.$featureProduct->image->image1)}}" data-saleprice="{{$featureProduct->salePrice}}" data-stock="{{$featureProduct->availablity}}" data-color="@foreach($featureProduct->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$featureProduct->id)}}" data-requrl="{{url('productsByCat/'.$featureProduct->minicategory_id.'/'.$featureProduct->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                    @if($featureProduct->salePrice)
                                    <a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$featureProduct->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                    @endif
                                </div>
                            </div>
                            <div class="product-info clearfix">
                                <div class="fix">
                                    <h4 class="post-title floatleft"><a href="{{url('products/'.$featureProduct->id)}}">{{substr($featureProduct->productName, 0, 15)}}</a></h4>
                                    <p class="floatright hidden-sm hidden-xs">{{$featureProduct->category->categoryName}}</p>
                                </div>
                                <div class="fix">
                                    <span class="pro-price floatleft">
                                        @if($featureProduct->salePrice)
                                            ৳ {{number_format($featureProduct->salePrice, 2)}}
                                        @else
                                            <a href="#" data-subject="Price quotation for {{$featureProduct->productName}}" data-message="I would like to know the price of {{$featureProduct->productName}}." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                        @endif
                                    </span>
                                    @php $sum = $i = 0; @endphp
                                    @foreach($featureProduct->productreviews as $productreview)
                                        @php
                                            $i++;
                                            $sum += $productreview->rating;
                                        @endphp
                                    @endforeach
                                    <span class="pro-rating floatright">
                                        @if($sum)
                                            @php $score = round($sum/$i); @endphp
                                            @if($score == 5)
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                            @elseif($score == 4)
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            @elseif($score == 3)
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            @elseif($score == 2)
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            @else
                                                <a href="#"><i class="zmdi zmdi-star"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                                <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            @endif
                                        @else
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                            <a href="#"><i class="zmdi zmdi-star-outline"></i></a>
                                        @endif
                                    </span>
                                </div>
                            </div>
                        </div>
                        <!-- Single-product end -->
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- PRODUCT-AREA END -->
    <!-- BRAND-LOGO-AREA START -->
    <div class="brand-logo-area pt-80">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="brand">
                        <div class="brand-slider">
                            @foreach($partners as $partner)
                            <div class="single-brand">
                                <a href="{{url($partner->companyUrl)}}" target="_blank"><img src="{{asset('storage/images/brands/'.$partner->brandLogo)}}" alt="" style="width: 160px;height: 65px" /></a>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BRAND-LOGO-AREA END -->
@endsection

@section('script')
    <script>
        $('.header-icons').hide();
        //Handle register form submit.
        function register(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Hide messages of login form
            $('.error-login').addClass('hidden');

            // Get the form.
            var form = $('#register');

            // Serialize the form data.
            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'POST',
                url: $(form).attr('action'),
                data: formData,
                success: function(data){
                    if ((data.errors)) {
                        $('.success-register').addClass('hidden');
                        $('.err').remove();
                        $('.error-register').removeClass('hidden');
                        if (typeof data.errors.company !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.company + "</li>");
                        };
                        if (typeof data.errors.email !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.email + "</li>");
                        };
                        if (typeof data.errors.response !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.response + "</li>");
                        };
                        if (typeof data.errors.password !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.password + "</li>");
                        }
                    } else {
                        $('form input').val('');
                        $('.error-register').addClass('hidden');
                        $('.success-register').removeClass('hidden');
                        $('.success-register').text(data.success.response);
                    }
                }
            });
        }

        //Handle login form submit.
        function login(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Hide messages of register form
            $('.success-register').addClass('hidden');
            $('.error-register').addClass('hidden');

            // Get the form.
            var form = $('#login');

            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'GET',
                url: $(form).attr('action'),
                data: formData,
                success: function(data){
                    if ((data.errors)) {
                        $('.err').remove();
                        $('.error-login').removeClass('hidden');
                        if (typeof data.errors.email !== 'undefined') {
                            $('.error-login').append("<li class='err'>" + data.errors.email + "</li>");
                        };
                        if (typeof data.errors.response !== 'undefined') {
                            $('.error-login').append("<li class='err'>" + data.errors.response + "</li>");
                        };
                        if (typeof data.errors.password !== 'undefined') {
                            $('.error-login').append("<li class='err'>" + data.errors.password + "</li>");
                        }
                    } else {
                        $(location).attr("href", "home");
                    }
                },
            });
        }

        //Handle cart form submit.
        $(document).on('click', '.addToCart', function(e) {
            // Get product name
            var productName =  $(this).data('productname');

            // Get the product quantity
            var qty = $('input[name=qty'+$(this).data('id')+']').val();

            // Get product price
            var price =  $(this).data('price') * qty;

            // Stop the browser from submitting the form.
            e.preventDefault();

            $.ajax({
                type: 'post',
                url: $(this).data('url'),
                data: {
                    'qty': qty,
                    'id': $(this).data('id')
                },
                success: function(data){
                    if ((data.error)) {
                        $('#message').modal('show');
                        $('.wmessage').css('color', 'red');
                        $('.modal-title').css('color', 'red');
                        $('.modal-title').text('Oops!');
                        $('.wmessage').text(data.error);
                    } else {
                        $('#cartMessage').remove();
                        var isCart = false;
                        jQuery.each( $('#cart tr'), function() {
                            isCart = true;
                        });
                        if (isCart) {
                            $('#cart').prepend('<tr>\n' +
                                '<td align="left">'+productName+'  x '+qty+'</td>\n' +
                                '<td class="text-right">৳'+price+'</td>\n' +
                                '</tr>'
                            );
                        } else {
                            $('#cart').prepend('<tr>\n' +
                                '<td align="left">'+productName+'  x '+qty+'</td>\n' +
                                '<td class="text-right">৳'+price+'</td>\n' +
                                '</tr>'+
                                '<tr>'+
                                '<td align="right">'+
                                '<a href="/allCarts" class="button-one submit-button mt-15" data-text="view / edit cart" type="submit" style="margin-bottom: 20px;">view / edit cart</a>'+
                                '</td>'+
                                '</tr>'
                            );
                        }

                        var i = 1;
                        var sum = 0;
                        $.each($('.single-cart'), function() {
                            sum += $(this).data('price') * $(this).data('qty');
                            i++;
                        });

                        sum += data.salePrice * qty;

                        $('#cart-icon').html('<i class="zmdi zmdi-shopping-cart"></i><span class="count" id="count">'+i+'</span>');

                        if (i == 1){
                            $('#cart-items').append('<div class="mini-cart-brief text-left">\n' +
                                '<div class="cart-items">\n' +
                                '<p class="mb-0">You have <span class="count">'+i+' items</span> in your shopping bag.</p>\n' +
                                '</div>\n' +
                                '<div class="all-cart-product clearfix widget-info product-cat boxscrol2">'+
                                '<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                                '<div class="cart-photo">\n' +
                                '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                                '</div>\n' +
                                '<div class="cart-info">\n' +
                                '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                                '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                                '<p class="mb-0">Qty : '+qty+' </p>\n' +
                                '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                                '</div>\n' +
                                '</div>'+
                                '</div>\n' +
                                '<div class="cart-totals">\n' +
                                '<h5 class="mb-0">SubTotal <span class="floatright" id="subtotal">৳'+sum+'</span></h5>\n' +
                                '</div>\n' +
                                '<div class="cart-bottom  clearfix">\n' +
                                '<a href="allCarts" class="button-one floatleft text-uppercase" data-text="View cart">View cart</a>\n' +
                                '<a href="orders/create" class="button-one floatright text-uppercase" data-text="Check out">Check out</a>\n' +
                                '</div>\n' +
                                '</div>'
                            );
                        }else {
                            $('.count').text(i);
                            $('#subtotal').text('৳' + sum);

                            $('.all-cart-product').prepend('<div class="single-cart clearfix" data-price="'+data.salePrice+'" data-qty="'+qty+'" id="cartProduct'+data.id+'">\n' +
                                '<div class="cart-photo">\n' +
                                '<a href="products/'+data.id+'"><img src="storage/images/product/'+data.image.image1+'" alt="" /></a>\n' +
                                '</div>\n' +
                                '<div class="cart-info">\n' +
                                '<h5><a href="products/'+data.id+'">'+data.productName.substr(0, 20)+'</a></h5>\n' +
                                '<p class="mb-0">Price : ৳ '+data.salePrice+'</p>\n' +
                                '<p class="mb-0">Qty : '+qty+' </p>\n' +
                                '<span class="cart-delete"><a href="#" id="cart-delete" data-id="'+data.id+'" data-url="deleteCart" data-price="'+sum+'"><i class="zmdi zmdi-close"></i></a></span>\n' +
                                '</div>\n' +
                                '</div>'
                            );
                        }
                    }
                }
            });
        });

        function getTree() {
            // Some logic to retrieve, or generate tree structure

            var tree = [
                    @foreach($categories as $category)
                {
                    text: "{{$category->categoryName}}",
                    nodes: [
                            @foreach($category->subcategory as $subcategory)
                        {
                            text: "{{$subcategory->subCategoryName}}",
                            nodes: [
                                    @foreach($subcategory->minicategory as $minicategory)
                                {
                                    text: '<a href="#" id="productByMiniCat" data-url="{{url('productByMiniCat/'.$minicategory->id)}}">{{$minicategory->miniCategoryName}}</a>'
                                },
                                @endforeach
                            ]
                        },
                        @endforeach
                    ]
                },
                @endforeach
            ];
            return tree;
        }

        function getTree1() {
            // Some logic to retrieve, or generate tree structure

            var tree = [
                    @foreach($categories as $category)
                {
                    text: "{{$category->categoryName}}",
                    nodes: [
                            @foreach($category->subcategory as $subcategory)
                        {
                            text: "{{$subcategory->subCategoryName}}",
                            nodes: [
                                    @foreach($subcategory->minicategory as $minicategory)
                                {
                                    text: '<a href="#" id="productsByMiniCat" data-url="{{url('productsByMiniCat/'.$minicategory->id)}}">{{$minicategory->miniCategoryName}}</a>'
                                },
                                @endforeach
                            ]
                        },
                        @endforeach
                    ]
                },
                @endforeach
            ];
            return tree;
        }

        $('#tree').treeview({
            levels: 1,
            showBorder:false,
            selectedBackColor:'#c8a165',
            data: getTree()
        });

        $('#tree1').treeview({
            levels: 1,
            showBorder:false,
            selectedBackColor:'#c8a165',
            data: getTree1()
        });
    </script>
@endsection
