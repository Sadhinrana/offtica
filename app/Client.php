<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    /**
     * Get the membership_type that owns the client.
     */
    public function membership_type()
    {
        return $this->belongsTo('App\MembershipType');
    }

    /**
     * Get the Salesman that owns the client.
     */
    public function salesman()
    {
        return $this->belongsTo('App\Salesman');
    }

    /**
     * Get the reward_point record associated with the client.
     */
    public function reward_point()
    {
        return $this->hasMany('App\Rewardpoint');
    }

    /**
     * Get the wishlist record associated with the client.
     */
    public function wishlists()
    {
        return $this->hasMany('App\Wishlist');
    }

    /**
     * Get the Discount record associated with the client.
     */
    public function discount()
    {
        return $this->belongsToMany('App\Discount');
    }

    /**
     * Get the order record associated with the client.
     */
    public function order()
    {
        return $this->hasMany('App\Order');
    }

    /**
     * Get the billing record associated with the client.
     */
    public function billing()
    {
        return $this->hasOne('App\Billingaddr');
    }

    /**
     * Get the shipping record associated with the client.
     */
    public function shipping()
    {
        return $this->hasOne('App\Sippingaddr');
    }

    /**
     * Get the payment record associated with the client.
     */
    public function payment()
    {
        return $this->hasOne('App\Clientpayment');
    }
}
