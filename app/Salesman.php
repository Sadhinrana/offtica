<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Salesman extends Model
{
    /**
     * Get the client record associated with the Salesman.
     */
    public function client()
    {
        return $this->hasMany('App\Client');
    }

    /**
     * Get the target record associated with the Salesman.
     */
    public function target()
    {
        return $this->hasMany('App\Salesmantarget');
    }
}
