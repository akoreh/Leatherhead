@extends('layouts.master')


@section('title')

    <title>Leatherhead - {{$product->name}}</title>
@endsection


@section('content')

    <div class="breadcrumb-wrapper">

        <a href="{{route('index')}}">Home</a>
        <span> > </span>
        <a href="{{route('category.details',$product->subcategory->category->id)}}">{{$product->subcategory->category->name}}</a>
        <span> > </span>
        <a href="{{route('subcategory.details',$product->subcategory->id)}}">{{$product->subcategory->name}}</a>
        
        
    </div>
    
    <div class="details-product-wrapper">
        <div class="row">
            <div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">

                <img src="{{$product->image->file}}" alt="">
                
            </div>
            <div class="col-md-7 col-lg-7 col-sm-12 col-xs-12">
                <h2 class="details-product-name">{{$product->name}}</h2>
                <h3 class="details-product-price">${{$product->price}}.00</h3>

                @if($product->stock >= 5)

                    <h4 class="details-product-instock">In Stock</h4>


                @elseif($product->stock < 5 && $product->stock > 0)
                    <h4 class="details-product-limitedstock">Limited Stock</h4>
                @else
                    <h4 class="details-product-outofstock">Out of Stock</h4>
                @endif

                <a href="{{route('product.addToCart',$product->id)}}" class="btn btn-success">Add to Cart</a>

            </div>
        </div>
    </div>
    


@endsection