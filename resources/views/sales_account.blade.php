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
                        <div class="widget-info product-cat boxscrol2">
                            <ul>
                                <li><a href="#my-profile" class="button-one submit-button mt-15" data-text="My Profile" data-toggle="tab">My Profile</a></li>
                                <li><a href="#my-clients" class="button-one submit-button mt-15" data-text="My Clients" data-toggle="tab">My Clients</a></li>
                                <li><a href="#my-deals" class="button-one submit-button mt-15" data-text="My Deals" data-toggle="tab">My Deals</a></li>
                                <li><a href="#my-incentive" class="button-one submit-button mt-15" data-text="My Incentive" data-toggle="tab">My Incentive</a></li>
                                <li><a href="#my-target" class="button-one submit-button mt-15" data-text="My Target" data-toggle="tab">My Target</a></li>
                                <li><a href="#" id="logout" class="button-one submit-button mt-15" data-text="logout">logout</a></li>
                            </ul>
                        </div>
                    </aside>
                    <!-- Tab panes -->
                </div>
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <div class="shopping-cart">
                        <div class="tab-content">
                            <!-- company-info start -->
                            <div class="tab-pane active" id="my-profile">
                                <!-- Nav tabs start -->
                                <div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
                                    <div class="showing text-center hidden-xs">
                                        <h2>My Profile</h2>
                                    </div>
                                </div>
                                <!-- Nav tabs end -->
                                <div class="shop-cart-table">
                                    <form action="{{url('sales_update')}}" id="update-salesman" onsubmit="sales_update(event)">
                                        <h3>Privacy</h3>
                                        <hr>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="email">Email :</label>
                                            <div class="col-sm-10">
                                                <input type="email" name="email" placeholder="Email address here..." value="{{$salesman->email}}" disabled>
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
                                        <button class="button-one submit-button mt-15" data-text="Update password" id="update_sales_pass" type="button">Update password</button>
                                        <h3>Info</h3>
                                        <hr>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="salesmanName">Name :</label>
                                            <div class="col-sm-4">
                                                <input type="text" name="salesmanName" placeholder="Your name here..." value="{{$salesman->salesmanName}}" required>
                                            </div>
                                            <label class="control-label col-sm-2" for="phone">Phone :</label>
                                            <div class="col-sm-4">
                                                <input type="text" name="phone" placeholder="Phone here..." value="{{$salesman->phone}}" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="designation">Designation :</label>
                                            <div class="col-sm-4">
                                                <input type="text" name="designation" placeholder="designation here..." value="{{$salesman->designation}}" required>
                                            </div>
                                            <label class="control-label col-sm-2" for="address">Address :</label>
                                            <div class="col-sm-4">
                                                <textarea placeholder="Your address here..." class="custom-textarea" name="address" style="height: 50px;">{{$salesman->address}}</textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="zipCode">Zip-code:</label>
                                            <div class="col-sm-4">
                                                <input type="text" name="zipCode" placeholder="Zip-code  here..." value="{{$salesman->zipCode}}">
                                            </div>
                                            <label class="control-label col-sm-2" for="country">Country:</label>
                                            <div class="col-sm-4">
                                                <select class="custom-select mb-15" name="country">
                                                    <option value="">Select Country</option>
                                                    <option value="Bangladesh" @if ($salesman->country === 'Bangladesh') selected @endif>Bangladesh</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="division">State:</label>
                                            <div class="col-sm-4">
                                                <select class="custom-select mb-15" name="division">
                                                    <option value="">Select State</option>
                                                    <option value="Dhaka" @if ($salesman->division === 'Dhaka') selected @endif>Dhaka</option>
                                                </select>
                                            </div>
                                            <label class="control-label col-sm-2" for="city">Town / City:</label>
                                            <div class="col-sm-4">
                                                <select class="custom-select mb-15" name="city">
                                                    <option value="">Select Town / City</option>
                                                    <option value="Dhaka" @if ($salesman->city === 'Dhaka') selected @endif>Dhaka</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="_method"></label>
                                            <div class="col-sm-6">
                                                <input type="hidden" name="_method" value="PUT">
                                                <input type="hidden" name="id" value="{{$salesman->id}}">
                                            </div>
                                        </div>
                                        <button class="button-one submit-button mt-15" data-text="Update Info" type="submit">Update Info</button>
                                    </form>
                                </div>
                            </div>
                            <!-- company-info end -->
                            <!-- my-clients start -->
                            <div class="tab-pane" id="my-clients">
                                <!-- Nav tabs start -->
                                <div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
                                    <div class="showing text-center hidden-xs">
                                        <h2>My Clients</h2>
                                    </div>
                                </div>
                                <!-- Nav tabs end -->
                                <div class="shop-cart-table">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <thead>
                                            <tr>
                                                <th class="product-thumbnail">Company Name</th>
                                                <th class="product-price">address</th>
                                                <th class="product-price">e-mail</th>
                                                <th class="product-subtotal">phone</th>
                                                <th class="product-quantity">member type</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($salesman->client as $client)
                                                <tr>
                                                    <td class="product-id">
                                                        {{$client->company}}
                                                    </td>
                                                    <td class="product-price">{{$client->address}}</td>
                                                    <td class="product-quantity">{{$client->email}}</td>
                                                    <td class="product-subtotal">{{$client->phone}}</td>
                                                    <td class="product-remove">
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
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- my-clients end -->
                            <!-- my-deals start -->
                            <div class="tab-pane" id="my-deals">
                                <!-- Nav tabs start -->
                                <div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
                                    <div class="showing text-center hidden-xs">
                                        <h2>My Deals</h2>
                                    </div>
                                </div>
                                <!-- Nav tabs end -->
                                <div class="shop-cart-table">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <thead>
                                            <tr>
                                                <th class="product-thumbnail">Company Name</th>
                                                <th class="product-price">Order</th>
                                                <th class="product-subtotal">TOTAL</th>
                                                <th class="product-quantity">STATUS</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($salesman->client as $client)
                                                @foreach($client->order as $order)
                                                    @php $total_price = 0; @endphp
                                                    @foreach($order->orderDetails as $orderDetail)
                                                        @php
                                                            $total_price = 0;
                                                            $unitPrice = $orderDetail->quantity * $orderDetail->product->salePrice;
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
                                                            {{$client->company}}
                                                        </td>
                                                        <td class="product-remove">
                                                            <a href="{{url('clientOrder/'.$order->id)}}"><i class="zmdi zmdi-eye"></i></a>
                                                        </td>
                                                        <td class="product-subtotal">৳{{$total_price+($total_price*0.15)+15}}</td>
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

                                                    </tr>
                                                @endforeach
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- my-deals end -->
                            <!-- my-incentive start -->
                            <div class="tab-pane" id="my-incentive">
                                <!-- Nav tabs start -->
                                <div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
                                    <div class="showing text-center hidden-xs">
                                        <h2>My Incentive</h2>
                                    </div>
                                </div>
                                <!-- Nav tabs end -->
                                <div class="shop-cart-table">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <thead>
                                            <tr>
                                                <th class="product-thumbnail">Company Name</th>
                                                <th class="product-price">incentive purpose</th>
                                                <th class="product-subtotal">incentive amount</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($salesman->client as $client)
                                                @foreach($client->order as $order)
                                                    @php $total_price = 0; @endphp
                                                    <tr>
                                                        <td class="product-id">{{$client->company}}</td>
                                                        <td class="product-price">Client Registration</td>
                                                        <td class="product-subtotal">${{100}}</td>
                                                    </tr>
                                                    @foreach($order->orderDetails as $orderDetail)
                                                        @php
                                                            $unitPrice = $orderDetail->quantity * $orderDetail->product->salePrice;
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
                                                        <td class="product-id">{{$client->company}}</td>
                                                        <td class="product-price">Order</td>
                                                        <td class="product-subtotal">৳{{(($total_price+($total_price*0.15)+15)*2)/100}}</td>
                                                    </tr>
                                                @endforeach
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- my-clients end -->
                            <!-- my-target start -->
                            <div class="tab-pane" id="my-target">
                                <!-- Nav tabs start -->
                                <div class="product-option mb-30 clearfix" style="margin-bottom: 2px;">
                                    <div class="showing text-center hidden-xs">
                                        <h2>My Target</h2>
                                    </div>
                                </div>
                                <!-- Nav tabs end -->
                                <div class="shop-cart-table">
                                    <div class="table-content table-responsive">
                                        <table>
                                            <thead>
                                            <tr>
                                                <th class="product-thumbnail">Sales target</th>
                                                <th class="product-thumbnail">Sales achieve</th>
                                                <th class="product-price">client target</th>
                                                <th class="product-price">client achieve</th>
                                                <th class="product-price">Month</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            @foreach($salesman->target as $target)
                                                <tr>
                                                    @php
                                                        $grand_total = $clients  = 0;
                                                    @endphp
                                                    @foreach($salesman->client as $client)
                                                        @if($client->created_at->month == $target->month && $order->created_at->year == $target->year)
                                                            @php
                                                                $clients++;
                                                            @endphp
                                                        @endif
                                                        @php $total = 0; @endphp
                                                        @foreach($client->order as $order)
                                                            @if($order->created_at->month == $target->month && $order->created_at->year == $target->year)
                                                                @php $total_price = 0; @endphp
                                                                @foreach($order->orderDetails as $orderDetail)
                                                                    @php
                                                                        $unitPrice = $orderDetail->quantity * $orderDetail->product->salePrice;
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
                                                            @endif
                                                            @php
                                                                $total += $total_price+($total_price*0.15)+15;
                                                            @endphp
                                                        @endforeach
                                                        @php
                                                            $grand_total += $total;
                                                        @endphp
                                                    @endforeach
                                                    <td class="product-id">৳{{$target->sales_target}}</td>
                                                    <td class="product-id">৳{{$grand_total}}</td>
                                                    <td class="product-price">{{$target->client_target}}</td>
                                                    <td class="product-price">{{$clients}}</td>
                                                    <td class="product-quantity">
                                                        @if($target->month == 1)
                                                            January
                                                        @elseif($target->month == 2)
                                                            February
                                                        @elseif($target->month == 3)
                                                            March
                                                        @elseif($target->month == 4)
                                                            April
                                                        @elseif($target->month == 5)
                                                            May
                                                        @elseif($target->month == 6)
                                                            June
                                                        @elseif($target->month == 7)
                                                            July
                                                        @elseif($target->month == 8)
                                                            August
                                                        @elseif($target->month == 9)
                                                            September
                                                        @elseif($target->month == 10)
                                                            October
                                                        @elseif($target->month == 11)
                                                            November
                                                        @else
                                                            December
                                                        @endif
                                                        , {{$target->year}}
                                                    </td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- my-target end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- SHOPPING-CART-AREA END -->

    <style>
        .mt-15 {
            margin-top: 0;
        }
        .button-one {
            width: 200px;
        }
    </style>
@endsection

@section('script')
    <script>
        // Logout function
        $(document).on('click', '#logout', function(){
            $.ajax({
                type: 'POST',
                url: base_url + '/sales_logout',
                success: function(data){
                    $(location).attr("href", "/sales_login");
                }
            });
        });

        // Logout function
        function sales_update(e){
            // Stop the browser from submitting the form.
            e.preventDefault();
            // Get the form
            var  form = $('#update-salesman');

            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'POST',
                url: $(form).attr('action'),
                data: formData,
                success: function(data){
                    // Show success message
                    $('#message').modal('show');
                    $('.wmessage').css('color', 'green');
                    $('.modal-title').css('color', 'green');
                    $('.modal-title').text('Congrats!');
                    $('.wmessage').text('Account details updated successfully.');
                }
            });
        };

        // -- ajax Form update password --
        $(document).on('click', '#update_sales_pass', function() {
            $.ajax({
                type: 'post',
                url: base_url + '/update_sales_pass',
                data: {
                    'oldpassword': $('input[name=oldpassword]').val(),
                    'password': $('input[name=password]').val(),
                    'id': $('input[name=id]').val(),
                    '_method': $('input[name=_method]').val()
                },
                success: function(data){
                    if ((data.errors)) {
                        $('.wmessage').html('');
                        $('#message').modal('show');
                        $('.wmessage').css('color', 'red');
                        $('.modal-title').css('color', 'red');
                        $('.modal-title').text('Oops!');
                        if (typeof data.errors.oldpassword !== 'undefined') {
                            $('.wmessage').append("<li class='err'>" + data.errors.oldpassword + "</li>");
                        };
                        if (typeof data.errors.password !== 'undefined') {
                            $('.wmessage').append("<li class='err'>" + data.errors.password + "</li>");
                        };
                        if (typeof data.errors.error !== 'undefined') {
                            $('.wmessage').append("<li class='err'>" + data.errors.error + "</li>");
                        };
                    } else {
                        $('#message').modal('show');
                        $('.wmessage').css('color', 'green');
                        $('.modal-title').css('color', 'green');
                        $('.modal-title').text('Congrats!');
                        $('.wmessage').text('Password updated successfully.');
                    }
                }
            });
            $('input[name=oldpassword]').val('');
            $('input[name=password]').val('');
        });
    </script>
@endsection