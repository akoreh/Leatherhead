<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{

    protected $fillable = [
        'first_name','last_name', 'email', 'password',
    ];


    protected $hidden = [
        'password', 'remember_token',
    ];

    public function role(){


        return $this->belongsTo('App\Role');
    }


    public function isAdmin(){

        if($this->role->name == 'admin'){

            return true;

        }

        return false;

    }

    public function orders(){
        return $this->hasMany('App\Order');
    }
}
