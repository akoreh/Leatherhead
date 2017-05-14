@extends('layouts.admin.master')


@section('content')


    <h1>All Products <span style="font-size:0.6em;">({{count($products)}})</span> </h1>

    <table class="table table-bordered">

        <thead>

        <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Name</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Category</th>
            <th>Subcategory</th>
            <th>Homepage</th>
            <th>Created</th>
            <th>Updated</th>

        </tr>

        </thead>
        <tbody>

            @if($products)

                @foreach($products as $product)

                    <tr>
                        <td>{{$product->id}}</td>
                        <td><img height=100px width=100px src="{{$product->image->file}}" alt=""></td>
                        <td>{{$product->name}} <a href="{{route('admin.products.edit',$product->id)}}">(Edit)</a></td>
                        <td>${{$product->price}}</td>
                        <td>{{$product->stock}}</td>
                        <td>{{$product->subcategory->category->name}}</td>
                        <td>{{$product->subcategory->name}}</td>
                        <td>
                         {{$product->homepage==1  ? "Yes" : "No"}}
                        </td>
                        <td>{{$product->created_at->diffForHumans()}}</td>
                        <td>{{$product->updated_at->diffForHumans()}}</td>
                    </tr>


                @endforeach
        </tbody>


    </table>

            @else

           <h2>{{"No products in the database!"}}</h2>


            @endif






@stop