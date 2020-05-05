@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Reset Password</div>

                    <div class="panel-body">
                        <form class="form-horizontal" id="reset" method="POST" onsubmit="resetPass(event)" action="{{ url('passwordReset') }}">
                            {{ csrf_field() }}

                            <div class="form-group">
                                <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control" name="email" value="{{ $email or old('email') }}" required autofocus>
                                    <p class="error-email text-center alert alert-danger hidden"></p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password" class="col-md-4 control-label">Password</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control" name="password" required>
                                    <p class="error-password text-center alert alert-danger hidden"></p>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>
                                <div class="col-md-6">
                                    <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                                    <p class="error-password-confirm text-center alert alert-danger hidden"></p>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary">
                                        Reset Password
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        //Handle register form submit.
        function resetPass(e) {
            // Stop the browser from submitting the form.
            e.preventDefault();

            // Get the form.
            var form = $('#reset');

            // Serialize the form data.
            var formData = $(form).serialize();

            // Submit the form using AJAX.
            $.ajax({
                type: 'POST',
                url: $(form).attr('action'),
                data: formData,
                success: function(data){
                    if ((data.errors)) {
                        $('.alert').addClass('hidden');
                        if (typeof data.errors.email !== 'undefined') {
                            $('.error-email').removeClass('hidden');
                            $('.error-email').text(data.errors.email);
                        };
                        if (typeof data.errors.confirm !== 'undefined') {
                            $('.error-password-confirm').removeClass('hidden');
                            $('.error-password-confirm').text(data.errors.confirm);
                        };
                    }else {
                        $(location).attr("href", "client-login");
                    }
                }
            });
        }
    </script>
@endsection
