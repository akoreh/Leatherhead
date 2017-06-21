<?php

namespace App\Http\Controllers;

use App\Category;
use App\Image;
use App\Product;
use Illuminate\Http\Request;

use App\Http\Requests;

class AdminProductsController extends Controller
{

    public function index()
    {

        $products = Product::all();


        return view('admin.products.index', compact('products'));
    }


    public function create()
    {
        $categories = Category::all();
        return view('admin.products.create',compact('categories'));
    }


    public function store(Requests\ProductRequest $request)
    {

        $input=$request->all();
        $input['subcategory_id']=$request->subcategory_id;

        if($file=$request->file('file')){

            $name=time().$file->getClientOriginalName();
            $file->move('images',$name);
            $image=Image::create(['file'=>$name]);
            $input['image_id']=$image->id;

        }

        Product::create($input);

        return redirect('/admin/products');


    }

    public function delete($id){
      $product=Product::findOrFail($id);
      $product->delete();

      return redirect('/admin/products');
    }

    public function edit($id)
    {
        $categories=Category::all();
        $product=Product::findOrFail($id);

        return view('admin.products.edit',compact('product','categories'));
    }


    public function update(Requests\ProductRequest $request, $id)
    {
        $product=Product::findOrFail($id);
        $input=$request->all();

        if($request->homepage !=1){
            $input['homepage']=0;
        }

        if($request->subcategory_id != 0) {
            $input['subcategory_id'] = $request->subcategory_id;
        }
        if($file=$request->file('file')){

            $name=time().$file->getClientOriginalName();
            $file->move('images',$name);
            $image=Image::create(['file'=>$name]);
            $input['image_id']=$image->id;

        }

        $product->update($input);

        return redirect('/admin/products');
    }
}
