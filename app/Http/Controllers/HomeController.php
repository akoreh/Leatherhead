<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Product;

class HomeController extends Controller
{

    public function __construct()
    {
    
    }

    public function index()
    {
      $collection = Product::where('homepage',1)->get();
      return view("index",compact("collection"));
    }
}
