<?php

namespace App\Http\Controllers;

use App\Billingaddr;
use App\Clientpayment;
use App\Deal;
use App\MembershipType;
use App\Offer;
use App\Payment;
use App\Salesman;
use App\Shipping;
use App\Sippingaddr;
use Carbon\Carbon;
use Session;
use Response;
use Validator;
use App\Client;
use App\Mail\VerifyMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Input;

class ClientController extends Controller
{
    /**
     * Instantiate a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('authenticate')->except('index', 'destroy', 'store', 'verifyUser');
        $this->middleware('auth')->only('index', 'destroy');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all clients
        $clients = Client::all()->sortByDesc('id');

        // Return view
        return view('admin.allClients', compact('clients'));
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
            'company' => 'required',
            'email' => 'required|email',
            'password' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors' => $validator->getMessageBag()->toarray()));
        }

        // Checks if the email exists
        $cmrCheck = Client::where('email', $request->email)->get();
        if(!$cmrCheck->isEmpty()){
            return Response::json(array('errors' => array('response' => 'This E-mail already exists! Please try with a different E-mail.')));
        }

        // Get the id of prime membership type
        $membership_type = MembershipType::select('id')->where('membership_type', '0')->get()->toArray();

        // Create instance of Client model & assign form value then save to database
        $client = new Client;
        $client->email = $request->email;
        $client->company = $request->company;
        $client->membership_type_id = $membership_type[0]['id'];
        $client->password = md5($request->password);
        $client->token = str_random(40);
        $client->save();

        // Send verification link by E-mail
        Mail::to($client->email)->send(new VerifyMail($client));

        /* Checks if data is saved to database. If so, redirect back with success message. Otherwise, redirect back with error message */
        if($client){
            return Response::json(array('success' => array('response' => 'Congratulations! You have successfully registered. We have send you an E-mail. Please check that E-mail & click on the link in the mail to activate your account. Thank you.')));
        }else{
            return Response::json(array('errors' => array('response' => 'Registration failed!')));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function show(Client $client)
    {
        // Get account details
        $client = Client::find(Session::get('ID'));

        // Get salesmen
        $salesmen= Salesman::all();

        // Get offer products
        $offers = Offer::where('valid_until', '>=', Carbon::now())->get()->sortByDesc('id');

        // Get deal products
        $deals = Deal::where('valid_until', '>=', Carbon::now())->get()->sortByDesc('id');

        // User Dashboard
        return view('my-account', compact( 'client', 'salesmen', 'offers', 'deals'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function edit(Client $client)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Client $client)
    {
        // Get the client
        $client = Client::find(Session::get('ID'));
        $client->clientName = $request->clientName;
        $client->phone = $request->phone;
        $client->city = $request->city;
        $client->division = $request->division;
        $client->country = $request->country;
        $client->address = $request->address;
        $client->company = $request->company;
        $client->zipCode = $request->zipCode;
        $client->office_phone = $request->office_phone;
        $client->office_email = $request->office_email;
        $client->save();

        // Return json data
        return response()->json($client);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function destroy(Client $client)
    {
        // Get the client & delete it
        $client = Client::find($client->id)->delete();

        // Return json response
        return response()->json();

    }

    /**
     * Update client password.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function updatePass(Request $request, Client $client)
    {
        // Validate form data
        $rules = array(
            'password' => 'required',
            'oldpassword' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors' => $validator->getMessageBag()->toarray()));
        }

        // Get the client
        $client = Client::find(Session::get('ID'));

        if ($client->password != md5($request->oldpassword)){
            // Return json response
            return response()->json(['errors' => ['error' => 'Password did not match!']]);
        }

        // Upadate password
        $client->password = md5($request->password);
        $client->save();

        // Return json response
        return response()->json();
    }

    /**
     * Store client billing address.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function store_billings(Request $request)
    {
        // Get the billing address (if already has one) & update it. Otherwise create new instance
        $billing = Billingaddr::where('client_id', Session::get('ID'))->first();
        if (!$billing){
            // Create instance of Shipping model
            $billing = new Billingaddr();
        }

        // Assign form value then save to database
        $billing->email = $request->email;
        $billing->town = $request->town;
        $billing->country = $request->country;
        $billing->division = $request->division;
        $billing->zipCode = $request->zipCode;
        $billing->phone = $request->phone;
        $billing->address = $request->address;
        $billing->client_id = Session::get('ID');
        $billing->save();

        // Return json response
        return response()->json($billing);
    }

    /**
 * Store client shipping address.
 *
 * @param  \App\Client  $client
 * @return \Illuminate\Http\Response
 */
    public function store_shippings(Request $request)
    {
        // Get the shipping address (if already has one) & update it. Otherwise create new instance
        $shipping = Sippingaddr::where('client_id', Session::get('ID'))->first();
        if (!$shipping){
            // Create instance of Shipping model
            $shipping = new Sippingaddr();
        }

        // Assign form value then save to database
        $shipping->email = $request->email;
        $shipping->town = $request->town;
        $shipping->country = $request->country;
        $shipping->division = $request->division;
        $shipping->zipCode = $request->zipCode;
        $shipping->phone = $request->phone;
        $shipping->address = $request->address;
        $shipping->client_id = Session::get('ID');
        $shipping->save();

        // Return json response
        return response()->json($shipping);
    }

    /**
     * Store client payment method.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function payment_store(Request $request)
    {
        // Get the client
        $payment = Clientpayment::where('client_id', Session::get('ID'))->first();

        // if already has one update it. Otherwise create new instance
        if (!$payment){
            // Create new instance of payment
            $payment = new Clientpayment();
            $payment->client_id = Session::get('ID');
        }

        // Assign null to every field
        $payment->accNo = null;
        $payment->acc_name = null;
        $payment->bank_name = null;

        // Assign payment method
        $payment->paymentMethod = $request->paymentMethod;

        // Check payment method
        if ($request->paymentMethod == 0){
            // Validate form data
            $rules = array(
                'bkash_number' => 'required',
            );

            $payment->accNo = $request->bkash_number;
            $payment->bank_name = 'BRAC Bank';
        }elseif ($request->paymentMethod == 1){
            // Validate form data
            $rules = array(
                'rocket_number' => 'required',
            );

            $payment->accNo = $request->rocket_number;
            $payment->bank_name = 'Dutch-Bangla Bank';
        }elseif ($request->paymentMethod == 2){
            // Validate form data
            $rules = array(
                'bacs_acc_name' => 'required',
                'bacs_acc_no' => 'required',
                'bacs_bank_name' => 'required',
            );

            $payment->acc_name = $request->bacs_acc_name;
            $payment->accNo = $request->bacs_acc_no;
            $payment->bank_name = $request->bacs_bank_name;
        }

        if (isset($rules)){
            $validator = Validator::make ( Input::all(), $rules);
            if ($validator->fails()){
                return Response::json(array('errors' => $validator->getMessageBag()->toarray()));
            }
        }

        // Assign form value then save to database
        $payment->save();

        // Return json response
        return response()->json($payment);
    }

    /**
     * Update client salesman.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function sales_update(Request $request)
    {
        // Get the client
        $client = Client::find(Session::get('ID'));

        // Assign form value then save to database
        $client->salesman_id = $request->salesman_id;
        $client->save();

        // Return json response
        return response()->json($client);
    }

    /**
     * verify client.
     *
     * @param  \App\Client  $client
     * @return \Illuminate\Http\Response
     */
    public function verifyUser($token)
    {
        $verifyUser = Client::where('token', $token)->first();
        if(isset($verifyUser)){
            if(!$verifyUser->status) {
                $verifyUser->status = 1;
                $verifyUser->save();
                $status = "Your e-mail is verified. You can now login.";
            }else{
                $status = "Your e-mail is already verified. You can now login.";
            }
        }else{
            return redirect('/client-login')->with('error', "Sorry your email cannot be identified.");
        }

        return redirect('/client-login')->with('success', $status);
    }
}
