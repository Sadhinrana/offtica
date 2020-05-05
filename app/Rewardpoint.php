<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rewardpoint extends Model
{
    /**
     * Get the client that owns the Rewardpoint.
     */
    public function client()
    {
        return $this->belongsTo('App\Client');
    }
}
