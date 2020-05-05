<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sippingaddr extends Model
{
    /**
     * Get the client that owns the shipping.
     */
    public function client()
    {
        return $this->belongsTo('App\Client');
    }
}
