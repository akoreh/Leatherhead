<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{

    protected $fillable=[

        'name',
        'description',
        'image_id'

    ];

    public function image(){

        return $this->belongsTo('App\Image');


    }

    public function category(){

        return $this->belongsTo('App\Category');

    }

    public function products(){

        return $this->hasMany('App\Product');

    }

}
