<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    /**
     * Get the product record associated with the category.
     */
    public function product()
    {
        return $this->hasMany('App\Product');
    }

    /**
     * Get the SubCategory record associated with the category.
     */
    public function subcategory()
    {
        return $this->hasMany('App\Subcategory');
    }
}
