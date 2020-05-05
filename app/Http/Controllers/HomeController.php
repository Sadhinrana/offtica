<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Deal;
use App\Offer;
use App\Partner;
use App\Product;
use App\Category;
use App\Siteinfo;
use App\Slider;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get feature products
        $featureProducts = Product::where('type', 0)
            ->inRandomOrder()
            ->take(8)
            ->get();

        // Get new products
        $newProducts = Product::inRandomOrder()
            ->take(8)
            ->get();

        // Get price available products
        $pricedProducts = Product::where('salePrice', '!=', null)->orderByDesc('id')->get();

        // Get price not available products
        $products = Product::all()->sortByDesc('id');

        // Get offer products
        $offers = Offer::where('valid_until', '>=', Carbon::now())->get()->sortByDesc('id');

        // Get deal products
        $deals = Deal::where('valid_until', '>=', Carbon::now())->get()->sortByDesc('id');

        // Get mostViewed products
        $mostViewed = Product::orderBy('view', 'desc')
            ->take(8)
            ->get();

        // Get all banners
        $banners = Banner::all();

        // Get all carts
        $carts = Session::get('cart');

        // Get all categories
        $categories = Category::all();

        // Get all siteinfos
        $siteinfos = Siteinfo::all();

        // Get all slider
        $sliders = Slider::all()->sortByDesc('id');

        // Get all partners
        $partners = Partner::all()->sortByDesc('id');

        // Return view
        return view('home', compact('featureProducts', 'newProducts', 'offers', 'deals', 'mostViewed', 'products', 'categories', 'siteinfos', 'sliders', 'banners', 'partners', 'carts', 'pricedProducts'));
    }
}
