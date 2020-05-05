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
										<li>Shopping Cart</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- SHOPPING-CART-AREA START -->
			<div class="shopping-cart-area  pt-80 pb-80">
				<div class="container">	
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="shopping-cart">

								<!-- Tab panes -->
								<div class="tab-content">
									<!-- shopping-cart start -->
									<div class="tab-pane active" id="shopping-cart">
										@if ($carts != null)
										<form action="#">
											<div class="shop-cart-table">
												<div class="table-content table-responsive">
													<table>
														<thead>
															<tr>
																<th class="product-thumbnail">Product</th>
																<th class="product-price">Price</th>
																<th class="product-quantity">Quantity</th>
																<th class="product-update">Update</th>
																<th class="product-subtotal">Total</th>
																<th class="product-remove">Remove</th>
															</tr>
														</thead>
														<tbody>
														@php
															$carts = \Illuminate\Support\Facades\Session::get('cart');
															$price = 0;
														@endphp
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
															@endphp
															<tr id="cart{{$product->id}}">
																<td class="product-thumbnail  text-left">
																	<!-- Single-product start -->
																	<div class="single-product">
																		<div class="product-img">
																			<a href="{{url('products/'.$product->id)}}"><img src="{{asset('storage/images/product/'.$product->image->image1)}}" alt="" /></a>
																		</div>
																		<div class="product-info">
																			<h4 class="post-title"><a class="text-light-black" href="{{url('products/'.$product->id)}}">{{substr($product->productName, 0, 20)}}</a></h4>
																			<p class="mb-0">Color :
																			@foreach($product->colors as $color)
																				{{$color->color}}
																			@endforeach
																			</p>
																			<p class="mb-0">Size :
																			@foreach($product->sizes as $size)
																				{{$size->size}}
																			@endforeach
																			</p>
																		</div>
																	</div>
																	<!-- Single-product end -->
																</td>
																@php
																	if(isset($salePrice) && $salePrice != 0)
																		$proPrice = $salePrice;
																	else
																		$proPrice = $product->salePrice;

																	$unitPrice = $cart['qty'] * $proPrice;
																	$price += $unitPrice;
																@endphp
																<td class="product-price">৳ {{number_format($proPrice, 2)}}</td>
																<td class="product-quantity">
																	<div class="cart-plus-minus">
																		<input type="text" value="{{$cart['qty']}}" name="qtybutton{{$product->id}}" min="1" class="cart-plus-minus-box">
																	</div>
																</td>
																<td class="product-update"><a href="#" data-text="Update Quantity" data-url="{{url('updateCart')}}" data-id="{{$product->id}}" class="cart-update"><i class="zmdi zmdi-border-color"></i></a></td>
																<td class="product-subtotal">৳ {{number_format($unitPrice, 2)}}</td>
																<td class="product-remove">
																	<a href="#" id="delete-cart" data-id="{{$product->id}}" data-url="{{url('deleteCart')}}"><i class="zmdi zmdi-close"></i></a>
																</td>
															</tr>
														@endforeach
														</tbody>
													</table>
												</div>
											</div>
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="customer-login mt-30">
														<h4 class="title-1 title-border text-uppercase">coupon discount</h4>
														<p class="text-gray">Enter your coupon code if you have one!</p>
														<input type="text" name="coupon_code" placeholder="Enter your code here." required>
														<button type="submit" data-price="{{$price+($price*0.15)+15}}" data-url="{{url('applyCoupon')}}" data-text="apply coupon" id="applyCoupon" class="button-one submit-button mt-15">apply coupon</button>
													</div>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="customer-login payment-details mt-30">
														<h4 class="title-1 title-border text-uppercase">payment details</h4>
														<table>
															<tbody>
																<tr>
																	<td class="text-left">Cart Subtotal</td>
																	<td class="text-right">৳{{number_format($price, 1)}}</td>
																</tr>
																@if(Session::has('coupon_id'))
																	@php
																		$discount = \App\Discount::find(Session::get('coupon_id'));
																	if($discount->discount_unit == 0){
																	$discount_val = ($price*$discount->discount_value)/100;
																		$price = $price - $discount_val;
																	}
																	else{
																		$discount_val = $discount->discount_value;
																		$price = $price - $discount_val;
																	}
																	@endphp
																	<tr>
																		<td class="text-left">Discount @if($discount->discount_unit == 0) ({{$discount->discount_value}}%) @endif</td>
																		<td class="text-right">৳ {{number_format($discount_val, 2)}}</td>
																	</tr>
																@endif
																<tr>
																	<td class="text-left">Shipping</td>
																	<td class="text-right">৳ 15.00</td>
																</tr>
																<tr>
																	<td class="text-left">Vat (15%)</td>
																	<td class="text-right">৳ {{number_format($price*0.15, 2)}}</td>
																</tr>
																<tr>
																	<td class="text-left">Order Total</td>
																	<td class="text-right">৳ {{number_format($price+($price*0.15)+15, 2)}}</td>
																</tr>
                                                                <tr>
                                                                    <td class="text-left">
                                                                    <a href="{{url('orders/create')}}" class="button-one submit-button mt-15" data-text="checkout" type="submit">checkout</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
														</table>
													</div>
												</div>
											</div>
											{{--<div class="row">
												<div class="col-md-12">
													<div class="customer-login mt-30">
														<h4 class="title-1 title-border text-uppercase">calculate shipping</h4>
														<p class="text-gray">Enter your shipping address.</p>
														<div class="row">
															<div class="col-md-4 col-sm-4 col-xs-12">
																<input type="text" placeholder="Country">
															</div>
															<div class="col-md-4 col-sm-4 col-xs-12">
																<input type="text" placeholder="Region / State">
															</div>
															<div class="col-md-4 col-sm-4 col-xs-12">
																<input type="text" placeholder="Post code">
															</div>
														</div>
														<button type="submit" data-text="get a quote" class="button-one submit-button mt-15">get a quote</button>
													</div>											
												</div>
											</div>--}}
										</form>
										@else
											<p class="text-center alert alert-danger">Your cart is empty!</p>
										@endif
									</div>
									<!-- shopping-cart end -->
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- SHOPPING-CART-AREA END -->
@endsection