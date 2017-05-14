<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable=['file'];


    protected $directory='/images/';


    public function getFileAttribute($image){


        return $this->directory.$image;
    }

}
