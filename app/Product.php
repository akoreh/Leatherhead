<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable=[

      'name',
      'description',
      'price',
      'stock',
      'image_id',
      'keywords',
      'homepage',
      'subcategory_id'
    ];


    public function image(){

        return $this->belongsTo('App\Image');

    }

    public function subcategory(){

        return $this->belongsTo('App\Subcategory');

    }


}
