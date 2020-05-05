<?php

namespace App\Http\Controllers;

use App\Order;
use Response;
use Validator;
use App\Salesman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SalesmanController extends Controller
{
    /**
     * Instantiate a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('salesman_auth')->only('show', 'sales_update', 'showOrder');
        $this->middleware('authenticate')->except('show', 'sales_update', 'showOrder');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all salesmen
        $salesmen = Salesman::all()->sortByDesc('id');

        return view('admin.salesmen', compact('salesmen'));
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
            'salesmanName' => 'required',
            'designation' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'password' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors'=> $validator->getMessageBag()->toarray()));
        }

        $salesman = new Salesman();
        $salesman->salesmanName = $request->salesmanName;
        $salesman->designation = $request->designation;
        $salesman->email = $request->email;
        $salesman->phone = $request->phone;
        $salesman->password = md5($request->password);
        $salesman->address = $request->address;
        $salesman->city = $request->city;
        $salesman->division = $request->division;
        $salesman->country = $request->country;
        $salesman->zipCode = $request->zipCode;
        $salesman->save();

        return response()->json($salesman);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Salesman  $salesman
     * @return \Illuminate\Http\Response
     */
    public function show(Salesman $salesman)
    {
        // Find the salesman
        $salesman = Salesman::find($salesman->id);

        return view('sales_account', compact('salesman'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Salesman  $salesman
     * @return \Illuminate\Http\Response
     */
    public function edit(Salesman $salesman)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Salesman  $salesman
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Salesman $salesman)
    {
        // Find the salesman
        $salesman = Salesman::find($salesman->id);
        $salesman->salesmanName = $request->salesmanName;
        $salesman->designation = $request->designation;
        $salesman->email = $request->email;
        $salesman->phone = $request->phone;
        $salesman->password = md5($request->password);
        $salesman->address = $request->address;
        $salesman->city = $request->city;
        $salesman->division = $request->division;
        $salesman->country = $request->country;
        $salesman->zipCode = $request->zipCode;
        $salesman->save();

        return response()->json($salesman);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Salesman  $salesman
     * @return \Illuminate\Http\Response
     */
    public function destroy(Salesman $salesman)
    {
        // Find the salesman
        $salesman = Salesman::find($salesman->id)->delete();

        return response()->json();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Salesman  $salesman
     * @return \Illuminate\Http\Response
     */
    public function sales_update(Request $request)
    {
        // Find the salesman
        $salesman = Salesman::find($request->id);
        $salesman->salesmanName = $request->salesmanName;
        $salesman->designation = $request->designation;
        $salesman->phone = $request->phone;
        $salesman->address = $request->address;
        $salesman->city = $request->city;
        $salesman->division = $request->division;
        $salesman->country = $request->country;
        $salesman->zipCode = $request->zipCode;
        $salesman->save();

        return response()->json($salesman);
    }

    /**
     * Update Salesman password.
     *
     * @param  \App\Salesman  $salesman
     * @return \Illuminate\Http\Response
     */
    public function updatePass(Request $request)
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

        // Get the Salesman
        $salesman = Salesman::find($request->id);

        if ($salesman->password != md5($request->oldpassword)){
            // Return json response
            return response()->json(['errors' => ['error' => 'Password did not match!']]);
        }

        // Upadate password
        $salesman->password = md5($request->password);
        $salesman->save();

        // Return json response
        return response()->json();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function showOrder($id)
    {
        // Get the order
        $order = Order::find($id);

        return view('orderDetails', ['order' => $order]);
    }
}
