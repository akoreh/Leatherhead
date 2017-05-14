<?php

namespace App\Http\Controllers;

use App\Category;
use App\Image;
use App\Subcategory;
use Illuminate\Http\Request;

use App\Http\Requests;

class AdminSubcategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subcategories=Subcategory::all();
        return view('admin.subcategories.index',compact('subcategories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Category::all();
        return view('admin.subcategories.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
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
        $subcategory=Subcategory::findOrFail($id);

        return view('admin.subcategories.edit',compact('subcategory','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
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
