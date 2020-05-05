@extends('layouts.app')

@section('content')
    <!-- HEADING-BANNER START -->
    <div class="heading-banner-area overlay-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading-banner">
                        <div class="breadcumbs pb-15">
                            <ul>
                                <li><a href="{{url('/home')}}">Home</a></li>
                                <li>Product by industry</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- HEADING-BANNER END -->
    <!-- PRODUCT-AREA START -->
    <div class="product-area pt-80 pb-80 product-style-2">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12 col-xs-12">
                    <!-- Widget-Search start -->
                    <aside class="widget widget-search mb-30">
                        <form action="#">
                            <input type="text" id="productSearch" placeholder="Search here..." />
                            <button type="submit">
                                <i class="zmdi zmdi-search"></i>
                            </button>
                        </form>
                    </aside>
                    <!-- Widget-search end -->
                    <!-- Widget-Categories start -->
                    <aside class="widget widget-categories  mb-30">
                        <div class="widget-title">
                            <h4>Industries</h4>
                        </div>
                        <div class="widget-info product-cat boxscrol2" data-filter-group="industry">
                            <ul class="treeview">
                                <li><a href="#" class="button is-checked" data-filter=""><i class="zmdi zmdi-dot-circle"></i> All</a></li>
                                @foreach($industries as $industry)
                                    <li><a href="#" class="button" data-filter=".{{$industry->id}}"><i class="zmdi zmdi-dot-circle"></i> {{$industry->industryName}}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </aside>
                    <!-- Widget-categories end -->
                    <!-- Shop-Filter start -->
                    <aside class="widget shop-filter mb-30">
                        <div class="widget-title">
                            <h4>Price</h4>
                        </div>
                        <div class="widget-info">
                            <div class="price_filter">
                                <div class="price_slider_amount">
                                    <input type="submit"  value="You range :"/>
                                    <input type="text" id="amount" name="price"  placeholder="Add Your Price" />
                                </div>
                                <div id="slider-range" data-filter-group="price"></div>
                            </div>
                        </div>
                    </aside>
                    <!-- Shop-Filter end -->
                    <!-- Widget-Color start -->
                    <aside class="widget widget-color mb-30">
                        <div class="widget-title">
                            <h4>Color</h4>
                        </div>
                        <div class="widget-info color-filter product-cat boxscrol2 clearfix" data-filter-group="color">
                            <ul>
                                <li><a href="#" class="button is-checked" data-filter=""><span class="color"></span>All</a></li>
                                @foreach($colors as $color)
                                    <li><a href="#" class="button" data-filter=".{{$color->color}}"><span class="color {{$color->color}}"></span>{{$color->color}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </aside>
                    <!-- Widget-Color end -->
                    <!-- Widget-Size start -->
                    <aside class="widget widget-size mb-30">
                        <div class="widget-title">
                            <h4>Size</h4>
                        </div>
                        <div class="widget-info size-filter product-cat boxscrol2 clearfix" data-filter-group="size">
                            <ul>
                                <li><a href="#" class="button is-checked" data-filter="">All</a></li>
                                @foreach($sizes as $size)
                                    <li><a href="#" class="button" data-filter=".{{$size->size}}">{{$size->size}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </aside>
                    <!-- Widget-Size end -->
                    <!-- Widget-banner start -->
                    <aside class="widget widget-banner hidden-sm">
                        <div class="widget-info widget-banner-img">
                            @foreach($banners as $banner)
                                <a href="{{$banner->banner_link_industry_page}}"><img src="{{asset('storage/images/banner/'.$banner->banner_industry_page)}}" alt="" /></a>
                            @endforeach
                        </div>
                    </aside>
                    <!-- Widget-banner end -->
                </div>
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <!-- Shop-Content End -->
                    <div class="shop-content mt-tab-30 mt-xs-30">
                        <div class="product-option mb-30 clearfix">
                            <!-- Nav tabs -->
                            <ul class="shop-tab">
                                <li class="active"><a href="#grid-view" data-toggle="tab"><i class="zmdi zmdi-view-module"></i></a></li>
                                <li><a href="#list-view"  data-toggle="tab"><i class="zmdi zmdi-view-list"></i></a></li>
                            </ul>
                            <div class="showing text-right hidden-xs">
                                <p class="mb-0">Showing @if(!$products->isEmpty()) 1 @else 0 @endif-{{$products->count()}} of  {{$products->count()}} Results</p>
                            </div>
                        </div>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="grid-view">
                                <div class="row">
                                @foreach($products as $product)
                                    <!-- Single-product start -->
                                        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 product {{$product->industry->id}} @foreach($product->colors as $color){{$color->color}} @endforeach @foreach($product->sizes as $size){{$size->size}} @endforeach" data-price="{{$product->salePrice}}">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <span class="pro-price-2">
                                                        @if($product->salePrice)
                                                            ৳ {{number_format($product->salePrice, 2)}}
                                                        @else
                                                            <a href="#" data-subject="Price quotation for {{$product->productName}}" data-message="I would like to know the price of {{$product->productName}}." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                                        @endif
                                                    </span>
                                                    <a href="{{url('products/'.$product->id)}}"><img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
                                                </div>
                                                <div class="product-info clearfix text-center">
                                                    <div class="fix">
                                                        <h4 class="post-title"><a href="{{url('products/'.$product->id)}}">{{substr($product->productName, 0, 18)}}</a></h4>
                                                    </div>
                                                    <div class="fix">
                                                        @php $sum = $i = 0; @endphp
                                                        @foreach($product->productreviews as $productreview)
                                                            @php
                                                                $i++;
                                                                $sum += $productreview->rating;
                                                            @endphp
                                                        @endforeach
                                                        <span class="pro-rating">
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
                                                    <div class="product-action clearfix">
                                                        <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$product->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                                        <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-saleprice="{{$product->salePrice}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                                        <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-saleprice="{{$product->salePrice}}" data-stock="{{$product->availablity}}" data-color="@foreach($product->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$product->id)}}" data-requrl="{{url('productsByCat/'.$product->minicategory_id.'/'.$product->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                                        @if($product->salePrice)
                                                        <a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$product->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single-product end -->
                                    @endforeach
                                </div>
                            </div>
                            <div class="tab-pane" id="list-view">
                                <div class="row shop-list">
                                @foreach($products as $product)
                                    <!-- Single-product start -->
                                        <div class="col-lg-12 productList {{$product->industry->id}} @foreach($product->colors as $color){{$color->color}} @endforeach @foreach($product->sizes as $size){{$size->size}} @endforeach" data-price="{{$product->salePrice}}">
                                            <div class="single-product clearfix">
                                                <div class="product-img">
                                                    <span class="pro-price-2">
                                                        @if($product->salePrice)
                                                            ৳ {{number_format($product->salePrice, 2)}}
                                                        @else
                                                            <a href="#" data-subject="Price quotation for {{$product->productName}}" data-message="I would like to know the price of {{$product->productName}}." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
                                                        @endif
                                                    </span>
                                                    <a href="{{url('products/'.$product->id)}}"><img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" /></a>
                                                </div>
                                                <div class="product-info">
                                                    <div class="fix">
                                                        <h4 class="post-title floatleft"><a href="{{url('products/'.$product->id)}}">{{$product->productName}}</a></h4>
                                                        @php $sum = $i = 0; @endphp
                                                        @foreach($product->productreviews as $productreview)
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
                                                            <span>( {{$i}} Rating )</span>
                                                        </span>
                                                    </div>
                                                    <div class="fix mb-20">
                                                        <span class="pro-price">
                                                            @if($product->salePrice)
                                                                ৳ {{number_format($product->salePrice, 2)}}
                                                            @endif
                                                        </span>
                                                    </div>
                                                    <div class="product-description">
                                                        <p>{{substr(strip_tags($product->description), 0, 330)}}...</p>
                                                    </div>
                                                    <div class="clearfix">
                                                        <div class="cart-plus-minus">
                                                            <input type="text" value="01" name="qty{{$product->id}}" class="cart-plus-minus-box">
                                                        </div>
                                                        <div class="product-action clearfix">
                                                            <a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$product->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
                                                            <a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-saleprice="{{$product->salePrice}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
                                                            <a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-saleprice="{{$product->salePrice}}" data-stock="{{$product->availablity}}" data-color="@foreach($product->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$product->id)}}" data-requrl="{{url('productsByCat/'.$product->minicategory_id.'/'.$product->id)}}"><i class="zmdi zmdi-refresh"></i></a>
                                                            @if($product->salePrice)
                                                            <a href="#" data-toggle="tooltip" class="addListCart" data-placement="top" title="Add To Cart" data-id="{{$product->id}}" data-url="{{url('/addCart')}}"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single-product end -->
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <!-- Pagination start -->
                        <div class="shop-pagination  text-center">
                            <div class="pagination">
                                <p class="mb-0">Showing @if(!$products->isEmpty()) 1 @else 0 @endif-{{$products->count()}} of  {{$products->count()}} Results</p>
                            </div>
                        </div>
                        <!-- Pagination end -->
                    </div>
                    <!-- Shop-Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- PRODUCT-AREA END -->
@endsection
