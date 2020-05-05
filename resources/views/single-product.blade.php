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
										<li>Single Product</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- PRODUCT-AREA START -->
			<div class="product-area single-pro-area pt-80 pb-80 product-style-2">
				<div class="container">	
					<div class="row shop-list single-pro-info no-sidebar">
						<!-- Single-product start -->
						<div class="col-lg-12">
							<div class="single-product clearfix">
								<!-- Single-pro-slider Big-photo start -->
								<div class="single-pro-slider single-big-photo view-lightbox slider-for">
									<div>
										<img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" />
										<a class="view-full-screen" href="{{asset('storage/images/product/'.$product->image->image1)}}"  data-lightbox="roadtrip" data-title="My caption">
											<i class="zmdi zmdi-zoom-in"></i>
										</a>
									</div>
									@if ($product->image->image2)
									<div>
										<img src="{{asset('storage/images/product/'.$product->image->image2)}}" alt="" />
										<a class="view-full-screen" href="{{asset('storage/images/product/'.$product->image->image2)}}"  data-lightbox="roadtrip" data-title="My caption">
											<i class="zmdi zmdi-zoom-in"></i>
										</a>
									</div>
									@endif
									@if ($product->image->image3)
									<div>
										<img src="{{asset('storage/images/product/'.$product->image->image3)}}" alt="" />
										<a class="view-full-screen" href="{{asset('storage/images/product/'.$product->image->image3)}}"  data-lightbox="roadtrip" data-title="My caption">
											<i class="zmdi zmdi-zoom-in"></i>
										</a>
									</div>
									@endif
									@if ($product->image->image4)
									<div>
										<img src="{{asset('storage/images/product/'.$product->image->image4)}}" alt="" />
										<a class="view-full-screen" href="{{asset('storage/images/product/'.$product->image->image4)}}"  data-lightbox="roadtrip" data-title="My caption">
											<i class="zmdi zmdi-zoom-in"></i>
										</a>
									</div>
									@endif
									@if ($product->image->image5)
									<div>
										<img src="{{asset('storage/images/product/'.$product->image->image5)}}" alt="" />
										<a class="view-full-screen" href="{{asset('storage/images/product/'.$product->image->image5)}}"  data-lightbox="roadtrip" data-title="My caption">
											<i class="zmdi zmdi-zoom-in"></i>
										</a>
									</div>
									@endif
								</div>	
								<!-- Single-pro-slider Big-photo end -->								
								<div class="product-info">
									<div class="fix">
										<h4 class="post-title floatleft">{{$product->productName}}</h4>
										<span class="pro-rating floatright">
										@php $sum = $i = 0; @endphp
										@foreach($product->productreviews as $productreview)
											@php
												$i++;
												$sum += $productreview->rating;
											@endphp
										@endforeach
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
											<span>( {{$i}} Rating )</span>
										@else
											<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
											<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
											<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
											<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
											<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
										@endif
										</span>
									</div>
									<div class="fix mb-20">
                                        @php
                                            foreach($product->deals as $deals){
                                                if ($deals){
                                                	if ($deals->valid_until >= \Carbon\Carbon::now()){
                                                		$price = $product->salePrice-(($product->salePrice*$deals->discount_value)/100);
                                                	}
                                                }
                                            }

                                            foreach($product->offers as $offers){
                                                if ($offers){
                                                	if ($offers->valid_until >= \Carbon\Carbon::now()){
                                                		$price = $product->salePrice-(($product->salePrice*$offers->discount_value)/100);
                                                	}
                                                }
                                            }
                                        @endphp
										@if($product->salePrice)
											<span class="pro-price">৳ @if(isset($price)){{number_format($price, 2)}} @else {{number_format($product->salePrice, 2)}} @endif</span>
											<span class="old-price" style="text-decoration: line-through;margin-left: 15px">৳{{number_format($product->regularPrice, 2)}}</span>
										@else
											<a href="#" data-subject="Price quotation for {{$product->productName}}" data-message="I would like to know the price of {{$product->productName}}." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
										@endif
										<span class="floatright"><b>Category: </b>{{$product->category->categoryName}}</span>
									</div>
									<div class="fix mb-20">
										<span class="floatleft"><b>Brand: </b>{{$product->brand->brandName}}</span>
										<span class="floatright"><b>Industry: </b>{{$product->industry->industryName}}</span>
									</div>
									<div class="product-description">
										<p>{{substr(strip_tags($product->description), 0, 330)}}...</p>
									</div>
									<!-- sku start -->
									<div class="color-filter single-pro-color mb-20 clearfix">
										<ul>
											<li><span class="color-title text-capitalize">sku</span></li>
											<li>{{$product->sku}}</li>
										</ul>
									</div>
									<!-- sku end -->
									<!-- color start -->								
									<div class="color-filter single-pro-color mb-20 clearfix">
										<ul>
											<li><span class="color-title text-capitalize">color</span></li>
											@foreach($product->colors as $color)
												<li><a href="#"><span class="color {{$color->color}}"></span></a></li>
											@endforeach
										</ul>
									</div>
									<!-- color end -->
									<!-- Size start -->
									<div class="size-filter single-pro-size mb-35 clearfix">
										<ul>
											<li><span class="color-title text-capitalize">size</span></li>
											@foreach($product->sizes as $size)
												<li><a href="#">{{$size->size}}</a></li>
											@endforeach
										</ul>
									</div>
									<!-- Size end -->
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
									<!-- Single-pro-slider Small-photo start -->
									<div class="single-pro-slider single-sml-photo slider-nav">
										<div>
											<img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" />
										</div>
										@if ($product->image->image2)
										<div>
											<img src="{{asset('storage/images/product/'.$product->image->image2)}}" alt="" />
										</div>
										@endif
										@if ($product->image->image3)
										<div>
											<img src="{{asset('storage/images/product/'.$product->image->image3)}}" alt="" />
										</div>
										@endif
										@if ($product->image->image4)
										<div>
											<img src="{{asset('storage/images/product/'.$product->image->image4)}}" alt="" />
										</div>
										@endif
										@if ($product->image->image5)
										<div>
											<img src="{{asset('storage/images/product/'.$product->image->image5)}}" alt="" />
										</div>
										@endif
									</div>
									<!-- Single-pro-slider Small-photo end -->
								</div>
							</div>
						</div>
						<!-- Single-product end -->
					</div>
					<!-- single-product-tab start -->
					<div class="single-pro-tab">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<div class="single-pro-tab-menu">
									<!-- Nav tabs -->
									<ul class="">
										<li class="active"><a href="#description" data-toggle="tab">Description</a></li>
										<li><a href="#reviews"  data-toggle="tab">Reviews</a></li>
										<li><a href="#information" data-toggle="tab">Specification</a></li>
										<li><a href="#tags" data-toggle="tab">Tags</a></li>
									</ul>
								</div>
							</div>
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane active" id="description">
										<div class="pro-tab-info pro-description">
											<h3 class="tab-title title-border mb-30">{{$product->productName}}</h3>
											{!!html_entity_decode($product->description)!!}
										</div>
									</div>
									<div class="tab-pane" id="reviews">
										<div class="pro-tab-info pro-reviews">
											<div class="customer-review mb-60">
												<h3 class="tab-title title-border mb-30">Customer review</h3>
												<ul class="product-comments clearfix" id="productreview">
													@foreach($product->productreviews as $productreview)
													<li class="mb-30" id="review{{$productreview->id}}">
														<div class="pro-reviewer">
															<img src="{{asset('img/reviewer/user.png')}}" alt="" />
														</div>
														<div class="pro-reviewer-comment">
															<div class="fix">
																<div class="floatleft mbl-center">
																	<h5 class="text-uppercase mb-0"><strong>{{$productreview->authorName}}</strong></h5>
																	<p class="reply-date">{{$productreview->created_at}}</p>
																</div>
																<div class="comment-reply floatright">
																	<a href="#"><i class="zmdi zmdi-mail-reply"></i></a>
																</div>
															</div>
															<p class="mb-0">{{$productreview->review}}</p>
														</div>
													</li>
													@endforeach
												</ul>
											</div>
											<div class="leave-review">
												<h3 class="tab-title title-border mb-30">Leave your review</h3>
												<div class="reply-box">
													<form action="{{url('productreviews')}}" id="review-form">
														<div class="your-rating mb-30">
															<p class="mb-10"><strong>Your Rating</strong></p>
															<input type="radio" name="rating" value="1" />
															<span>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
															</span>
															<span class="separator">|</span>
															<input type="radio" name="rating" value="2" />
															<span>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
															</span>
															<span class="separator">|</span>
															<input type="radio" name="rating" value="3" />
															<span>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
															</span>
															<span class="separator">|</span>
															<input type="radio" name="rating" value="4" />
															<span>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
															</span>
															<span class="separator">|</span>
															<input type="radio" name="rating" value="5" checked />
															<span>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
																<a href="#"><i class="zmdi zmdi-star-outline"></i></a>
															</span>
														</div>
														<div class="row">
															<div class="col-md-6">
																<input type="text" placeholder="Your name here..." name="authorName" />
															</div>
															<div class="col-md-6">
																<input type="email" placeholder="Email..." name="email" />
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<input type="hidden" name="product_id" value="{{$product->id}}" />
																<textarea class="custom-textarea" name="review" placeholder="Your review here..." ></textarea>
																<button type="submit" data-text="submit review" class="button-one submit-button mt-20">submit review</button>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>		
									</div>
									<div class="tab-pane" id="information">
										<div class="pro-tab-info pro-information">
											<h3 class="tab-title title-border mb-30">Product information</h3>
											{!!html_entity_decode($product->specification)!!}
										</div>											
									</div>
									<div class="tab-pane" id="tags">
										<div class="pro-tab-info pro-information">
											<h3 class="tab-title title-border mb-30">tags</h3>
											<!-- Widget-Tag start -->
											<aside class="widget widget-size mb-30">
												<div class="widget-info size-filter clearfix">
													<ul>
														@foreach($product->tags as $tag)
															<li><a href="#">{{$tag->tag}}</a></li>
														@endforeach
													</ul>
												</div>
											</aside>
											<!-- Widget-Tag end -->
										</div>											
									</div>
								</div>									
							</div>
						</div>
					</div>
					<!-- single-product-tab end -->
				</div>
			</div>
			<!-- PRODUCT-AREA END -->
			<!-- PRODUCT-AREA START -->
			<div class="product-area pt-80 pb-35" style="padding-top: 0">
				<div class="container">
					<!-- Section-title start -->
					<div class="row">
						<div class="col-lg-12">
							<div class="section-title text-center">
								<h2 class="title-border">Related Products</h2>
							</div>
						</div>
					</div>
					<!-- Section-title end -->
					<div class="row cus-row-30">
						<div class="product-slider arrow-left-right">
						@foreach($products as $product)
							<!-- Single-product start -->
								<div class="single-product col-lg-12">
									<div class="product-img">
										<a href="{{url('products/'.$product->id)}}"><img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" style="height: 263px;width: 263px" /></a>
										<div class="product-action clearfix">
											<a href="#" data-toggle="tooltip" class="addWlist" data-placement="top" title="Wishlist" data-id="{{$product->id}}" data-url="{{url('wishlists')}}"><i class="zmdi zmdi-favorite-outline"></i></a>
											<a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-saleprice="{{$product->salePrice}}" data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." class="quick-view"><i class="zmdi zmdi-zoom-in"></i></a>
											<a href="#" data-toggle="tooltip" class="addCompare" data-placement="top" title="Compare" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-saleprice="{{$product->salePrice}}" data-stock="{{$product->availablity}}" data-color="@foreach($product->colors as $color) {{$color->color}}, @endforeach" data-url="{{url('products/'.$product->id)}}" data-requrl="{{url('productsByCat/'.$product->minicategory_id.'/'.$product->id)}}"><i class="zmdi zmdi-refresh"></i></a>
											<a href="#" data-toggle="tooltip" class="addCart" data-placement="top" title="Add To Cart" data-id="{{$product->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
										</div>
									</div>
									<div class="product-info clearfix">
										<div class="fix">
											<h4 class="post-title floatleft"><a href="{{url('products/'.$product->id)}}">{{substr($product->productName, 0, 18)}}</a></h4>
											<p class="floatright hidden-sm hidden-xs">{{$product->category->categoryName}}</p>
										</div>
										<div class="fix">
											<span class="pro-price floatleft">
												@if($product->salePrice)
													৳ {{number_format($product->salePrice, 2)}}
												@else
													<a href="#" data-subject="Price quotation for {{$product->productName}}" data-message="I would like to know the price of {{$product->productName}}." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
												@endif
											</span>
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

            {{-- Modal Form and Delete Post --}}
            <div id="deleteModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h2 class="modal-title" id="largeModalLabel">Large Modal</h2>
                        </div>
                        <div class="modal-body">

                            {{-- Form Delete Post --}}
                            <input type="hidden" name="_method" value="DELETE">
                            <div class="deleteContent">
                                Are You sure want to delete this data?
                                <span class="hidden id" style="display:none"></span>
                            </div>

                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn actionBtn" data-dismiss="modal">
                                <span id="footer_action_button" class="glyphicon"></span>
                            </button>

                            <button type="button" class="btn btn-warning" data-dismiss="modal">
                                <span class="glyphicon glyphicon"></span>close
                            </button>

                        </div>
                    </div>
                </div>
            </div>
@endsection
