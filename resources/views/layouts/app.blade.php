<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    @php
        $siteinfos = DB::table('siteinfos')->get();
        $contacts = DB::table('contacts')->get();
    @endphp
    <title>@foreach($siteinfos as $siteinfo){{$siteinfo->title}}@endforeach</title>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="description" content="Shop online for office supplies, office furniture, office machines, school supplies, ink, toner, printers, pens, staplers, paper, pencils, scissors, tape and so much more. Great price and free next day delivery on office supplies over ৳ 5,000" />
    <meta name="keywords" content="Office Supplies, Office Furniture, Office Machines, Paper and Pads, Binders, Janitorial Supplies, Break Room Supplies, Refills, File Folders, Fellowes, GBC, Avery, HON, Samsill, Pyramid, Acroprint, Martin Yale, Bangladesh, bd, Office Supplies Bangladesh, Office Supplies bd, Offtica,Offtica.com,Online Shopping,Gifts,Toys,Home,Jewelry,TVs,HD TVs,Smart TVs,Electronics,Baby Products,Video Games,Computers,Laptops,Cell Phones,Games,Apparel,Clothing,Fashion,Accessories,Shoes,Watches,Sports &amp; Outdoors, Sporting Goods,Office Products,Health,Vitamins,Personal Care,Beauty Products,Garden,Bed,Bath,Furniture,Tools,Hardware, Vacuums,Outdoor Living,Automotive Parts,Pet Food,Pet Supplies,iphone, printer, printers, ink, toner, pens, pencils, desk supplies, desk organization, school supplies, classroom supplies, calendars, planners, notebooks, writing tools, office supplies, desk supplies, laminators, lamination, laminating supplies, glue, scissors, study supplies, pencil sharpener, dry erase boards, white board, post it notes, thank you cards, christmas cards, greeting cards, envelopes, sticky notes, printer paper, highlighters, calculators, binders" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Offtica Limited">
    <meta name="subject" content="eCommerce, Corporate Supply">
    <meta name="Geography" content="89/2, Haque Chamber, Panthapath, Dhaka 1205">
    <meta name="Language" content="English">
    <meta http-equiv="CACHE-CONTROL" content="PUBLIC">
    <meta name="Copyright" content="Offtica Limited">
    <meta name="Designer" content="Software Department, Offtica Limited">
    <meta name="Publisher" content="Offtica Limited">
    <meta name="distribution" content="Local">
    <meta name="Robots" content="INDEX,FOLLOW">
    <meta name="zipcode" content="1205">
    <meta name="city" content="Dhaka">
    <meta name="country" content="Bangladesh">


    <link rel="shortcut icon" type="image/x-icon" href="{{asset('img/favicon.ico')}}">
    <!-- Place favicon.ico in the root directory -->

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>

    <!-- all css here -->
    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/bootstrap.css')}}">
    <!-- animate css -->
    <link rel="stylesheet" href="{{asset('css/animate.css')}}">
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="{{asset('css/jquery-ui.min.css')}}">
    <!-- meanmenu css -->
    <link rel="stylesheet" href="{{asset('css/meanmenu.min.css')}}">
    <!-- nivo-slider css -->
    <link rel="stylesheet" href="{{asset('lib/css/nivo-slider.css')}}">
    <link rel="stylesheet" href="{{asset('lib/css/preview.css')}}">
    <!-- slick css -->
    <link rel="stylesheet" href="{{asset('css/slick.css')}}">
    <!-- lightbox css -->
    <link rel="stylesheet" href="{{asset('css/lightbox.min.css')}}">
    <!-- material-design-iconic-font css -->
    <link rel="stylesheet" href="{{asset('css/material-design-iconic-font.css')}}">
    <!-- All common css of theme -->
    <link rel="stylesheet" href="{{asset('css/default.css')}}">
    <!-- style css -->
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <!-- shortcode css -->
    <link rel="stylesheet" href="{{asset('css/shortcode.css')}}">
    <!-- responsive css -->
    <link rel="stylesheet" href="{{asset('css/responsive.css')}}">
    <!-- modernizr js -->
    <script src="{{asset('js/vendor/modernizr-2.8.3.min.js')}}"></script>

    <!-- App base_url-->
    <script type="text/javascript">
        var base_url = {!! json_encode(url('/')) !!}
    </script>
</head>
<body>
<!-- WRAPPER START -->
<div class="wrapper bg-dark-white">

    <!-- Mobile-header-top Start -->
    <div class="mobile-header-top hidden-lg hidden-md hidden-sm">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <!-- header-search-mobile start -->
                    <div class="header-search-mobile">
                        <div class="table">
                            <div class="table-cell">
                                <ul>
                                    <li><a class="search-open" href="#"><i class="zmdi zmdi-search"></i></a></li>
                                    @if(!\Illuminate\Support\Facades\Session::has('ID'))
                                    <li><a href="{{route('validate')}}"><i class="zmdi zmdi-lock"></i></a></li>
                                    <li><a href="{{route('validate')}}"><i class="zmdi zmdi-hc-fw"> &#xf1ff;</i></a></li>
                                    <li><a href="{{url('allCarts')}}"><i class="zmdi zmdi-shopping-cart"></i></a></li>
                                    @else
                                    <li><a href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID'))}}"><i class="zmdi zmdi-account"></i></a></li>
                                    <li><a href="{{url('wishlists')}}"><i class="zmdi zmdi-favorite"></i></a></li>
                                    <li><a href="#"><i class="zmdi zmdi-favorite"></i></a></li>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- header-search-mobile start -->
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile-header-top End -->
    <!-- sidebar-search Start -->
    <div class="sidebar-search animated slideOutUp">
        <div class="table">
            <div class="table-cell">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 p-0">
                            <div class="search-form-wrap">
                                <button class="close-search"><i class="zmdi zmdi-close"></i></button>
                                <form action="{{url('searched_product')}}">
                                    <input type="text" name="search" placeholder="Search here..." required/>
                                    <button class="search-button" type="submit">
                                        <i class="zmdi zmdi-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- sidebar-search End -->
    <!-- HEADER-AREA START -->
    <header id="sticky-menu" class="header">
        <div class="header-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4 col-xs-7">
                        <div class="logo text-center">
                            <a href="{{url('/')}}"><img src=" {{asset('img/logo/logo.png')}} " alt="" /></a>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-5">
                        <div class="mini-cart text-right">
                            <ul>
                                <li class="header-icons"><a class="search-open cart-icon" href="#" title="Search"><i class="zmdi zmdi-search"></i></a></li>
                                @if(!\Illuminate\Support\Facades\Session::has('ID'))
                                <li class="header-icons">
                                    <a class="cart-icon" href="{{route('validate')}}" title="login">
                                        <i class="zmdi zmdi-lock"></i>
                                    </a>
                                    <div class="mini-cart-brief text-left">
                                        <div class="customer-login text-left">
                                            <form action="{{url('auth')}}" id="login-form">
                                                <h4 class="title-1 title-border text-uppercase mb-30">Registered customers?</h4>
                                                <p class="text-gray">If you have an account with us, Please login!</p>
                                                <ul class="error-login text-center alert alert-danger hidden"></ul>
                                                <input type="text" name="email" placeholder="Email here..." />
                                                <input type="password" name="password" placeholder="Password" />
                                                <p><a class="text-gray" href="#" id="forgotPass">Forget your password?</a></p>
                                                <button class="button-one submit-button mt-15" data-text="login" type="submit">login</button>
                                            </form>
                                        </div>
                                    </div>
                                </li>
                                <li class="header-icons">
                                    <a class="cart-icon" href="{{route('validate')}}" title="register">
                                        <i class="zmdi zmdi-hc-fw"> &#xf1ff;</i>
                                    </a>
                                    <div class="mini-cart-brief text-left">
                                        <div class="customer-login text-left">
                                            <form action="{{url('clients')}}" id="register-form">
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
                                    </div>
                                </li>
                                @endif
                                @if(\Illuminate\Support\Facades\Session::has('ID'))
                                <li class="header-icons">
                                    <a class="cart-icon" href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID'))}}" title="My-Account"><i class="zmdi zmdi-account"></i></a>
                                    <div class="mini-cart-brief text-left">
                                        <div class="cart-bottom  clearfix">
                                            <a href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID'))}}" class="button-one floatleft text-uppercase" data-text="My-Account">My-Account</a>
                                            <a href="{{url('cmrLogout')}}" class="button-one floatleft text-uppercase" data-text="Logout">Logout</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="header-icons">
                                    @php
                                    $wishlists = DB::table('wishlists')->join('products', 'products.id', '=', 'wishlists.product_id')
															->join('images', 'images.product_id', '=', 'wishlists.product_id')
															->select(
																	'products.salePrice',
																	'products.id',
																	'products.productName',
																	'images.image1'
																	)
															->where('client_id', Session::get('ID'))
															->get();
                                    @endphp
                                    <a class="cart-icon" href="{{url('wishlists')}}" title="wishlist">
                                        <i class="zmdi zmdi-favorite"></i>
                                        @if(!$wishlists->isEmpty())<span>{{$wishlists->count()}}</span>@endif
                                    </a>
                                    @if (!$wishlists->isEmpty())
                                    <div class="mini-cart-brief text-left">
                                        <div class="cart-items">
                                            <p class="mb-0">You have <span>{{$wishlists->count()}} items</span> in your wishlists.</p>
                                        </div>
                                        <div class="all-cart-product clearfix widget-info product-cat boxscrol2">
                                            @foreach($wishlists as $wishlist)
                                                <div class="single-cart clearfix">
                                                    <div class="cart-photo">
                                                        <a href="{{url('products/'.$wishlist->id)}}"><img src="{{asset('storage/images/product/'.$wishlist->image1)}}" alt="" /></a>
                                                    </div>
                                                    <div class="cart-info">
                                                        <h5><a href="{{url('products/'.$wishlist->id)}}">{{substr($wishlist->productName, 0, 20)}}</a></h5>
                                                        <p class="mb-0">Price : $ {{number_format($wishlist->salePrice, 2)}}</p>
                                                        <span class="cart-delete"><a href="#"><i class="zmdi zmdi-close"></i></a></span>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>
                                        <div class="cart-bottom  clearfix">
                                            <a href="{{url('wishlists')}}" class="button-one floatleft text-uppercase" data-text="View wishlists">View wishlists</a>
                                        </div>
                                    </div>
                                    @endif
                                </li>
                                @endif
                                <li id="cart-items">
                                    @php
                                        $price = 0;
                                        $carts = \Illuminate\Support\Facades\Session::get('cart');
                                    @endphp
                                    <a class="cart-icon" id="cart-icon" href="{{url('allCarts')}}" title="cart">
                                        <i class="zmdi zmdi-shopping-cart"></i>
                                        @if($carts != null)<span class="count" id="count">{{count($carts)}}</span>@endif
                                    </a>
                                    @if($carts != null)
                                    <div class="mini-cart-brief text-left">
                                        <div class="cart-items">
                                            <p class="mb-0">You have <span class="count">{{count($carts)}} items</span> in your shopping bag.</p>
                                        </div>
                                        <div class="all-cart-product clearfix widget-info product-cat boxscrol2">
                                            @foreach($carts as $cart)
                                                @php
                                                    $product = \App\Product::find($cart['product_id']);
                                                    $salePrice = 0;
                                                    foreach($product->deals as $deals){
                                                        if ($deals){
                                                            if ($deals->valid_until >= \Carbon\Carbon::now()){
                                                                $salePrice = $product->salePrice-(($product->salePrice*$deals->discount_value)/100);
                                                            }
                                                        }
                                                    }

                                                    foreach($product->offers as $offers){
                                                        if ($offers){
                                                            if ($offers->valid_until >= \Carbon\Carbon::now()){
                                                                $salePrice = $product->salePrice-(($product->salePrice*$offers->discount_value)/100);
                                                            }
                                                        }
                                                    }
                                                    if(isset($salePrice) && $salePrice != 0)
                                                        $proPrice = $salePrice;
                                                    else
                                                        $proPrice = $product->salePrice;

                                                    $unitPrice = $cart['qty'] * $proPrice;
                                                    $price += $unitPrice;
                                                @endphp
                                            <div class="single-cart clearfix" data-price="{{$proPrice}}" data-qty="{{$cart['qty']}}" id="cartProduct{{$product->id}}">
                                                <div class="cart-photo">
                                                    <a href="{{url('products/'.$product->id)}}"><img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" /></a>
                                                </div>
                                                <div class="cart-info">
                                                    <h5><a href="{{url('products/'.$product->id)}}">{{substr($product->productName, 0, 20)}}</a></h5>
                                                    <p class="mb-0">Price : ৳ {{number_format($proPrice, 2)}}</p>
                                                    <p class="mb-0">Qty : {{$cart['qty']}} </p>
                                                    <span class="cart-delete"><a href="#" id="cart-delete" data-id="{{$product->id}}" data-url="{{url('deleteCart')}}" data-price="{{$unitPrice}}"><i class="zmdi zmdi-close"></i></a></span>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <div class="cart-totals">
                                            <h5 class="mb-0">SubTotal <span class="floatright" id="subtotal">৳{{number_format($price, 2)}}</span></h5>
                                        </div>
                                        <div class="cart-bottom  clearfix">
                                            <a href="{{url('allCarts')}}" class="button-one floatleft text-uppercase" data-text="View cart">View cart</a>
                                            <a href="{{url('orders/create')}}" class="button-one floatright text-uppercase" data-text="Check out">Check out</a>
                                        </div>
                                    </div>
                                    @endif
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- MAIN-MENU START -->
        <div class="menu-toggle hamburger hamburger--emphatic hidden-xs">
            <div class="hamburger-box">
                <div class="hamburger-inner"></div>
            </div>
            <a class="cart-icon" href="{{url('/home')}}" style="padding: 0 0 0 40px"><i class="zmdi zmdi-home"></i></a>
        </div>
        <div class="main-menu  hidden-xs">
            <nav>
                <ul>
                    <li><a href="{{url('/home')}}">home</a></li>
                    <li><a href="{{url('/product')}}">products</a>
                        <div class="sub-menu">
                            @php
                                $categories = \App\Category::all();
                            @endphp
                            <ul>
                                <li class="menu-title">Categories</li>
                            @foreach($categories as $category)
                                <li><a href="{{url('/productByCat/'.$category->id)}}">{{$category->categoryName}}</a>
                                    <div class="min-menu">
                                        <ul>
                                            <li class="menu-title">SubCategories</li>
                                        @foreach($category->subcategory as $subcategory)
                                            <li><a href="{{url('/productByCat/'.$category->id."/".$subcategory->id)}}"><div>{{$subcategory->subCategoryName}}</div></a>
                                                <div class="min-sub-menu">
                                                    <ul>
                                                        <li class="menu-title">MiniCategories</li>
                                                        @foreach($subcategory->minicategory as $minicategory)
                                                            <li><a href="{{url('/productByCat/'.$category->id."/".$subcategory->id."/".$minicategory->id)}}"><div>{{$minicategory->miniCategoryName}}</div></a></li>
                                                        @endforeach
                                                    </ul>
                                                </div>
                                            </li>
                                        @endforeach
                                        </ul>
                                    </div>
                                </li>
                            @endforeach
                            </ul>
                        </div>
                    </li>
                    <li><a href="{{url('productsByIndustry')}}">Industry</a>
                        <div class="sub-menu menu-scroll">
                            @php
                                $industries = \App\Industry::all();
                            @endphp
                            <ul>
                                <li class="menu-title">All industries</li>
                                @foreach($industries as $industry)
                                <li><a href="{{url('/productByIndustry/'.$industry->id)}}">{{$industry->industryName}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </li>
                    <li><a href="{{url('productsByBrand')}}">Brand</a>
                        <div class="sub-menu menu-scroll">
                            @php
                                $brands = \App\Brand::all();
                            @endphp
                            <ul>
                                <li class="menu-title">All brands</li>
                                @foreach($brands as $brand)
                                    <li><a href="{{url('/productByBrand/'.$brand->id)}}">{{$brand->brandName}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </li>
                    <li><a href="{{url('/offer')}}">Offers</a></li>
                    <li><a href="{{url('/deal')}}">Deals</a></li>
                    <li><a href="{{url('/about')}}">about us</a></li>
                    <li><a href="{{url('/contact')}}">contact</a></li>
                </ul>
            </nav>
        </div>
        <!-- MAIN-MENU END -->
    </header>
    <!-- HEADER-AREA END -->
    <!-- Mobile-menu start -->
    <div class="mobile-menu-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 hidden-lg hidden-md hidden-sm">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul>
                                <li><a href="{{url('/home')}}">home</a></li>
                                <li><a href="{{url('/product')}}">products</a>
                                    <div class="sub-menu">
                                        @php
                                            $categories = \App\Category::all();
                                        @endphp
                                        <ul>
                                            @foreach($categories as $category)
                                                <li><a href="{{url('/productByCat/'.$category->id)}}">{{$category->categoryName}}</a>
                                                    {{--<div class="min-menu">
                                                        <ul>
                                                            <li class="menu-title">SubCategories</li>
                                                            @foreach($category->subcategory as $subcategory)
                                                                <li><a href="{{url('/productByCat/'.$category->id."/".$subcategory->id)}}"><div>{{$subcategory->subCategoryName}}</div></a>
                                                                    <div class="min-sub-menu">
                                                                        <ul>
                                                                            <li class="menu-title">MiniCategories</li>
                                                                            @foreach($subcategory->minicategory as $minicategory)
                                                                                <li><a href="{{url('/productByCat/'.$category->id."/".$subcategory->id."/".$minicategory->id)}}"><div>{{$minicategory->miniCategoryName}}</div></a></li>
                                                                            @endforeach
                                                                        </ul>
                                                                    </div>
                                                                </li>
                                                            @endforeach
                                                        </ul>
                                                    </div>--}}
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="#">Industry</a>
                                    @php
                                        $industries = \App\Industry::all();
                                    @endphp
                                    <ul>
                                        @foreach($industries as $industry)
                                            <li><a href="{{url('/productByIndustry/'.$industry->id)}}">{{$industry->industryName}}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li><a href="#">Brand</a>
                                    @php
                                        $brands = \App\Brand::all();
                                    @endphp
                                    <ul>
                                        @foreach($brands as $brand)
                                            <li><a href="{{url('/productByBrand/'.$brand->id)}}">{{$brand->brandName}}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                                <li><a href="{{url('/about')}}">about us</a></li>
                                <li><a href="{{url('/contact')}}">contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile-menu end -->

    @yield('content')

    <!-- FOOTER START -->
    <footer>
        <!-- Footer-area start -->
        <div class="footer-area footer-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 hidden-sm col-xs-12">
                        <div class="single-footer">
                            <h3 class="footer-title  title-border">about</h3>
                            <ul class="footer-menu">
                                <li><a href="{{url('faq')}}"><i class="zmdi zmdi-dot-circle"></i>FAQ</a></li>
                                <li><a href="#"><i class="zmdi zmdi-dot-circle"></i>Chat Now</a></li>
                                <li><a href="{{url('about')}}"><i class="zmdi zmdi-dot-circle"></i>About Us</a></li>
                                <li><a href="{{url('contact')}}"><i class="zmdi zmdi-dot-circle"></i>Contact Us</a></li>
                                <li><a href="{{url('term-condition')}}"><i class="zmdi zmdi-dot-circle"></i>Terms & Conditions</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                        <div class="single-footer">
                            <h3 class="footer-title  title-border">accounts</h3>
                            <ul class="footer-menu">
                                @if(\Illuminate\Support\Facades\Session::has('ID'))
                                <li><a href="{{url('allCarts')}}"><i class="zmdi zmdi-dot-circle"></i>My Cart</a></li>
                                <li><a href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID').'/#order-details')}}"><i class="zmdi zmdi-dot-circle"></i>My Orders</a></li>
                                <li><a href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID'))}}"><i class="zmdi zmdi-dot-circle"></i>My Account</a></li>
                                <li><a href="{{url('wishlists')}}"><i class="zmdi zmdi-dot-circle"></i>My Wishlist</a></li>
                                <li><a href="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID').'/#membership-type')}}"><i class="zmdi zmdi-dot-circle"></i>My Membership</a></li>
                                @else
                                    <li><a href="{{url('allCarts')}}"><i class="zmdi zmdi-dot-circle"></i>My Cart</a></li>
                                    <li><a href="{{route('validate')}}"><i class="zmdi zmdi-dot-circle"></i>Sign In/Up</a></li>
                                @endif
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 hidden-sm col-xs-12">
                        <div class="single-footer">
                            <h3 class="footer-title  title-border">services</h3>
                            <ul class="footer-menu">
                                <li><a href="{{url('productsByBrand')}}"><i class="zmdi zmdi-dot-circle"></i> Brands</a></li>
                                <li><a href="{{url('product')}}"><i class="zmdi zmdi-dot-circle"></i> Products</a></li>
                                <li><a href="{{url('productsByIndustry')}}"><i class="zmdi zmdi-dot-circle"></i>Industries</a></li>
                                <li><a href="{{url('offer')}}"><i class="zmdi zmdi-dot-circle"></i>Offers</a></li>
                                <li><a href="@if (url()->current() == url('/') || url()->current() == url('/home') ) #quick-order @else {{url('/home#quick-order')}} @endif"><i class="zmdi zmdi-dot-circle"></i>Easy Ordering</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-5 col-xs-12">
                        <div class="single-footer">
                            <h3 class="footer-title  title-border">Newsletters & Links</h3>
                            <div class="footer-subscribe">
                                <form action="{{url('subscribes')}}" id="subscribes">
                                    <p class="success text-center alert alert-success hidden"></p>
                                    <p class="error text-center alert alert-danger hidden"></p>
                                    <input type="email" name="email" placeholder="Email Address..." required/>
                                    <button class="button-one submit-btn-4" type="submit" data-text="Subscribe">Subscribe</button>
                                </form>
                            </div>
                            <div class="modal-product" style="padding: 10px 0;">
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <ul class="social-icons">
                                        @foreach($siteinfos as $siteinfo)
                                            <li><a target="_blank" title="Google +" href="{{$siteinfo->googleplus}}" class="gplus social-icon" style="border: none"><i class="zmdi zmdi-google-plus"></i></a></li>
                                            <li><a target="_blank" title="Twitter" href="{{$siteinfo->twitter}}" class="twitter social-icon" style="border: none"><i class="zmdi zmdi-twitter"></i></a></li>
                                            <li><a target="_blank" title="Facebook" href="{{$siteinfo->facebook}}" class="facebook social-icon" style="border: none"><i class="zmdi zmdi-facebook"></i></a></li>
                                            <li><a target="_blank" title="LinkedIn" href="{{$siteinfo->linkedin}}" class="linkedin social-icon" style="border: none"><i class="zmdi zmdi-linkedin"></i></a></li>
                                        @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer-area end -->
        <!-- Copyright-area start -->
        <div class="copyright-area copyright-2">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-12">
                        <div class="copyright">
                            <p class="mb-0">Copyright <i class="fa fa-copyright"></i> <script>document.write(new Date().getFullYear());</script> <span><a href="{{url('/')}}">@foreach ($siteinfos as $siteinfo) {{$siteinfo->copyright}} @endforeach</a></span> . All rights reserved. </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-12">
                        <div class="payment  text-right">
                            <a href="#"><img src="{{asset('img/payment/1.png')}}" alt="" /></a>
                            <a href="#"><img src="{{asset('img/payment/2.png')}}" alt="" /></a>
                            <a href="#"><img src="{{asset('img/payment/3.png')}}" alt="" /></a>
                            <a href="#"><img src="{{asset('img/payment/4.png')}}" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright-area start -->
    </footer>
    <!-- FOOTER END -->
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <div class="product-images">
                                <div class="main-image images">
                                    <img alt="#" id="img" src="img/product/quickview-photo.jpg"/>
                                </div>
                            </div><!-- .product-images -->

                            <div class="product-info">
                                <h1 id="name">Aenean eu tristique</h1>
                                <div class="price-box-3">
                                    <hr />
                                    <div class="s-price-box">
                                        <span class="new-price">$160.00</span>
                                        <span class="old-price">$190.00</span>
                                    </div>
                                    <hr />
                                </div>
                                <a href="shop.html" class="see-all">See all features</a>
                                <div class="quick-add-to-cart">
                                    <p class="error-cart text-center alert alert-danger hidden"></p>
                                    <p class="success-cart text-center alert alert-success hidden"></p>
                                    <form method="post" class="cart" id="cart-form" action="{{url('/addCart')}}">
                                        <div class="numbers-row">
                                            <input type="number" id="qty" name="qty" min="1" value="1">
                                            <input type="hidden" id="id" name="id">
                                        </div>
                                        <button class="single_add_to_cart_button" type="submit">Add to cart</button>
                                    </form>
                                </div>
                                <div class="quick-desc">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social-icons">
                                            <li><a target="_blank" title="Google +" href="#" class="gplus social-icon"><i class="zmdi zmdi-google-plus"></i></a></li>
                                            <li><a target="_blank" title="Twitter" href="#" class="twitter social-icon"><i class="zmdi zmdi-twitter"></i></a></li>
                                            <li><a target="_blank" title="Facebook" href="#" class="facebook social-icon"><i class="zmdi zmdi-facebook"></i></a></li>
                                            <li><a target="_blank" title="LinkedIn" href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div><!-- .product-info -->
                        </div><!-- .modal-product -->
                    </div><!-- .modal-body -->
                </div><!-- .modal-content -->
            </div><!-- .modal-dialog -->
        </div>
        <!-- END Modal -->
    </div>
    <!-- END QUICKVIEW PRODUCT -->

<!-- WRAPPER END -->

<!-- Modal -->
<div class="modal fade" id="compare" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h2 class="modal-title">Compare Product</h2>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label col-sm-6" for="toCompare">Choose product from the selectbox to compare them.</label>
                    <div class="col-sm-6">
                        <select class="form-control" id="toCompare" style="margin-bottom: 10px;">

                        </select>
                    </div>
                </div>
                <table class="table">
                    <tbody>
                        <tr id="compareProductImage">
                            <th>Product image</th>
                        </tr>
                        <tr id="compareProduct">
                            <th>Product name</th>
                        </tr>
                        <tr id="comparePrice">
                            <th>Price</th>
                        </tr>
                        <tr id="compareColor">
                            <th>Color</th>
                        </tr>
                        <tr id="compareStock">
                            <th>Stock</th>
                        </tr>
                        <tr id="compareCart">
                            <th>Add to Cart</th>
                        </tr>
                        <tr id="compareDelete">
                            <th>Remove</th>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="password_reset" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h1 class="modal-title"></h1>
            </div>
            <div class="modal-body">
                <div class="footer-subscribe">
                    <form action="{{url('password_reset')}}" id="password-reset-form">
                        <p class="success text-center alert alert-success hidden"></p>
                        <p class="error text-center alert alert-danger hidden"></p>
                        <input type="email" name="email" placeholder="Email Address..." required/>
                        <input type="hidden" name="_method" value="PUT"/>
                        <button class="button-one submit-btn-4" type="submit" data-text="Send Password Reset Link">Send Password Reset Link</button>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="quote" role="dialog" style="top: 150px">
    <div class="modal-dialog modal-sm">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Ask for price quotation</h4>
            </div>
            <div class="modal-body">
                <div class="send-message mt-60" style="margin: 0">
                    <p class="success text-center alert alert-success hidden"></p>
                    <form action="{{url('messages')}}" id="message-form">
                        <input type="hidden" name="subject" id="subject" />
                        <input type="hidden" name="message" id="messageBody" />
                        <input type="text" name="name" placeholder="Your name here..." required />
                        <input type="email" name="email" placeholder="Your email here..." required />
                        <input type="number" name="phone" placeholder="Your phone here..." required />
                        <button class="button-one submit-button mt-20" data-text="submit message" type="submit">submit</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- all js here -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-126368920-3"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-126368920-3');
</script>
<!-- jquery latest version -->
<script src="{{asset('js/vendor/jquery-1.12.0.min.js')}}"></script>
<!-- isotope js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.js" integrity="sha256-aZcT9p29I4e3w7VyBLzcPYbTrDUHGKetZaUpPg0sU+s=" crossorigin="anonymous"></script>
<!-- bootstrap js -->
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<!-- jquery.meanmenu js -->
<script src="{{asset('js/jquery.meanmenu.js')}}"></script>
<!-- slick.min js -->
<script src="{{asset('js/slick.min.js')}}"></script>
<!-- jquery.treeview js -->
<script src="{{asset('js/jquery.treeview.js')}}"></script>
<script src="{{asset('js/bootstrap-treeview.js')}}"></script>
<!-- lightbox.min js -->
<script src="{{asset('js/lightbox.min.js')}}"></script>
<!-- jquery-ui js -->
<script src="{{asset('js/jquery-ui.min.js')}}"></script>
<!-- jquery.nivo.slider js -->
<script src="{{asset('lib/js/jquery.nivo.slider.js')}}"></script>
<script src="{{asset('lib/home.js')}}"></script>
<!-- jquery.nicescroll.min js -->
<script src="{{asset('js/jquery.nicescroll.min.js')}}"></script>
<!-- countdon.min js -->
<script src="{{asset('js/countdon.min.js')}}"></script>
<!-- wow js -->
<script src="{{asset('js/wow.min.js')}}"></script>
<!-- plugins js -->
<script src="{{asset('js/plugins.js')}}"></script>
<!-- main js -->
<script src="{{asset('js/main.js')}}"></script>
<!-- custom js -->
<script src="{{asset('js/custom.js')}}"></script>

@include('messages')

<!-- custom js script goes here -->
@yield('script')

</body>
</html>