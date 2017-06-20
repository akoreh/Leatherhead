<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{

    public function getPanel(){

        $orders=Auth::user()->orders;

        $orders->transform(function($order,$key){

            $order->cart = unserialize($order->cart);
            return $order;
        });

        return view('user.orders',compact('orders'));
    }
}
