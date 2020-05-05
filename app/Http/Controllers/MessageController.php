<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use Response;
use Validator;
use App\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class MessageController extends Controller
{
    /**
     * Instantiate a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except('store', 'sendMessage');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all messages
        $messages = Message::all()->sortByDesc('id');

        // Mark all messages as viewed
        Message::where('confirmed', false)
            ->update(['confirmed' => true]);

        // Return view
        return view('admin.allMessages', compact('messages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate form data
        $rules = array(
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'phone' => 'required',
            'message' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails())
            return Response::json(array('errors'=> $validator->getMessageBag()->toarray()));

        $message = new Message;
        $message->name = $request->name;
        $message->email = $request->email;
        $message->phone = $request->phone;
        $message->subject = $request->subject;
        $message->message = $request->message;
        $message->save();

        // Send the mail
        Mail::send([], [], function($message) use ($request) {
            $message->from($request->email);
            $message->to('offtica@gmail.com');
            $message->subject($request->subject);
            $message->setBody($request->message, 'text/html');
        });

        if ($message) {
            return response()->json(array('success' => "Thanks for your message. We will contact you as soon as possible."));
        }else{
            return response()->json(array('error' => "Failed!"));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function show(Message $message)
    {
        // Get the message
        $message = Message::find($message->id);

        // Update view status
        $message->confirmed = true;
        $message->save();

        return view('admin.showMessage', compact('message'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function edit(Message $message)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Message $message)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Message  $message
     * @return \Illuminate\Http\Response
     */
    public function destroy(Message $message)
    {
        // Get the message & delete it
        Message::find($message->id)->delete();

        return response()->json();
    }
}
