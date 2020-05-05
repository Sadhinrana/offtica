<?php

namespace App\Http\Controllers;

use Response;
use Validator;
use App\Category;
use App\Subcategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SubcategoryController extends Controller
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
        // Get all categories
        $categories = Category::all();

        // Get all subcategories
        $subcategories = Subcategory::all()->sortBy('subCategoryName');

        return view('admin.allSubCategories', compact('subcategories', 'categories'));
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
            'subCategoryName' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors'=> $validator->getMessageBag()->toarray()));
        }

        else{
            // Create instance of Subcategory model & assign form value then save to database
            $subcategories = new Subcategory;
            $subcategories->subCategoryName = $request->subCategoryName;
            $subcategories->category_id = $request->category_id;
            $subcategories->save();

            return response()->json($subcategories);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Subcategory  $subcategory
     * @return \Illuminate\Http\Response
     */
    public function show(Subcategory $subcategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Subcategory  $subcategory
     * @return \Illuminate\Http\Response
     */
    public function edit(Subcategory $subcategory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Subcategory  $subcategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Subcategory $subcategory)
    {
        // Find the Subcategory model & assign form value then save to database
        $subcategory = Subcategory::find($request->id);
        $subcategory->subCategoryName = $request->subCategoryName;
        $subcategory->category_id = $request->category_id;
        $subcategory->save();

        // Return json response
        return response()->json($subcategory);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Subcategory  $subcategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(Subcategory $subcategory)
    {
        $subcategories = Subcategory::find ($subcategory->id)->delete();
        return response()->json();
    }

    // Get subcategories associated with category
    public function getSubCat($catId){
        $subCategories = Subcategory::where('category_id', $catId)->pluck('subCategoryName','id')->toArray();

        $data = "<option value=''>--Select Subcategory--</option>";
        foreach($subCategories as $key => $subCategory)
        {
            $data .= "<option value='$key'>$subCategory</option>";
        }
        return $data;
    }
}
