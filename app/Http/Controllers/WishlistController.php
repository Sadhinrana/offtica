<?php

namespace App\Http\Controllers;

use Session;
use Response;
use App\Wishlist;
use Illuminate\Http\Request;

class WishlistController extends Controller
{
    /**
     * Instantiate a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('authenticate')->except('store');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get all wishlist
        $wishlists = Wishlist::where('client_id', Session::get('ID'))->get();

        // Return view
        return view('wishlist', compact('wishlists'));
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
        // Check user session
        if (!Session::has('ID')) {
            return Response::json(array('error' => 'Please <a href="/client-login">sign in</a> to add wishlist! <a href="/login-register">Sign up</a> if already not registered.'));
        }

        // Checks if the product exists in the list
        $wishlists = Wishlist::where('client_id', Session::get('ID'))
            ->where('product_id', $request->product_id)
            ->get();

        if (!$wishlists->isEmpty()){
            return Response::json(array('error' => 'This Product already exists in your wishlist! '));
        }

        // Create instance of wishlist model & assign form value then save to database
        $wishlist = new Wishlist;
        $wishlist->client_id = Session::get('ID');
        $wishlist->product_id = $request->product_id;
        $wishlist->save();

        /* Checks if data is saved to database. If so, redirect to previous page with success message. Otherwise, redirect to previous page with error message */
        if($wishlist){
            return Response::json(array('success' => 'Product added to wishlist successfully. '));
        }else{
            return Response::json(array('error' => 'Could not add product to wishlist! '));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function show(Wishlist $wishlist)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function edit(Wishlist $wishlist)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Wishlist $wishlist)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Wishlist  $wishlist
     * @return \Illuminate\Http\Response
     */
    public function destroy(Wishlist $wishlist)
    {
        $wishlist = Wishlist::find ($wishlist->id)->delete();
        return response()->json();
    }
}
