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
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

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
</head>
<body>
	<!-- WRAPPER START -->
	<div class="wrapper bg-dark-white">
		<!-- ORDER-AREA START -->
		<div class="shopping-cart-area  pt-80 pb-80">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="shopping-cart">

							<!-- Tab panes -->
							<div>
								<!-- order-complete start -->
								<div>
									<form action="#">
										<div class="thank-recieve bg-white mb-30">
											<p>Thank you. Your order has been received.</p>
										</div>
										<div class="order-info bg-white text-center clearfix mb-30">
											<div class="single-order-info">
												<h4 class="title-1 text-uppercase text-light-black mb-0">order no</h4>
												<p class="text-uppercase text-light-black mb-0"><strong> {{$order->id}}</strong></p>
											</div>
											<div class="single-order-info">
												<h4 class="title-1 text-uppercase text-light-black mb-0">Date</h4>
												<p class="text-uppercase text-light-black mb-0"><strong>{{$order->created_at}}</strong></p>
											</div>
											<div class="single-order-info">
												@php $total_price = $cart_subtotal = 0; @endphp
												@foreach($order->orderDetails as $orderDetail)
													@php
														$salePrice = 0;
														foreach($orderDetail->product->deals as $deals){
															if ($deals){
																if ($deals->valid_until >= \Carbon\Carbon::now()){
																	$salePrice = $orderDetail->product->salePrice-(($orderDetail->product->salePrice*$deals->discount_value)/100);
																}
															}
														}

														foreach($orderDetail->product->offers as $offers){
															if ($offers){
																if ($offers->valid_until >= \Carbon\Carbon::now()){
																	$salePrice = $orderDetail->product->salePrice-(($orderDetail->product->salePrice*$offers->discount_value)/100);
																}
															}
														}

														if(isset($salePrice) && $salePrice != 0)
															$proPrice = $salePrice;
														else
															$proPrice = $orderDetail->product->salePrice;

														$unitPrice = $orderDetail->quantity * $proPrice;
														$total_price += $unitPrice;
														$cart_subtotal += $unitPrice;
													@endphp
												@endforeach
												@if($order->discount_id != null)
													@php
														$discount = \App\Discount::find($order->discount_id);
													if($discount->discount_unit == 0){
													$discount_val = ($total_price*$discount->discount_value)/100;
														$total_price = $total_price - $discount_val;
													}
													elseif($discount->discount_unit  == 1){
														$discount_val = $total_price - $discount->discount_value;
														$total_price = $total_price - $discount_val;
													}
													else{
														$discount_val = $total_price - $discount->discount_value;
														$total_price = $total_price - $discount_val;
													}
													@endphp
												@endif
												<h4 class="title-1 text-uppercase text-light-black mb-0">Total</h4>
												<p class="text-uppercase text-light-black mb-0"><strong>৳ {{$total_price+($total_price*0.15)+15}}</strong></p>
											</div>
											<div class="single-order-info">
												<h4 class="title-1 text-uppercase text-light-black mb-0">payment method</h4>
												@if($order->payment->paymentMethod == 0)
													<p class="text-uppercase text-light-black mb-0"><a href="#"><strong>bKash</strong></a></p>
												@elseif($order->payment->paymentMethod == 1)
													<p class="text-uppercase text-light-black mb-0"><a href="#"><strong>Rocket</strong></a></p>
												@elseif($order->payment->paymentMethod == 2)
													<p class="text-uppercase text-light-black mb-0"><a href="#"><strong>direct bank transfer</strong></a></p>
												@elseif($order->payment->paymentMethod == 3)
													<p class="text-uppercase text-light-black mb-0"><a href="#"><strong>check payment</strong></a></p>
												@else
													<p class="text-uppercase text-light-black mb-0"><a href="#"><strong>Cach on delivery</strong></a></p>
												@endif
											</div>
										</div>
										<div class="shop-cart-table check-out-wrap">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-sm-12">
													<div class="our-order payment-details pr-20">
														<h4 class="title-1 title-border text-uppercase mb-30">our order</h4>
														<table>
															<thead>
															<tr>
																<th><strong>Product</strong></th>
																<th class="text-right"><strong>Total</strong></th>
															</tr>
															</thead>
															<tbody>
															@foreach($order->orderDetails as $orderDetail)
																@php
																	$salePrice = 0;
																	foreach($orderDetail->product->deals as $deals){
																		if ($deals){
																			if ($deals->valid_until >= \Carbon\Carbon::now()){
																				$salePrice = $orderDetail->product->salePrice-(($orderDetail->product->salePrice*$deals->discount_value)/100);
																			}
																		}
																	}

																	foreach($orderDetail->product->offers as $offers){
																		if ($offers){
																			if ($offers->valid_until >= \Carbon\Carbon::now()){
																				$salePrice = $orderDetail->product->salePrice-(($orderDetail->product->salePrice*$offers->discount_value)/100);
																			}
																		}
																	}

																	if(isset($salePrice) && $salePrice != 0)
																		$proPrice = $salePrice;
																	else
																		$proPrice = $orderDetail->product->salePrice;

																	$unitPrice = $orderDetail->quantity * $proPrice;
																@endphp
																<tr>
																	<td>{{$orderDetail->product->productName}}  x {{$orderDetail->quantity}}</td>
																	<td class="text-right">৳{{$unitPrice}}</td>
																</tr>
															@endforeach
															<tr>
																<td>Cart Subtotal</td>
																<td class="text-right">৳{{$cart_subtotal}}</td>
															</tr>
															@if(Session::has('coupon_id'))
																<tr>
																	<td class="text-left">Discount</td>
																	<td class="text-right">৳{{$discount_val}}</td>
																</tr>
															@endif
															<tr>
																<td>Shipping and Handing</td>
																<td class="text-right">৳15.00</td>
															</tr>
															<tr>
																<td>Vat (15%)</td>
																<td class="text-right">৳{{$total_price*0.15}}</td>
															</tr>
															<tr>
																<td>Order Total</td>
																<td class="text-right">৳{{$total_price+($total_price*0.15)+15}}</td>
															</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!-- payment-method -->
												<div class="col-md-6 col-sm-6 col-sm-12 mt-xs-30">
													<div class="payment-method  pl-20">
														<h4 class="title-1 title-border text-uppercase mb-30">payment method</h4>
														<div id="payment" class="woocommerce-checkout-payment">
															<ul class="wc_payment_methods payment_methods methods">
																@if($order->payment->paymentMethod == 0)
																	<li class="wc_payment_method payment_method_softtech_bkash">
																		<label for="payment_method_softtech_bkash">
																			bKash <img src="http://gamersbd.com/wp-content/plugins/bkash/images/bkash.png" alt="bKash">	</label>
																		<div class="payment_box payment_method_softtech_bkash">
																			<label for="bkash_number">bKash Number</label>
																			<input type="number" name="bkash_number" id="bkash_number" value="{{$order->payment->accNo}}" disabled>
																			</p>
																			<p>
																				<label for="bkash_transaction_id">bKash Transaction ID</label>
																				<input type="text" name="bkash_transaction_id" id="bkash_transaction_id" value="{{$order->payment->tranId}}" disabled>
																			</p>
																		</div>
																	</li>
																@elseif($order->payment->paymentMethod == 1)
																	<li class="wc_payment_method payment_method_sobkichu_rocket">
																		<label for="payment_method_sobkichu_rocket">
																			Rocket <img src="http://gamersbd.com/wp-content/plugins/woo-rocket/images/rocket.png" alt="Rocket">	</label>
																		<div class="payment_box payment_method_sobkichu_rocket">
																			<p>
																				<label for="rocket_number">Rocket Number</label>
																				<input type="number" name="rocket_number" id="Rocket_number" value="{{$order->payment->accNo}}" disabled>
																			</p>
																			<p>
																				<label for="rocket_transaction_id">Transaction ID</label>
																				<input type="text" name="rocket_transaction_id" id="rocket_transaction_id" value="{{$order->payment->tranId}}" disabled>
																			</p>
																		</div>
																	</li>
																@elseif($order->payment->paymentMethod == 2)
																	<li class="wc_payment_method payment_method_bacs">
																		<label for="payment_method_bacs">
																			Direct bank transfer 	</label>
																		<div class="payment_box payment_method_bacs">
																			<p>
																				<label for="bacs_acc_name">Account Name</label>
																				<input type="text" name="bacs_acc_name" id="bacs_acc_name" value="{{$order->payment->acc_name}}" disabled>
																			</p>
																			<p>
																				<label for="bacs_acc_no">Account Number</label>
																				<input type="text" name="bacs_acc_no" id="bacs_acc_no" value="{{$order->payment->accNo}}" disabled>
																			</p>
																			<p>
																				<label for="bacs_bank_name">Bank Name</label>
																				<input type="text" name="bacs_bank_name" id="bacs_bank_name" value="{{$order->payment->bank_name}}" disabled>
																			</p>
																			<p>
																				<label for="bacs_bank_deposit">Deposit (Scanned copy)</label>
																				<img src="{{asset('storage/images/client/payment/'.$order->payment->deposit)}}">
																			</p>
																		</div>
																	</li>
																@elseif($order->payment->paymentMethod == 3)
																	<li class="wc_payment_method payment_method_cps">
																		<label for="payment_method_cps">
																			Cheque Payment 	</label>
																		<div class="payment_box payment_method_cps">
																			<label for="cps_bank_deposit">Cheque (Scanned copy)</label>
																			<img src="{{asset('storage/images/client/payment/'.$order->payment->deposit)}}">
																		</div>
																	</li>
																@else
																	<li class="wc_payment_method payment_method_cod">
																		<label for="payment_method_cod">
																			Cash on delivery 	</label>
																		<div class="payment_box payment_method_cod">
																			<p>Pay cash on product delivery.</p>
																		</div>
																	</li>
																@endif
															</ul>
														</div>
													</div>
												</div>
												<!-- billing-details start -->
												<div class="col-md-6 col-sm-6 col-xs-12">
													<section class="woocommerce-customer-details">

														<h4 class="title-1 title-border text-uppercase mb-30">Billing address</h4>
														<address>
															@if($order->billing)
																<p class="woocommerce-customer-details--phone">
																	{{Session::get('Name')}}<br>{{$order->billing->address}}, {{$order->billing->city}}, {{$order->billing->division}}, {{$order->billing->country}}
																</p>
																<p class="woocommerce-customer-details--phone">{{$order->billing->phone}}</p>

																<p class="woocommerce-customer-details--email">{{$order->billing->email}}</p>
															@else
																<p class="woocommerce-customer-details--phone">
																	{{Session::get('Name')}}<br>{{$order->client->billing->address}}, {{$order->client->billing->town}}, {{$order->client->billing->division}}, {{$order->client->billing->country}}
																</p>
																<p class="woocommerce-customer-details--phone">{{$order->client->billing->phone}}</p>

																<p class="woocommerce-customer-details--email">{{$order->client->billing->email}}</p>
															@endif
														</address>
													</section>
												</div>
												<!-- billing-details end -->
												<!-- shipping-details start -->
												<div class="col-md-6 col-sm-6 col-xs-12 mt-xs-30">
													<section class="woocommerce-customer-details">

														<h4 class="title-1 title-border text-uppercase mb-30">Shipping address</h4>
														<address>
															@if($order->shipping)
																<p class="woocommerce-customer-details--phone">
																	{{Session::get('Name')}}<br>{{$order->shipping->address}}, {{$order->shipping->town}}, {{$order->shipping->division}}, {{$order->shipping->country}}
																</p>
																<p class="woocommerce-customer-details--phone">{{$order->shipping->phone}}</p>

																<p class="woocommerce-customer-details--email">{{$order->shipping->email}}</p>
															@else
																<p class="woocommerce-customer-details--phone">
																	{{Session::get('Name')}}<br>{{$order->client->shipping->address}}, {{$order->client->shipping->town}}, {{$order->client->shipping->division}}, {{$order->client->shipping->country}}
																</p>
																<p class="woocommerce-customer-details--phone">{{$order->client->shipping->phone}}</p>

																<p class="woocommerce-customer-details--email">{{$order->client->shipping->email}}</p>
															@endif
														</address>
													</section>
												</div>
												<!-- shipping-details end -->
											</div>
										</div>
									</form>
								</div>
								<!-- order-complete end -->
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ORDER-AREA END -->

		<style>
			.payment_box {
				display: block;
			}
		</style>

		<!-- all js here -->
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
	</div>
	<!-- WRAPPER END -->

</body>
</html>