<?php

namespace App\Http\Controllers;

use App\Salesman;
use Response;
use Validator;
use App\Salesmantarget;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SalesmantargetController extends Controller
{
    /**
     * Instantiate a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
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

        // Get all salesmen target
        $salesmentarget = Salesmantarget::all()->sortByDesc('id');

        return view('admin.salesmantargets', compact('salesmen', 'salesmentarget'));
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
            'salesman_id' => 'required',
            'client_target' => 'required',
            'sales_target' => 'required',
            'month' => 'required',
            'year' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors'=> $validator->getMessageBag()->toarray()));
        }

        $salesmentarget = new Salesmantarget();
        $salesmentarget->salesman_id = $request->salesman_id;
        $salesmentarget->client_target = $request->client_target;
        $salesmentarget->sales_target = $request->sales_target;
        $salesmentarget->month = $request->month;
        $salesmentarget->year = $request->year;
        $salesmentarget->save();

        return response()->json($salesmentarget);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Salesmantarget  $salesmantarget
     * @return \Illuminate\Http\Response
     */
    public function show(Salesmantarget $salesmantarget)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Salesmantarget  $salesmantarget
     * @return \Illuminate\Http\Response
     */
    public function edit(Salesmantarget $salesmantarget)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Salesmantarget  $salesmantarget
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Salesmantarget $salesmantarget)
    {
        // Find the target
        $salesmentarget = Salesmantarget::find($salesmantarget->id);
        $salesmentarget->salesman_id = $request->salesman_id;
        $salesmentarget->client_target = $request->client_target;
        $salesmentarget->sales_target = $request->sales_target;
        $salesmentarget->month = $request->month;
        $salesmentarget->year = $request->year;
        $salesmentarget->save();

        return response()->json($salesmentarget);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Salesmantarget  $salesmantarget
     * @return \Illuminate\Http\Response
     */
    public function destroy(Salesmantarget $salesmantarget)
    {
        // Find the target
        $salesmentarget = Salesmantarget::find($salesmantarget->id)->delete();

        return response()->json();
    }
}
