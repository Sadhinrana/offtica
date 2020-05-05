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
										<li>Login/Registration</li>
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
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="customer-login text-left">
									<form action="{{url('auth')}}" onsubmit="login(event)" id="login">
										<h4 class="title-1 title-border text-uppercase mb-30">Registered customers?</h4>
										<p class="text-gray">If you have an account with us, Please login!</p>
										<ul class="error-login login text-center alert alert-danger hidden"></ul>
										<input type="text" name="email" placeholder="Email here..." />
										<input type="password" name="password" placeholder="Password" />
										<p><a class="text-gray" href="#" id="forgotPass">Forget your password?</a></p>
										<button class="button-one submit-button mt-15" data-text="login" type="submit">login</button>
									</form>
								</div>					
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<div class="customer-login text-left">
									<form action="{{url('clients')}}" onsubmit="register(event)" id="register">
										<h4 class="title-1 title-border text-uppercase mb-30">Don't have an account yet? Register here.</h4>
										<p class="text-gray">If you don't have an account with us, Please register!</p>
										<ul class="error-register text-center alert alert-danger hidden"></ul>
										<p class="success-register text-center alert alert-success hidden"></p>
										<input type="text" name="company" placeholder="Company Name here..." />
										<input type="email" name="email" placeholder="Email here..." />
										<input type="password" name="password" placeholder="Password" />
										<button class="button-one submit-button mt-15" data-text="register" type="submit">register</button>
									</form>
								</div>					
							</div>
						</div>
				</div>
			</div>
			<!-- SHOPPING-CART-AREA END -->

            <!-- Modal -->
            <div class="modal fade" id="password_reset" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h1 class="modal-title"></h1>
                        </div>
                        <div class="modal-body">
                            <div class="footer-subscribe">
                                <form action="{{url('password_reset')}}" id="password-reset-form">
                                    <p class="success text-center alert alert-success hidden"></p>
                                    <p class="error text-center alert alert-danger hidden"></p>
                                    <input type="email" name="email" placeholder="Email Address..." required/>
                                    <input type="hidden" name="_method" value="PUT"/>
                                    <button class="button-one submit-btn-4" type="submit" data-text="Send Password Reset Link">Send Password Reset Link</button>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
@endsection

@section('script')
	<script>
        //Handle register form submit.
        function register(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Hide messages of login form
            $('.error-login').addClass('hidden');

            // Get the form.
            var form = $('#register');

            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'POST',
                url: $(form).attr('action'),
                data: formData,
                success: function(data){
                    if ((data.errors)) {
                        $('.success-register').addClass('hidden');
                        $('.err').remove();
                        $('.error-register').removeClass('hidden');
                        if (typeof data.errors.company !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.company + "</li>");
                        };
                        if (typeof data.errors.email !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.email + "</li>");
                        };
                        if (typeof data.errors.response !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.response + "</li>");
                        };
                        if (typeof data.errors.password !== 'undefined') {
                            $('.error-register').append("<li class='err'>" + data.errors.password + "</li>");
                        }
                    } else {
                        $('form input').val('');
                        $('.error-register').addClass('hidden');
                        $('.success-register').removeClass('hidden');
                        $('.success-register').text(data.success.response);
                    }
                },
            });
        }

        //Handle login form submit.
        function login(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Hide messages of register form
            $('.success-register').addClass('hidden');
            $('.error-register').addClass('hidden');

            // Get the form.
            var form = $('#login');

            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'GET',
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
                        $(location).attr("href", "home");
                    }
                },
            });
        }
	</script>
@endsection