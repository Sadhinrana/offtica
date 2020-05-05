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
										<li>Wishlist</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- WISHLIST-AREA START -->
			<div class="shopping-cart-area  pt-80 pb-80">
				<div class="container">	
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="shopping-cart">

								<!-- Tab panes -->
								<div>
									<!-- wishlist start -->
									<div>
										<form action="#">
											<div class="shop-cart-table">
												<div class="table-content table-responsive">
													<table>
														<thead>
															<tr>
																<th class="product-thumbnail">Product</th>
																<th class="product-price">Price</th>
																<th class="product-stock">stock status</th>
																<th class="product-add-cart">Add to cart</th>
																<th class="product-remove">Remove</th>
															</tr>
														</thead>
														<tbody>
														@foreach($wishlists as $wishlist)
															<tr id="wishlist{{$wishlist->id}}">
																<td class="product-thumbnail  text-left">
																	<!-- Single-product start -->
																	<div class="single-product">
																		<div class="product-img">
																			<a href="{{url('products/'.$wishlist->product->id)}}"><img src="{{asset('storage/images/product/'.$wishlist->product->image->image1)}}" alt="" /></a>
																		</div>
																		<div class="product-info">
																			<h4 class="post-title"><a class="text-light-black" href="{{url('products/'.$wishlist->product->id)}}">{{substr($wishlist->product->productName, 0, 20)}}</a></h4>

																			<p class="mb-0">Color :
																			@foreach($wishlist->product->colors as $color)
																				{{$color->color}},
																			@endforeach
																			</p>

																			<p class="mb-0">Size :
																			@foreach($wishlist->product->sizes as $size)
																				{{$size->size}},
																			@endforeach
																			</p>
																		</div>
																	</div>
																	<!-- Single-product end -->				
																</td>
																<td class="product-price">
																	@if($wishlist->product->salePrice)
																		৳ {{number_format($wishlist->product->salePrice, 2)}}
																	@else
																		<a href="#" data-subject="Price quotation for {{$wishlist->product->productName}}" data-message="I would like to know the price of {{$wishlist->product->productName}}." id="quotation" class="btn btn-info" style="background-color: #c8a165; border-color: #C8A14E">Ask for quote </a>
																	@endif
																</td>
																<td class="product-stock">
																	@if($wishlist->product->availablity == 0)
																	in stock
																	@else
																	out of stock
																	@endif
																</td>
																<td class="product-add-cart">
																	@if($wishlist->product->salePrice)
																	<a class="text-light-black addCart" href="#" title="Add To Cart" data-id="{{$wishlist->product->id}}" data-url="{{url('/addCart')}}" data-qty="1"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
																	@else
																		<p style="color: red">N/A</p>
																	@endif
																</td>
																<td class="product-remove">
																	<a href="#" class="product-delete" data-id="{{$wishlist->id}}"><i class="zmdi zmdi-close"></i></a>
																</td>
															</tr>
														@endforeach
														</tbody>
													</table>
												</div>
											</div>
										</form>									
									</div>
									<!-- wishlist end -->
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- WISHLIST-AREA END -->

			{{-- Modal Form Delete Post --}}
			<div id="myModal" class="modal fade" role="dialog">
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
