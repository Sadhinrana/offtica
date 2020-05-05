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
                                <li>Login</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- HEADING-BANNER END -->
    <!-- SHOPPING-CART-AREA START -->
    <div class="login-area  pt-80 pb-80">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-3"></div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="customer-login text-left">
                        <form action="{{url('salesmen_auth')}}" onsubmit="login(event)" id="login">
                            <h4 class="title-1 title-border text-uppercase mb-30">Registered salesman?</h4>
                            <p class="text-gray">If you have an account with us, Please login!</p>
                            <ul class="error-login login text-center alert alert-danger hidden"></ul>
                            <input type="text" name="email" placeholder="Email here..." />
                            <input type="password" name="password" placeholder="Password" />
                            <p><a class="text-gray" href="#">Forget your password?</a></p>
                            <button class="button-one submit-button mt-15" data-text="login" type="submit">login</button>
                        </form>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3"></div>
            </div>
        </div>
    </div>
    <!-- SHOPPING-CART-AREA END -->
@endsection

@section('script')
    <script>
        //Handle login form submit.
        function login(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Get the form.
            var form = $('#login');

            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'POST',
                url: $(form).attr('action'),
                data: formData,
                success: function(data){
                    if ((data.errors)) {
                        $('.err').remove();
                        $('.error-login').removeClass('hidden');
                        if (typeof data.errors.email !== 'undefined') {
                            $('.error-login').append("<li class='err'>" + data.errors.email + "</li>");
                        };
                        if (typeof data.errors.response !== 'undefined') {
                            $('.error-login').append("<li class='err'>" + data.errors.response + "</li>");
                        };
                        if (typeof data.errors.password !== 'undefined') {
                            $('.error-login').append("<li class='err'>" + data.errors.password + "</li>");
                        }
                    } else {
                        var id = data.id;
                        $(location).attr("href", "salesmen/" + data.id);
                    }
                }
            });
        }
    </script>
@endsection