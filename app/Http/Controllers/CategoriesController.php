<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

use App\Http\Requests;

class CategoriesController extends Controller
{

    public function show($id)
    {
        $category=Category::find($id);

        return view('categories.details',compact('category'));
    }

}
