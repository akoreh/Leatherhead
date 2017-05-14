<?php

namespace App\Http\Controllers;

use App\Category;
use App\Image;
use App\Product;
use Illuminate\Http\Request;

use App\Http\Requests;

class AdminProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $products = Product::all();


        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('admin.products.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories=Category::all();
        $product=Product::findOrFail($id);

        return view('admin.products.edit',compact('product','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
