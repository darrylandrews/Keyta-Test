<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    public function clothe()
    {   
        // belongsto clothe
        return $this->belongsTo(Clothe::class);
    }
}
