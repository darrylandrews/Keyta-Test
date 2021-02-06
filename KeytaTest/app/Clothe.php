<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clothe extends Model
{
    public function cart()
    {   
        // has many cart
        return $this->hasMany(Cart::class);
    }
}
