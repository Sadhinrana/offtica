<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    /**
     * Get the order record associated with the Payment.
     */
    public function order()
    {
        return $this->hasMany('App\Order');
    }
}
