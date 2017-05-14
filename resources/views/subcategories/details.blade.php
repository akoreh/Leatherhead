@extends('layouts.master')


@section('title')

    <title>Leatherhead - {{$subcategory->name}}</title>
@endsection


@section('content')

    <div class="details-wrapper">
        {!! $subcategory->description !!}
    </div>
    <div class="product-wrapper">

        <div class="container content-container">
            @foreach($collection->chunk(3) as $products)
                <div class="row  product-row justify-content-md-center justify-content-sm-center justify-content-xs-center">


                    @foreach($products as $product)

                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12 product">

                            <a href="{{route('product.details',$product->id)}}"><img src="{{$product->image->file}}" alt="" class="product-image"></a>
                            <a href="{{route('product.details',$product->id)}}" class="product-title">{{$product->name}}</a>
                            <p class="product-price">${{$product->price}}.00</p>
                        </div>


                    @endforeach

                </div>
            @endforeach

        </div>


    </div>

@endsection