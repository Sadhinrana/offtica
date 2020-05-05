<?php

namespace App\Http\Controllers;

use App\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class SubscriptionController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Check if email already exists
        $subscribe = Subscription::where('email', $request->email)->first();
        if ($subscribe){
            return response()->json(['error' => 'This email already exists! Please try again with a different email.']);
        }

        // Create instance of Subscription model & assign form value then save to database
        $subscribes = new Subscription();
        $subscribes->email = $request->email;
        $subscribes->save();

        // Send the mail
        Mail::send([], [], function($message) use ($request) {
            $message->from('no-replay@offtica.com');
            $message->to($request->email);
            $message->subject('Greeting for newsletter subscription');
            $message->setBody('<h3>Welcome to <a href="offtica.com">Offtica.com</a></h3> You have successfully subscribed for our newsletter. From now you will get upto date info about our products.', 'text/html');
        });

        return response()->json($subscribes);
    }
}
