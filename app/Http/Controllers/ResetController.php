<?php

namespace App\Http\Controllers;

use Session;
use Response;
use Validator;
use App\Client;
use App\PasswordReset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Input;

class ResetController extends Controller
{
    // Password reset
    public function password_reset(Request $request){
        // Check if email exists in client list
        $client = Client::where('email', $request->email)->first();
        if (!$client){
            return response()->json(array('error' => 'We can\'t find a user with that e-mail address.'));
        }

        // Password reset
        $reset = new PasswordReset();
        $reset->email = $request->email;
        $reset->token = str_random(40);
        $reset->save();

        // Send reset link by E-mail
        Mail::to($reset->email)->send(new \App\Mail\PasswordReset($reset));
    }

    // Password reset
    public function reset($token)
    {
        $reset = PasswordReset::where('token', $token)->first();
        if($reset){
            Session::put('email', $reset->email);
            return view('reset-password');
        }else{
            return redirect('/client-login');
        }
    }

    // Password reset
    public function passwordReset(Request $request)
    {
        // Check if email exists in client list
        $client = Client::where('email', $request->email)->first();
        if (!$client) {
            return response()->json(['errors' => ['email' => 'We can\'t find a user with that e-mail address!']]);
        }

        // Check if email is requested email
        if ($request->email != Session::get('email')) {
            return response()->json(['errors' => ['email' => 'Provided email & requested email mismatch!']]);
        }

        if ($request->password != $request->password_confirmation) {
            return response()->json(['errors' => ['confirm' => 'Password and confirm password does not match!']]);
        }

        $client->password = md5($request->password);
        $client->save();

        return response()->json();
    }
}
