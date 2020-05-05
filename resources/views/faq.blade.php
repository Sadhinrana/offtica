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
                                <li>FAQ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- HEADING-BANNER END -->
    <!-- 404-AREA START -->
    <div class="area-404  pt-80 pb-80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop-cart-table check-out-wrap">
                        <!-- payment-method -->
                        <div class="payment-method  pl-20">
                            <div class="payment-accordion">
                                <!-- Accordion start  -->
                                <h3 class="payment-accordion-toggle active">Direct Bank Transfer</h3>
                                <div class="payment-content default">
                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won't be shipped until the funds have cleared in our account.</p>
                                </div>
                                <!-- Accordion end -->
                                <!-- Accordion start -->
                                <h3 class="payment-accordion-toggle">Cheque Payment</h3>
                                <div class="payment-content">
                                    <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                </div>
                                <!-- Accordion end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 404-AREA END -->
@endsection

