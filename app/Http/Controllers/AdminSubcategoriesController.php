<?php

namespace App\Http\Controllers;

use App\Category;
use App\Image;
use App\Subcategory;
use Illuminate\Http\Request;

use App\Http\Requests;

class AdminSubcategoriesController extends Controller
{

    public function index()
    {
        $subcategories=Subcategory::all();
        return view('admin.subcategories.index',compact('subcategories'));
    }

    public function create()
    {
        $categories=Category::all();
        return view('admin.subcategories.create',compact('categories'));
    }

    public function store(Requests\SubcategoryCreateRequest $request)
    {
        $input=$request->all();

        if($file=$request->file('file')){

            $name= time().$file->getClientOriginalName();

            $file->move('images',$name);

            $photo = Image::create(['file'=>$name]);

            $input['image_id'] = $photo->id;

        }

        $subcategory=Subcategory::create($input);

        $category = Category::find($request->category);

        $category->subcategories()->save($subcategory);

        return redirect('admin/subcategories');

    }

    public function edit($id)
    {
        $categories=Category::all();
        $subcategory=Subcategory::findOrFail($id);

        return view('admin.subcategories.edit',compact('subcategory','categories'));
    }


    public function update(Request $request, $id)
    {
        $subcategory=Subcategory::find($id);
        $input=$request->all();

        if($file=$request->file('file')){

            $name= time().$file->getClientOriginalName();

            $file->move('images',$name);

            $photo = Image::create(['file'=>$name]);

            $input['image_id'] = $photo->id;

        }

        $subcategory->update($input);

        $category = Category::find($request->category);

        $category->subcategories()->save($subcategory);

        return redirect('admin/subcategories');
    }

}
