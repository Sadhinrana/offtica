<?php

namespace App\Http\Controllers;

use App\Category;
use App\Subcategory;
use Response;
use Validator;
use App\Minicategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class MinicategoryController extends Controller
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
        $minicategories = Subcategory::all();

        // Get all minicategories
        $minicategories = Minicategory::all()->sortBy('miniCategoryName');

        return view('admin.minicategories', compact('subcategories', 'categories', 'minicategories'));
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
            'miniCategoryName' => 'required',
            'category_id' => 'required',
            'subcategory_id' => 'required',
        );

        $validator = Validator::make ( Input::all(), $rules);
        if ($validator->fails()){
            return Response::json(array('errors'=> $validator->getMessageBag()->toarray()));
        }

        else{
            // Create instance of Minicategory model & assign form value then save to database
            $minicategories = new Minicategory();
            $minicategories->miniCategoryName = $request->miniCategoryName;
            $minicategories->subcategory_id = $request->subcategory_id;
            $minicategories->save();

            // Find subcategory
            $subcategories = Subcategory::with('category')->find($minicategories->subcategory_id);

            return response()->json([$minicategories, $subcategories]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Minicategory  $minicategory
     * @return \Illuminate\Http\Response
     */
    public function show(Minicategory $minicategory)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Minicategory  $minicategory
     * @return \Illuminate\Http\Response
     */
    public function edit(Minicategory $minicategory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Minicategory  $minicategory
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Minicategory $minicategory)
    {
        // Find the Subcategory model & assign form value then save to database
        $minicategory = Minicategory::with('subcategory')->find($minicategory->id);
        $minicategory->miniCategoryName = $request->miniCategoryName;
        $minicategory->subcategory_id = $request->subcategory_id;
        $minicategory->save();

        // Find subcategory
        $subcategories = Subcategory::with('category')->find($minicategory->subcategory_id);

        return response()->json([$minicategory, $subcategories]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Minicategory  $minicategory
     * @return \Illuminate\Http\Response
     */
    public function destroy(Minicategory $minicategory)
    {
        $minicategory = Minicategory::find ($minicategory->id)->delete();
        return response()->json();
    }

    // Get minicategories associated with subcategory
    public function getMiniCat($subCatId){
        $miniCategories = Minicategory::where('subcategory_id', $subCatId)->pluck('miniCategoryName','id')->toArray();

        $data = "<option value=''>--Select Minicategory--</option>";
        foreach($miniCategories as $key => $miniCategories)
        {
            $data .= "<option value='$key'>$miniCategories</option>";
        }
        return $data;
    }
}
