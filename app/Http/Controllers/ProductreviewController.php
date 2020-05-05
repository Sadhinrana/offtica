<?php

namespace App\Http\Controllers;

use Response;
use Validator;
use App\Productreview;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class ProductreviewController extends Controller
{
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
            'authorName' => 'required',
            'email' => 'required|email',
            'review' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors'=> $validator->getMessageBag()->toarray()));
        }

        // Create an instace of Productreview & assign form data then save to database
        $review = new Productreview();
        $review->authorName = $request->authorName;
        $review->email = $request->email;
        $review->review = $request->review;
        $review->rating = $request->rating;
        $review->product_id = $request->product_id;
        $review->save();

        // Return json response
        return response()->json($request);
    }
}
