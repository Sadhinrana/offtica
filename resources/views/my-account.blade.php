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
										<li>My Account</li>
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
						<div class="col-md-3 col-sm-12 col-xs-12">
		                    <!-- Nav tabs -->
		                    <aside class="widget widget-categories  mb-30">
		                        <div class="widget-info product-cat boxscrol2" style="height: 420px;">
		                            <ul>
										<li class="active"><a href="#dashboard" class="button-one submit-button mt-15" data-text="Dashboard" data-toggle="tab">Dashboard</a></li>
										<li><a href="#company-info" class="button-one submit-button mt-15" data-text="Company Info" data-toggle="tab">Company Info</a></li>
										<li><a href="#order-details" class="button-one submit-button mt-15" data-text="Order Details" data-toggle="tab">Order Details</a></li>
										<li><a href="#billing-address" class="button-one submit-button mt-15" data-text="billing address" data-toggle="tab">billing address</a></li>
										<li><a href="#shipping-address" class="button-one submit-button mt-15" data-text="shipping address" data-toggle="tab">shipping address</a></li>
										<li><a href="#payment-method" class="button-one submit-button mt-15" data-text="payment method" data-toggle="tab">payment method</a></li>
										<li><a href="#membership-type" class="button-one submit-button mt-15" data-text="membership type" data-toggle="tab">membership type</a></li>
										<li><a href="#point-log" class="button-one submit-button mt-15" data-text="point log" data-toggle="tab">point log</a></li>
										<li><a href="#offer" class="button-one submit-button mt-15" data-text="offer & discount" data-toggle="tab">offer & discount</a></li>
										<li><a href="#wishlist" class="button-one submit-button mt-15" data-text="wishlist" data-toggle="tab">wishlist</a></li>
										<li><a href="{{url('cmrLogout')}}" class="button-one submit-button mt-15" data-text="logout">logout</a></li>
									</ul>
		                        </div>
		                    </aside>
		                    <!-- Tab panes -->
		                </div>
						<div class="col-md-9 col-sm-12 col-xs-12">
							<div class="shopping-cart">
								<div class="tab-content">
									<!-- dashboard start -->
									<div class="tab-pane active" id="dashboard">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
											<div class="showing text-center hidden-xs">
												<h2>Dashboard</h2>
											</div>
										</div>
										<!-- Nav tabs end -->
										<!-- Nav tabs end -->
										<div class="billing-details shop-cart-table">
											<h3>Profile completeness 70%</h3>
											<div class="progress">
												<div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" >
													<span class="sr-only">70% Complete</span>
												</div>
											</div>
											<!-- Small boxes (Stat box) -->
											<div class="row">
												<div class="col-lg-3 col-xs-6">
													<!-- small box -->
													<div class="small-box bg-aqua">
														<div class="inner">
															<h3>{{$client->order->count()}}</h3>
															<p>Orders</p>
														</div>
														<div class="icon">
															<i class="zmdi zmdi-case"></i>
														</div>
														<a href="#order-details" data-toggle="tab" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
													</div>
												</div>
												<!-- ./col -->
												<div class="col-lg-3 col-xs-6">
													<!-- small box -->
													<div class="small-box bg-green">
														<div class="inner">
															<h3>
																@if($client->membership_type->membership_type  == 0)
																	Prime
																@elseif($client->membership_type->membership_type  == 1)
																	Silver
																@elseif($client->membership_type->membership_type  == 2)
																	Gold
																@elseif($client->membership_type->membership_type  == 3)
																	Diamond
																@else
																	Platinum
																@endif
															</h3>
															<p>MemberShip Type</p>
														</div>
														<div class="icon">
															<i class="zmdi zmdi-account"></i>
														</div>
														<a href="#membership-type" data-toggle="tab"class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
													</div>
												</div>
												<!-- ./col -->
												<div class="col-lg-3 col-xs-6">
													<!-- small box -->
													<div class="small-box bg-yellow">
														<div class="inner">
															<h3>{{$offers->count()+$deals->count()}}</h3>
															<p>Offers & deals</p>
														</div>
														<div class="icon">
															<i class="ion ion-person-add"></i>
														</div>
														<a href="#offer" data-toggle="tab" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
													</div>
												</div>
												<!-- ./col -->
												<div class="col-lg-3 col-xs-6">
													<!-- small box -->
													<div class="small-box bg-red">
														<div class="inner">
															<h3>{{$client->wishlists->count()}}</h3>

															<p>Wishlist</p>
														</div>
														<div class="icon">
															<i class="ion ion-person-add"></i>
														</div>
														<a href="#wishlist" data-toggle="tab" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
													</div>
												</div>
												<!-- ./col -->
											</div>
											 <!--Small box ends-->
										</div>
									</div>
									<!-- dashboard start -->
									<div class="tab-pane" id="company-info">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Company Info</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="billing-details shop-cart-table">
											<form action="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID'))}}" id="update-client">
												<h3>Privacy</h3>
												<hr>
												<div class="form-group">
						                            <label class="control-label col-sm-2" for="email">Email :</label>
						                            <div class="col-sm-10">
						                                <input type="email" name="email" placeholder="Email address here..." value="{{$client->email}}" disabled>
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="oldpassword">Old Password :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="oldpassword" placeholder="old password here...">
						                            </div>
						                            <label class="control-label col-sm-2" for="password">New Password :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="password" placeholder="new password here..." value="">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="division"></label>
						                            <div class="col-sm-6">
						                                
						                            </div>
						                        </div>
												<button class="button-one submit-button mt-15" data-text="Update password" id="updatePass" type="button">Update password</button>
						                        <h3>Info</h3>
						                        <hr>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="clientName">Name :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="clientName" placeholder="Your name here..." value="{{$client->clientName}}">
						                            </div>
						                            <label class="control-label col-sm-2" for="phone">Phone :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="phone" placeholder="Phone here..." value="{{$client->phone}}">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="company">Company :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="company" placeholder="Company name here..." value="{{$client->company}}">
						                            </div>
						                            <label class="control-label col-sm-2" for="office_email">Email (Office):</label>
						                            <div class="col-sm-4">
						                                <input type="email" name="office_email" placeholder="office_email here..." value="{{$client->office_email}}">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="office_phone">Phone(Office) :</label>
						                            <div class="col-sm-4">
						                            	<input type="text" name="office_phone" placeholder="Phone here..." value="{{$client->office_phone}}">
						                            </div>
						                            <label class="control-label col-sm-2" for="address">Address :</label>
						                            <div class="col-sm-4">
						                                <textarea placeholder="Your address here..." class="custom-textarea" name="address" style="height: 50px;">{{$client->address}}</textarea>
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="zipCode">Zip-code :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="zipCode" placeholder="Zip-code  here..." value="{{$client->zipCode}}">
						                            </div>
						                            <label class="control-label col-sm-2" for="country">Country :</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="country">
															<option value="">Select Country</option>
															<option value="0" @if ($client->country === 0) selected @endif>Bangladesh</option>
														</select>
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="division">State :</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="division">
															<option value="">Select State</option>
															<option value="0" @if ($client->division === 0) selected @endif>Dhaka</option>
														</select>
						                            </div>
						                            <label class="control-label col-sm-2" for="city">Town / City :</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="city">
															<option value="">Select Town / City</option>
															<option value="0" @if ($client->city === 0) selected @endif>Dhaka</option>
														</select>
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="_method"></label>
						                            <div class="col-sm-6">
						                                <input type="hidden" name="_method" value="PUT">
						                            </div>
						                        </div>
												<button class="button-one submit-button mt-15" data-text="Update Info" type="submit">Update Info</button>
												<h3>Reference i.e. Salesman(If have any)</h3>
												<hr>
												<div class="form-group">
													<label class="control-label col-sm-2" for="salesman_id">Salesman :</label>
													<div class="col-sm-4">
														<select class="custom-select mb-15" name="salesman_id">
															<option value="">Select Salesman</option>
															@foreach($salesmen as $salesman)
															<option value="{{$salesman->id}}" @if ($client->salesman_id === $salesman->id) selected @endif>{{$salesman->salesmanName}}</option>
															@endforeach
														</select>
													</div>
													<label class="control-label col-sm-2" for="sales_update"></label>
													<div class="col-sm-4">

													</div>
												</div>
												<button class="button-one submit-button mt-15" data-text="Submit" type="button" onclick="sales_update(event)">Submit</button>
											</form>
										</div>
									</div>
									<!-- company-info end -->
									<!-- order-details start -->
									<div class="tab-pane" id="order-details" data-url="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID').'/#order-details')}}">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Order Details</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="shop-cart-table">
											<div class="table-content table-responsive">
												<table>
													<thead>
														<tr>
															<th class="product-thumbnail">ORDER ID</th>
															<th class="product-price">DATE</th>
															<th class="product-quantity">STATUS</th>
															<th class="product-subtotal">TOTAL</th>
															<th class="product-remove">DETAILS</th>
														</tr>
													</thead>
													<tbody>
													@foreach($client->order as $order)
														@php $total_price = 0; @endphp
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
														<tr>
															<td class="product-id">
																{{$order->id}}
															</td>
															<td class="product-price">{{$order->created_at}}</td>
															<td class="product-quantity">
																@if($order->status  == 0)
																	On hold
																@elseif($order->status  == 1)
																	Processing
																@elseif($order->status  == 2)
																	Pending payment
																@elseif($order->status  == 3)
																	Completed
																@elseif($order->status  == 4)
																	Cancelled
																@elseif($order->status  == 4)
																	Refunded
																@else
																	Failed
																@endif
															</td>
															<td class="product-subtotal">৳{{number_format($total_price+($total_price*0.15)+15, 2)}}</td>
															<td class="product-remove">
																<a href="{{url('orders/'.$order->id)}}"><i class="zmdi zmdi-eye"></i></a>
															</td>
														</tr>
													@endforeach
													</tbody>
												</table>
											</div>
										</div>						
									</div>
									<!-- order-details end -->
									<!-- billing-address start -->
									<div class="tab-pane" id="billing-address">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Billing Address</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="billing-details shop-cart-table">
											<form action="{{url('billings')}}" id="billing-details">
												<div class="form-group">
						                            <label class="control-label col-sm-2" for="office_email">Email :</label>
						                            <div class="col-sm-4">
						                                <input type="email" name="email" placeholder="email here..." value="@if($client->billing){{$client->billing->email}}@endif">
						                            </div>
						                            <label class="control-label col-sm-2" for="phone">Phone :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="phone" placeholder="Phone here..." value="@if($client->billing){{$client->billing->phone}}@endif">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="address">Address :</label>
						                            <div class="col-sm-4">
						                                <textarea placeholder="Your address here..." class="custom-textarea" name="address" style="height: 50px;">@if($client->billing){{$client->billing->address}}@endif</textarea>
						                            </div>
						                            <label class="control-label col-sm-2" for="zipCode">Zip-code:</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="zipCode" placeholder="Zip-code  here..." value="@if($client->billing){{$client->billing->zipCode}}@endif">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="country">Country:</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="country">
															<option value="">Select Country</option>
															<option value="Bangladesh"
																@if ($client->billing)
																	@if ($client->billing->country === "Bangladesh") selected @endif
																@endif
															>Bangladesh
															</option>
														</select>
						                            </div>
						                            <label class="control-label col-sm-2" for="division">State:</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="division">
															<option value="">Select State</option>
															<option value="Dhaka" @if ($client->billing) @if ($client->billing->division === "Dhaka") selected @endif @endif>Dhaka</option>
														</select>
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="town">Town / City:</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="town">
															<option value="">Select Town / City</option>
															<option value="Dhaka" @if ($client->billing) @if ($client->billing->town === "Dhaka") selected @endif @endif>Dhaka</option>
														</select>
						                            </div>
						                            <label class="control-label col-sm-2" for="city"></label>
						                            <div class="col-sm-4">

						                            </div>
						                        </div>
												<button class="button-one submit-button mt-15" data-text="Update Info" type="submit">Update Info</button>
											</form>
										</div>								
									</div>
									<!-- billing-address end -->
									<!-- shipping-address start -->
									<div class="tab-pane" id="shipping-address">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Shipping Address</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="billing-details shop-cart-table">
											<form action="{{url('shippings')}}" id="shipping-details">
												<div class="form-group">
						                            <label class="control-label col-sm-2" for="office_email">Email :</label>
						                            <div class="col-sm-4">
						                                <input type="email" name="email" placeholder="email here..." value="@if($client->shipping){{$client->shipping->email}}@endif">
						                            </div>
						                            <label class="control-label col-sm-2" for="phone">Phone :</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="phone" placeholder="Phone here..." value="@if($client->shipping){{$client->shipping->phone}}@endif">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="address">Address :</label>
						                            <div class="col-sm-4">
						                                <textarea placeholder="Your address here..." class="custom-textarea" name="address" style="height: 50px;">@if($client->shipping){{$client->shipping->address}}@endif</textarea>
						                            </div>
						                            <label class="control-label col-sm-2" for="zipCode">Zip-code:</label>
						                            <div class="col-sm-4">
						                                <input type="text" name="zipCode" placeholder="Zip-code  here..." value="@if($client->shipping){{$client->shipping->zipCode}}@endif">
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="country">Country:</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="country">
															<option value="">Select Country</option>
															<option value="Bangladesh" @if($client->shipping) @if ($client->shipping->country === "Bangladesh") selected @endif @endif>Bangladesh</option>
														</select>
						                            </div>
						                            <label class="control-label col-sm-2" for="division">State:</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="division">
															<option value="">Select State</option>
															<option value="Dhaka" @if($client->shipping) @if ($client->shipping->division === "Dhaka") selected @endif @endif>Dhaka</option>
														</select>
						                            </div>
						                        </div>
						                        <div class="form-group">
						                            <label class="control-label col-sm-2" for="town">Town / City:</label>
						                            <div class="col-sm-4">
						                                <select class="custom-select mb-15" name="town">
															<option value="">Select Town / City</option>
															<option value="Dhaka" @if($client->shipping) @if ($client->shipping->city === "Dhaka") selected @endif @endif>Dhaka</option>
														</select>
						                            </div>
						                            <label class="control-label col-sm-2" for="city"></label>
						                            <div class="col-sm-4">

						                            </div>
						                        </div>
												<button class="button-one submit-button mt-15" data-text="Update Info" type="submit">Update Info</button>
											</form>
										</div>			
									</div>
									<!-- shipping-address end -->
									<!-- payment-method start -->
									<div class="tab-pane" id="payment-method">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Payment Method</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="payment-method  shop-cart-table">
											<form action="{{url('payment_store')}}" id="payment-details">
												<div id="payment" class="woocommerce-checkout-payment">
													<ul class="wc_payment_methods payment_methods methods">
														<li class="wc_payment_method payment_method_softtech_bkash">
															<input id="payment_method_softtech_bkash" type="radio" class="input-radio" name="paymentMethod" value="0" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 0) checked="checked" @endif @endif data-order_button_text="">

															<label for="payment_method_softtech_bkash">
																bKash <img src="http://gamersbd.com/wp-content/plugins/bkash/images/bkash.png" alt="bKash">	</label>
															<div class="payment_box payment_method_softtech_bkash" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 0) style="display: block" @endif @endif>
																<p>
																	<label for="bkash_number">bKash Number</label>
																	<input type="number" min="11" name="bkash_number" id="bkash_number" placeholder="017XXXXXXXX" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 0) value="{{$client->payment->accNo}}" @endif @endif>
																</p>
															</div>
														</li>
														<li class="wc_payment_method payment_method_sobkichu_rocket">
															<input id="payment_method_sobkichu_rocket" type="radio" class="input-radio" name="paymentMethod" value="1" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 1) checked="checked" @endif @endif data-order_button_text="">

															<label for="payment_method_sobkichu_rocket">
																Rocket <img src="http://gamersbd.com/wp-content/plugins/woo-rocket/images/rocket.png" alt="Rocket">	</label>
															<div class="payment_box payment_method_sobkichu_rocket" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 1) style="display: block" @endif @endif>
																<p>
																	<label for="rocket_number">Rocket Number</label>
																	<input type="number" min="12" name="rocket_number" id="Rocket_number" placeholder="017XXXXXXXX" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 1) value="{{$client->payment->accNo}}" @endif @endif>
																</p>
															</div>
														</li>
														<li class="wc_payment_method payment_method_bacs">
															<input id="payment_method_bacs" type="radio" class="input-radio" name="paymentMethod" value="2" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) checked="checked" @endif @endif data-order_button_text="">

															<label for="payment_method_bacs">
																Direct bank transfer 	</label>
															<div class="payment_box payment_method_bacs" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) style="display: block" @endif @endif>
																<p>
																	<label for="rocket_number">Account Name</label>
																	<input type="text" name="bacs_acc_name" id="bacs_acc_name" placeholder="Account Name" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) value="{{$client->payment->acc_name}}" @endif @endif>
																</p>
																<p>
																	<label for="rocket_number">Account Number</label>
																	<input type="text" name="bacs_acc_no" id="bacs_acc_no" placeholder="Account Number" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) value="{{$client->payment->accNo}}" @endif @endif>
																</p>
																<p>
																	<label for="rocket_number">Bank Name</label>
																	<input type="text" name="bacs_bank_name" id="bacs_bank_name" placeholder="Bank Name" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) value="{{$client->payment->bank_name}}" @endif @endif>
																</p>
															</div>
														</li>
														<li class="wc_payment_method payment_method_cps">
															<input id="payment_method_cps" type="radio" class="input-radio" name="paymentMethod" value="3" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 3) checked="checked" @endif @endif data-order_button_text="">

															<label for="payment_method_cps">
																Cheque Payment 	</label>
															<div class="payment_box payment_method_cps" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 3) style="display: block" @endif @endif>
																<p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
															</div>
														</li>
														<li class="wc_payment_method payment_method_cod">
															<input id="payment_method_cod" type="radio" class="input-radio" name="paymentMethod" value="4" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 4) checked="checked" @endif @endif data-order_button_text="" @if($client->membership_type->membership_type  == 0) disabled @endif>

															<label for="payment_method_cod">
																Cash on delivery 	</label>
															<div class="payment_box payment_method_cod" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 4) style="display: block" @endif @endif>
																<p>Pay cash on product delivery.</p>
															</div>
														</li>
													</ul>
													<div class="form-row place-order">
														<button class="button-one submit-button mt-15" data-text="Update" type="submit">Update</button>
													</div>
												</div>
											</form>
										</div>
									</div>
									<!-- payment-method end -->
									<!-- membership-type start -->
									<div class="tab-pane" id="membership-type" data-url="{{url('clients/'.\Illuminate\Support\Facades\Session::get('ID').'/#membership-type')}}">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Membership Type</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="our-order payment-details shop-cart-table">
											<table>
												<tbody>
													<tr>
														<td>Member type</td>
														<td class="text-right">
															@if($client->membership_type->membership_type  == 0)
																Prime
															@elseif($client->membership_type->membership_type   == 1)
																Silver
															@elseif($client->membership_type->membership_type  == 2)
																Gold
															@elseif($client->membership_type->membership_type   == 3)
																Diamond
															@else
																Platinum
															@endif
														</td>
													</tr>
													<tr>
														<td>Discount type</td>
														<td class="text-right">
															@if($client->membership_type->discount_unit == 0)
																Percentage discount
															@elseif($client->membership_type->discount_unit  == 1)
																Fixed cart discount
															@else
																Fixed product discount
															@endif
														</td>
													</tr>
													<tr>
														<td>Discount value</td>
														<td class="text-right">{{$client->membership_type->discount_value}}</td>
													</tr>
													<tr>
														<td>Valid until</td>
														<td class="text-right">
															{{$client->membership_type->valid_until}}
														</td>
													</tr>
													<tr>
														<td>Free shipping</td>
														<td class="text-right">
															@if($client->membership_type->is_free_shipping_active == 0)
																Yes
															@else
																No
															@endif
														</td>
													</tr>
												</tbody>
											</table>
										</div>						
									</div>
									<!-- membership-type end -->
									<!-- point-log start -->
									<div class="tab-pane" id="point-log">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Point Log</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="our-order payment-details shop-cart-table">
											<table>
												<thead>
													<tr>
														<td>Point type</td>
														<td class="text-right">point</td>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Promotional point</td>
														<td class="text-right">{{$client->promotional_reward_points}}</td>
													</tr>
													<tr>
														<td>Non-promotional point</td>
														<td class="text-right">{{$client->non_promotional_reward_points}}</td>
													</tr>
													<tr>

													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<!-- point-log end -->
									<!-- offer start -->
									<div class="tab-pane" id="offer">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Offer & Discount</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
										<div class="col-md-6 col-sm-12 col-xs-12">
											<!-- Widget-Categories start -->
											<aside class="widget widget-categories  mb-30">
												<div class="widget-title">
													<h4>Offer</h4>
												</div>
												<div class="widget-info product-cat boxscrol2">
													<div class="table-content table-responsive">
														<table>
															<tbody id="product">
															@foreach($offers as $offer)
																@foreach($offer->products as $product)
																<tr>
																	<td align="left" style="padding: 0">
																		<a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." data-saleprice="{{$product->salePrice}}" data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" class="quick-view">{{$product->productName}}</a>
																	<td>
																		<input type="number" name="qty{{$product->id}}" min="1" value="1" style="height: 20px;width: 50px;padding: 0">
																	</td>
																	<td style="padding: 0">
																		@if($product->salePrice)
																			<a href="#" data-toggle="tooltip" class="addToCart" data-placement="top" title="Add To Cart" data-id="{{$product->id}}" data-productName="{{$product->productName}}" data-price="{{$product->salePrice}}" data-url="{{url('/addCart')}}"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
																		@else
																			<p style="color: red">N/A</p>
																		@endif
																	</td>
																</tr>
																@endforeach
															@endforeach
															</tbody>
														</table>
													</div>
												</div>
											</aside>
											<!-- Widget-categories end -->
										</div>
										<div class="col-md-6 col-sm-12 col-xs-12">
											<!-- Widget-Categories start -->
											<aside class="widget widget-categories  mb-30">
												<div class="widget-title">
													<h4>Discount</h4>
												</div>
												<div class="widget-info product-cat boxscrol2">
													<div class="table-content table-responsive">
														<table>
															<tbody id="product">
															@foreach($deals as $deal)
																@foreach($deal->products as $product)
																	<tr>
																		<td align="left" style="padding: 0">
																			<a href="#" data-toggle="modal"  data-target="#productModal" title="Quick View" data-id="{{$product->id}}" data-name="{{$product->productName}}" data-image="{{asset('storage/images/product/'.$product->image->image1)}}" data-desc="{{substr(strip_tags($product->description), 0, 127)}}..." data-saleprice="{{$product->salePrice}}" data-regularprice="{{$product->regularPrice}}" data-url="{{url('products/'.$product->id)}}" class="quick-view">{{$product->productName}}</a>
																		<td>
																			<input type="number" name="qty{{$product->id}}" min="1" value="1" style="height: 20px;width: 50px;padding: 0">
																		</td>
																		<td style="padding: 0">
																			@if($product->salePrice)
																			<a href="#" data-toggle="tooltip" class="addToCart" data-placement="top" title="Add To Cart" data-id="{{$product->id}}" data-productName="{{$product->productName}}" data-price="{{$product->salePrice}}" data-url="{{url('/addCart')}}"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
																			@else
																			<p style="color: red">N/A</p>
																			@endif
																		</td>
																	</tr>
																@endforeach
															@endforeach
															</tbody>
														</table>
													</div>
												</div>
											</aside>
											<!-- Widget-categories end -->
										</div>
									</div>
									<!-- offer end -->
									<!-- wishlist start -->
									<div class="tab-pane" id="wishlist">
										<!-- Nav tabs start -->
										<div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
				                            <div class="showing text-center hidden-xs">
				                                <h2>Wishlist</h2>
				                            </div>
				                        </div>
				                        <!-- Nav tabs end -->
				                        <!-- wishlist start -->
										<div class="tab-pane active" id="wishlist">
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
															@foreach($client->wishlists as $wishlist)
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
									<!-- wishlist end -->
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- SHOPPING-CART-AREA END -->

			<style>
				.payment_box{
					display: none;
				}
				.mt-15 {
					margin-top: 0;
				}
				.button-one {
					width: 200px;
				}
				.billing-details {
					display: block;
				}
			</style>
@endsection

@section('script')
	<script>
		// Payment function
        $(function() {
			$('input[name=paymentMethod]').change(function () {
                $('.payment_box').hide();
			    $('.'+$(this).attr('id')).show();
			});
        });

        // Salesman update function
        function sales_update(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Submit the form using AJAX.
            $.ajax({
                type: 'POST',
                url: base_url + '/sales_update',
                data: {'salesman_id': $( "select[name=salesman_id] option:checked" ).val()},
                success: function(data){
					// Show success message
                    $('#message').modal('show');
                    $('.wmessage').css('color', 'green');
                    $('.modal-title').css('color', 'green');
                    $('.modal-title').text('Congrats!');
                    $('.wmessage').text('Salesman updated successfully.');
                }
            });
        }

		$(function(){
			// this will get the full URL at the address bar
			var url = window.location.href;

			// passes on every "a" tag
			$(".widget a").each(function() {
				// checks if its the same on the address bar
				if(url == (this.href)) {
					$(".widget").find('.active').removeClass('active');
					$(this).closest("li").addClass("active");
				}
			});

			// passes on every "tab-pane" class
			$(".tab-pane").each(function() {
				// checks if its the same on the address bar
				if(url == ($(this).data('url'))) {
					$(".tab-content").find('.active').removeClass('active');
					$(this).addClass("active");
				}
			});
		});
	</script>
@endsection
