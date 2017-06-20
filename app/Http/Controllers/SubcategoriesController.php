<?php

namespace App\Http\Controllers;

use App\Subcategory;
use Illuminate\Http\Request;

use App\Http\Requests;

class SubcategoriesController extends Controller
{

    public function show($id)
    {
        $subcategory=Subcategory::find($id);

        $collection=$subcategory->products;
        return view('subcategories.details',compact('subcategory','collection'));
    }
}
