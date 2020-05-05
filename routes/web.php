<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Load home if no other url is specified
Route::get('/', 'HomeController@index')->name('home');

// Authorization routes here
Auth::routes();

// About routes here
Route::get('/about', 'AboutController@allAbouts')->name('about');
Route::resource('abouts', 'AboutController');

// Brand routes here
Route::resource('brands', 'BrandController');

// Home routes here
Route::get('/home', 'HomeController@index')->name('home');

// Category routes here
Route::resource('categories', 'CategoryController');

// Slider routes here
Route::resource('sliders', 'SliderController');

// SubCategory routes here
Route::get('getSubCat/{catId}', 'SubcategoryController@getSubCat');
Route::resource('subcategories', 'SubcategoryController');

// Minicategory routes here
Route::get('/getMiniCat/{subCatId}', 'MinicategoryController@getMiniCat');
Route::resource('minicategories', 'MinicategoryController');

// Contact routes here
Route::get('/contact', 'ContactController@allContacts')->name('contact');
Route::resource('contacts', 'ContactController');

// Message routes here
Route::resource('messages', 'MessageController');

// Product routes here
Route::get('/product', 'ProductController@allProducts')->name('product');
Route::get('/searched_product', 'ProductController@searched_product');
Route::get('/productByCat/{catId}/{subCatId?}/{minCatId?}', 'ProductController@productByCat');
Route::get('/productByMiniCat/{miniCatId}', 'ProductController@productByMiniCat');
Route::get('/productsByMiniCat/{miniCatId}', 'ProductController@productsByMiniCat');
Route::get('/productsByCat/{catId}/{proId}', 'ProductController@productsByCat');
Route::get('/productByBrand/{brandId}', 'ProductController@productByBrand');
Route::get('/productsByBrand', 'ProductController@productsByBrand');
Route::get('/productByIndustry/{industryId}', 'ProductController@productByIndustry');
Route::get('/productsByIndustry', 'ProductController@productsByIndustry');
Route::resource('products', 'ProductController');

// Product Review routes here
Route::post('productreviews', 'ProductreviewController@store');

// Partner routes here
Route::resource('partners', 'PartnerController');

// Siteinfo routes here
Route::get('/faq', 'SiteinfoController@faq');
Route::get('/term-condition', 'SiteinfoController@terms');
Route::resource('siteinfos', 'SiteinfoController');

// Admin dashboard routes here
Route::get('/dashboard', 'UserController@dashboard')->name('dashboard');

// Client routes here
Route::get('/user/verify/{token}', 'ClientController@verifyUser');
Route::post('/sales_update', 'ClientController@sales_update');
Route::post('/billings', 'ClientController@store_billings');
Route::post('/payment_store', 'ClientController@payment_store');
Route::post('/shippings', 'ClientController@store_shippings');
Route::put('/updatePass', 'ClientController@updatePass');
Route::resource('clients', 'ClientController');
Route::get('/auth', 'LoginController@login')->name('auth');
Route::get('/login-register', 'LoginController@loginview')->name('validate');
Route::get('/client-login', 'LoginController@login_view');
Route::get('/cmrLogout', 'LoginController@logout')->name('cmrLogout');

// Password reset routes here
Route::put('/password_reset', 'ResetController@password_reset');
Route::post('/passwordReset', 'ResetController@passwordReset');
Route::get('/reset/verify/{token}', 'ResetController@reset');

// Color routes here
Route::resource('colors', 'ColorController');

// Size routes here
Route::resource('sizes', 'SizeController');

// Search routes here
Route::post('/getSearchedProduct', 'SearchController@getSearchedProduct')->name('search');

// Wishlist routes here
Route::resource('wishlists', 'WishlistController');

// Industry routes here
Route::resource('industries', 'IndustryController');

// Tag routes here
Route::resource('tags', 'TagController');

// Order routes here
Route::resource('orders', 'OrderController');

// Discount routes here
Route::post('/applyCoupon', 'DiscountController@applyCoupon');
Route::resource('discounts', 'DiscountController');

// MembershipType routes here
Route::resource('membership_types', 'MembershipTypeController');

// Salesman routes here
Route::get('/sales_login', function () {
    return view('sales_login');
});
Route::post('/salesmen_auth', 'LoginController@sales_login');
Route::post('/sales_logout', 'LoginController@sales_logout');
Route::put('/sales_update', 'SalesmanController@sales_update');
Route::put('/update_sales_pass', 'SalesmanController@updatePass');
Route::get('clientOrder/{id}', 'SalesmanController@showOrder');
Route::resource('salesmen', 'SalesmanController');

// Salesman target routes here
Route::resource('salesmantargets', 'SalesmantargetController');

// Cart routes here
Route::post('/addCart', 'CartController@store');
Route::post('/updateCart', 'CartController@update');
Route::post('/deleteCart', 'CartController@destroy');
Route::get('/allCarts', 'CartController@index');

// Mail routes here
Route::get('/mailbox', 'MailController@index');
Route::get('/compose', 'MailController@compose');
Route::post('/sendMail', 'MailController@sendMail');

// Subscription routes here
Route::post('/subscribes', 'SubscriptionController@store');

// Offer routes here
Route::get('/offer', 'OfferController@allOffers');
Route::resource('offers', 'OfferController');

// Deal routes here
Route::get('/deal', 'DealController@allDeals');
Route::resource('deals', 'DealController');

// Banner routes here
Route::resource('banners', 'BannerController');