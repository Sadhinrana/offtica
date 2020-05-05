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
										<li>check out</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- HEADING-BANNER END -->
			<!-- CHECKOUT-AREA START -->
			<div class="shopping-cart-area  pt-80 pb-80">
				<div class="container">	
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="shopping-cart">

								<!-- Tab panes -->
								<div>
									<!-- check-out start -->
									<div>
										<form action="{{url('orders')}}" method="post">
											{{csrf_field()}}
											<div class="shop-cart-table check-out-wrap">
												<div class="row">
													<!-- billing-details start -->
													<div class="col-md-6 col-sm-6 col-xs-12">
                                                        <section class="woocommerce-customer-details">

															<h4 class="title-1 title-border text-uppercase mb-30">Billing address</h4>
                                                            <address>
                                                            @if($client->billing)
																<p class="woocommerce-customer-details--phone">
                                                                {{Session::get('Name')}}<br>{{$client->billing->address}}, {{$client->billing->town}}, {{$client->billing->division}}, {{$client->billing->country}}
																</p>
                                                                <p class="woocommerce-customer-details--phone">{{$client->billing->phone}}</p>

                                                                <p class="woocommerce-customer-details--email">{{$client->billing->email}}</p>
                                                            @else
                                                                <p style="color: red">Your profile's billing address is not specified. Please check the box below and fill up the form with your billing details. You can update your profile's billing address by checking the box "Update profile's billing".</p>
                                                            @endif
                                                            </address>
                                                        </section>
														<h4 class="title-1 title-border text-uppercase mb-30"><input type="checkbox" name="billing">different billing details?</h4>
														<div class="billing-details pr-20" id="billing">
                                                            <input type="checkbox" name="billing_different"><b>Update your profile's billing address with this address?</b>
															<input type="text" name="billing_email" placeholder="Billing Email address here...">
															<input type="text" name="billing_phone" placeholder="Billing Phone here...">
															<input type="text" name="billing_zipCode" placeholder="Billing Zip-code  here...">
															<select class="custom-select mb-15" name="billing_country">
																<option value="">Billing Country</option>
																<option value="Bangladesh">Bangladesh</option>
															</select>
															<select class="custom-select mb-15" name="billing_division">
																<option value="">Billing State</option>
																<option value="Dhaka">Dhaka</option>
															</select>
															<select class="custom-select mb-15" name="billing_city">
																<option value="">Billing Town / City</option>
																<option value="Dhaka">Dhaka</option>
															</select>
															<textarea class="custom-textarea" placeholder="Billing address here..." name="billing_address"></textarea>
														</div>
													</div>
													<!-- billing-details end -->
													<!-- shipping-details start -->
													<div class="col-md-6 col-sm-6 col-xs-12 mt-xs-30">
                                                        <section class="woocommerce-customer-details">

															<h4 class="title-1 title-border text-uppercase mb-30">Shipping address</h4>
                                                            <address>
                                                                @if($client->shipping)
																	<p class="woocommerce-customer-details--phone">
																		{{Session::get('Name')}}<br>{{$client->shipping->address}}, {{$client->shipping->town}}, {{$client->shipping->division}}, {{$client->shipping->country}}
																	</p>
                                                                    <p class="woocommerce-customer-details--phone">{{$client->shipping->phone}}</p>

                                                                    <p class="woocommerce-customer-details--email">{{$client->shipping->email}}</p>
                                                                @else
                                                                    <p style="color: red">Your profile's shipping address is not specified. Please check the box below and fill up the form with your shipping details. You can update your profile's shipping address by checking the box "Update profile's shipping".</p>
                                                                @endif
                                                            </address>
                                                        </section>
														<h4 class="title-1 title-border text-uppercase mb-30"><input type="checkbox" name="shipping">ship to different address?</h4>
														<div class="billing-details pl-20" id="shipping">
                                                            <input type="checkbox" name="shipping_different"><b>Update your profile's shipping address with this address?</b>
															<input type="text" name="shipping_email" placeholder="Shipping Email address here...">
															<input type="text" name="shipping_phone" placeholder="Shipping Phone here...">
															<input type="text" name="shipping_zipCode" placeholder="Shipping Zip-code  here...">
															<select class="custom-select mb-15" name="shipping_country">
																<option value="">Shipping Country</option>
																<option value="Bangladesh">Bangladesh</option>
															</select>
															<select class="custom-select mb-15" name="shipping_division">
																<option>Shipping State</option>
																<option>Dhaka</option>
															</select>
															<select class="custom-select mb-15" name="shipping_city">
																<option>Shipping Town / City</option>
																<option>Dhaka</option>
															</select>
															<textarea class="custom-textarea" placeholder="Shipping address here..." name="shipping_address"></textarea>
														</div>
													</div>
													<!-- shipping-details end -->
													<!-- order-details start -->
													<div class="col-md-6 col-sm-6 col-xs-12">
														<div class="our-order payment-details mt-60 pr-20" style="margin-top: 0">
															<h4 class="title-1 title-border text-uppercase mb-30">our order</h4>
															<table>
																<thead>
																<tr>
																	<th><strong>Product</strong></th>
																	<th class="text-right"><strong>Total</strong></th>
																</tr>
																</thead>
																<tbody>
																@php
																	$price = 0;
																	$carts = \Illuminate\Support\Facades\Session::get('cart');
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

																		if(isset($salePrice) && $salePrice != 0)
																			$proPrice = $salePrice;
																		else
																			$proPrice = $product->salePrice;
																	@endphp
																<tr>
																	<td>{{$product->productName}}  x {{$cart['qty']}}</td>
																	<td class="text-right">৳ {{number_format($cart['qty'] * $proPrice, 2)}}</td>
																</tr>
																	@php
																		$unitPrice = $cart['qty'] * $proPrice;
																		$price += $unitPrice;
																	@endphp
																@endforeach
																<tr>
																	<td>Cart Subtotal</td>
																	<td class="text-right">৳ {{number_format($price, 2)}}</td>
																</tr>
																@if(Session::has('coupon_id'))
																	@php
																		$discount = \App\Discount::find(Session::get('coupon_id'));
																	if($discount->discount_unit == 0){
																	$discount_val = ($price*$discount->discount_value)/100;
																		$price = $price - $discount_val;
																	}
																	elseif($discount->discount_unit  == 1){
																		$discount_val = $price - $discount->discount_value;
																		$price = $price - $discount_val;
																	}
																	else{
																		$discount_val = $price - $discount->discount_value;
																		$price = $price - $discount_val;
																	}
																	@endphp
																<tr>
																	<td class="text-left">Discount</td>
																	<td class="text-right">৳ {{number_format($discount_val, 2)}}</td>
																</tr>
																@endif
																<tr>
																	<td>Shipping and Handing</td>
																	<td class="text-right">৳ 15.00</td>
																</tr>
																<tr>
																	<td>Vat (15%)</td>
																	<td class="text-right">৳ {{number_format($price*0.15, 2)}}</td>
																</tr>
																<tr>
																	<td>Order Total</td>
																	<td class="text-right">৳ {{number_format($price+($price*0.15)+15, 2)}}</td>
																</tr>
																</tbody>
															</table>
														</div>
													</div>
													<!-- order-details end -->
													<!-- payment-method start -->
													<div class="col-md-6 col-sm-6 col-xs-12">
														<div class="payment-method mt-60  pl-20">
															<h4 class="title-1 title-border text-uppercase mb-30">payment method</h4>
															<div class="payment-method  shop-cart-table">
																<div id="payment" class="woocommerce-checkout-payment">
																	<ul class="wc_payment_methods payment_methods methods">
																		<li class="wc_payment_method payment_method_softtech_bkash">
																			<input id="payment_method_softtech_bkash" type="radio" class="input-radio" name="paymentMethod" value="0" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 0) checked="checked" @endif @endif data-order_button_text="">

																			<label for="payment_method_softtech_bkash">
																				bKash <img src="http://gamersbd.com/wp-content/plugins/bkash/images/bkash.png" alt="bKash">	</label>
																			<div class="payment_box payment_method_softtech_bkash" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 0) style="display: block" @endif @endif>
																				<p>Please complete your bKash payment at first, then fill up the form below. Also note that 2% bKash "SEND MONEY" cost will be added with net price. Total amount you need to send us at ৳&nbsp;</p>
																				<p>
																				<p>bKash Agent Number : 01971424221</p>
																					<label for="bkash_number">bKash Number</label>
																					<input type="number" min="11" name="bkash_number" id="bkash_number" placeholder="017XXXXXXXX" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 0) value="{{$client->payment->accNo}}" @endif @endif>
																				</p>
																				<p>
																					<label for="bkash_transaction_id">bKash Transaction ID</label>
																					<input type="text" name="bkash_transaction_id" id="bkash_transaction_id" placeholder="8N7A6D5EE7M">
																				</p>
																			</div>
																		</li>
																		<li class="wc_payment_method payment_method_sobkichu_rocket">
																			<input id="payment_method_sobkichu_rocket" type="radio" class="input-radio" name="paymentMethod" value="1" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 1) checked="checked" @endif @endif data-order_button_text="">

																			<label for="payment_method_sobkichu_rocket">
																				Rocket <img src="http://gamersbd.com/wp-content/plugins/woo-rocket/images/rocket.png" alt="Rocket">	</label>
																			<div class="payment_box payment_method_sobkichu_rocket" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 1) style="display: block" @endif @endif>
																				<p>Please at first complete your rocket payment, then try to fill up the form below. Also note that 2% rocket "SEND MONEY" cost will be added with net price. Total amount you need to send us at ৳&nbsp;</p>
																				<p>Rocket Personal Number : 01971424221</p>
																				<p>
																					<label for="rocket_number">Rocket Number</label>
																					<input type="number" min="11" name="rocket_number" id="Rocket_number" placeholder="017XXXXXXXX" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 1) value="{{$client->payment->accNo}}" @endif @endif>
																				</p>
																				<p>
																					<label for="rocket_transaction_id">Transaction ID</label>
																					<input type="text" name="rocket_transaction_id" id="rocket_transaction_id" placeholder="A7D8H65FGH90">
																				</p>
																			</div>
																		</li>
																		<li class="wc_payment_method payment_method_bacs">
																			<input id="payment_method_bacs" type="radio" class="input-radio" name="paymentMethod" value="2" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) checked="checked" @endif @endif data-order_button_text="">

																			<label for="payment_method_bacs">
																				Direct bank transfer 	</label>
																			<div class="payment_box payment_method_bacs" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) style="display: block" @endif @endif>
																				<p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.</p>
																				<p>Or you also can send the scan copy of the deposited check along with order ID at sales@offtica.com</p>
																				<p>
																					<label for="bacs_acc_name">Account Name</label>
																					<input type="text" name="bacs_acc_name" id="bacs_acc_name" placeholder="Account Name" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) value="{{$client->payment->acc_name}}" @endif @endif>
																				</p>
																				<p>
																					<label for="bacs_acc_no">Account Number</label>
																					<input type="text" name="bacs_acc_no" id="bacs_acc_no" placeholder="Account Number" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) value="{{$client->payment->accNo}}" @endif @endif>
																				</p>
																				<p>
																					<label for="bacs_bank_name">Bank Name</label>
																					<input type="text" name="bacs_bank_name" id="bacs_bank_name" placeholder="Bank Name" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 2) value="{{$client->payment->bank_name}}" @endif @endif>
																				</p>
																				<p>
																					<label for="bacs_bank_deposit">Deposit (Scanned copy)</label>
																					<input type="file" name="bacs_bank_deposit" id="bacs_bank_deposit">
																				</p>
																			</div>
																		</li>
																		<li class="wc_payment_method payment_method_cps">
																			<input id="payment_method_cps" type="radio" class="input-radio" name="paymentMethod" value="3" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 3) checked="checked" @endif @endif data-order_button_text="">

																			<label for="payment_method_cps">
																				Cheque Payment 	</label>
																			<div class="payment_box payment_method_cps" @if (isset($client->payment)) @if ($client->payment->paymentMethod == 3) style="display: block" @endif @endif>
																				<p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
																				<label for="cps_bank_deposit">Cheque (Scanned copy)</label>
																				<input type="file" name="cps_bank_deposit" id="cps_bank_deposit">
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
																		<label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
																			<input type="checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" name="payment_update" id="payment_update">
																			<span class="woocommerce-terms-and-conditions-checkbox-text">Update your profile's payment method with this method?</span>
																		</label>
																		<label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
																			<input type="checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" name="terms" id="terms" required>
																			<span class="woocommerce-terms-and-conditions-checkbox-text">I have read and agree to the website <a href="{{url('term-condition')}}" class="woocommerce-terms-and-conditions-link woocommerce-terms-and-conditions-link--closed" target="_blank">terms and conditions</a></span>&nbsp;<span class="required">*</span>
																		</label>
																		<button class="button-one submit-button mt-15" data-text="Checkout" type="submit">Checkout</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<!-- payment-method end -->
												</div>
											</div>
										</form>											
									</div>
									<!-- check-out end -->
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- CHECKOUT-AREA END -->
@endsection

@section('script')
	<script>
        $("input[name=shipping]").click(function(){
            if($("input[name=shipping]").is(':checked'))
                $("#shipping").slideDown("slow");  // checked
            else
                $("#shipping").slideUp("slow");  // unchecked
        });
        $("input[name=billing]").click(function(){
            if($("input[name=billing]").is(':checked'))
                $("#billing").slideDown("slow");  // checked
            else
                $("#billing").slideUp("slow");  // unchecked
        });

        // Payment checkbox show
        $(function() {
            $('input[name=paymentMethod]').change(function () {
                $('.payment_box').hide();
                $('.'+$(this).attr('id')).show();
            });
        });
	</script>
@endsection