<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Offtica | Invoice</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="{{asset('admin/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('admin/bower_components/font-awesome/css/font-awesome.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="{{asset('admin/bower_components/Ionicons/css/ionicons.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('admin/dist/css/AdminLTE.min.css')}}">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body onload="window.print();">
<div class="wrapper">
    <!-- Main content -->
    <section class="invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-globe"></i> Offtica, Inc.
                    <small class="pull-right">Date: {{$order->created_at}}</small>
                </h2>
            </div>
            <!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
            <div class="col-sm-4 invoice-col">
                From
                <address>
                    <strong>Offtica, Inc.</strong><br>
                    Haque Chamber(11 floor - C&D)<br>
                    89/2, West Panthapath,Dhaka<br>
                    Phone:  (+88) 029110348<br>
                    Email: sales@offtica.com
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                To
                <address>
                    <strong>{{$order->client->company}}</strong><br>
                    {{$order->billing->address}}<br>
                    {{$order->billing->city}}, {{$order->billing->division}}, {{$order->billing->country}}<br>
                    Phone: {{$order->billing->phone}}<br>
                    Email: {{$order->billing->email}}
                </address>
            </div>
            <!-- /.col -->
            <div class="col-sm-4 invoice-col">
                <b>Invoice #{{$order->id}}</b><br>
                <br>
                <b>Order ID:</b> {{$order->id}}<br>
                <b>Account:</b> {{$order->payment->accNo}}
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Qty</th>
                            <th>Product</th>
                            <th>Serial #</th>
                            <th>Description</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
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
                        @if($order->discount_id != null)
                            @php
                                $discount = \App\Discount::find($order->discount_id);
                            if($discount->discount_unit == 0){
                            $discount_val = ($total_price*$discount->discount_value)/100;
                                $total_price = $total_price - $discount_val;
                            }
                            else{
                                $discount_val = $total_price - $discount->discount_value;
                                $total_price = $total_price - $discount_val;
                            }
                            @endphp
                        @endif
                        <tr>
                            <td>{{$orderDetail->quantity}}</td>
                            <td>{{$orderDetail->product->productName}}</td>
                            <td>{{$orderDetail->product->sku}}</td>
                            <td>{{substr(strip_tags($orderDetail->product->description), 0, 52)}}...</td><td>৳{{$unitPrice}}
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <div class="row">
            <!-- accepted payments column -->
            <div class="col-xs-6">
                <p class="lead">
                    Payment Method:
                    @if($order->payment->paymentMethod == 0) bKash
                    @elseif($order->payment->paymentMethod == 1) Rocket
                    @elseif($order->payment->paymentMethod == 2)direct bank transfer
                    @elseif($order->payment->paymentMethod == 3)check payment
                    @else Cach on delivery @endif
                </p>
                <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                    <b>Account No.:</b> {{$order->payment->accNo}}<br>
                    <b>Transaction ID:</b> {{$order->payment->tranId}}<br>
                    <b>Account Name:</b> {{$order->payment->acc_name}}<br>
                    <b>Bank:</b> {{$order->payment->bank_name}}<br>
                    <b>Deposit(scanned copy):</b> <img src="{{asset("storage/images/client/payment/".$order->payment->deposit)}}" alt="N/A">
                </p>
            </div>
            <!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">Amount Due 2/22/2014</p>

                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th style="width:50%">Subtotal:</th>
                            <td>৳{{$cart_subtotal}}</td>
                        </tr>
                        @if($order->discount_id != null)
                        <tr>
                            <td class="text-left">Discount @if($discount->discount_unit == 0) ({{$discount->discount_value}}%) @endif</td>
                            <td class="text-right">৳ {{number_format($discount_val, 2)}}</td>
                        </tr>
                        @endif
                        <tr>
                            <th>Tax (15%)</th>
                            <td>৳{{$total_price*0.15}}</td>
                        </tr>
                        <tr>
                            <th>Shipping:</th>
                            <td>৳15</td>
                        </tr>
                        <tr>
                            <th>Total:</th>
                            <td>৳{{$total_price+($total_price*0.15)+15}}</td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>
