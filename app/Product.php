<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    /**
     * Get the category that owns the product.
     */
    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    /**
     * Get the brand that owns the product.
     */
    public function brand()
    {
        return $this->belongsTo('App\Brand');
    }

    /**
     * Get the subcategory that owns the product.
     */
    public function subcategory()
    {
        return $this->belongsTo('App\Subcategory');
    }

    /**
     * Get the minicategory that owns the product.
     */
    public function minicategory()
    {
        return $this->belongsTo('App\Minicategory');
    }

    /**
     * Get the Industry that owns the product.
     */
    public function industry()
    {
        return $this->belongsTo('App\Industry');
    }

    /**
     * Get the wishlist record associated with the product.
     */
    public function wishlist()
    {
        return $this->hasOne('App\Wishlist');
    }

    /**
     * Get the image record associated with the product.
     */
    public function image()
    {
        return $this->hasOne('App\Image');
    }

    /**
     * Get the review record associated with the product.
     */
    public function productreviews()
    {
        return $this->hasMany('App\Productreview');
    }

    /**
     * Get the color record associated with the product.
     */
    public function colors()
    {
        return $this->belongsToMany('App\Color');
    }

    /**
     * Get the size record associated with the product.
     */
    public function sizes()
    {
        return $this->belongsToMany('App\Size');
    }

    /**
     * Get the tag record associated with the product.
     */
    public function tags()
    {
        return $this->belongsToMany('App\Tag');
    }

    /**
     * Get the deals record associated with the product.
     */
    public function deals()
    {
        return $this->belongsToMany('App\Deal');
    }

    /**
     * Get the offers record associated with the product.
     */
    public function offers()
    {
        return $this->belongsToMany('App\Offer');
    }
}
