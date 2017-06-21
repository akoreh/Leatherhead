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
            <div class="details-product-image-wrapper">
                <div class="col-md-5 col-lg-5 col-sm-5 col-xs-12">

                    <img src="{{$product->image->file}}" alt="">

                </div>
            </div>
            <div class="details-product-details-wrapper">
                <div class="col-md-7 col-lg-7 col-sm-5 col-xs-12">
                    <h2 class="details-product-name">{{$product->name}}</h2>
                    <h3 class="details-product-price">${{$product->price}}.00</h3>

                    @if($product->stock >= 5)

                        <h4 class="details-product-instock">In Stock</h4>
                        <a href="{{route('product.addToCart',$product->id)}}" class="btn btn-success button-cart">Add to Cart</a>

                    @elseif($product->stock < 5 && $product->stock > 0)
                        <h4 class="details-product-limitedstock">Limited Stock</h4>
                        <a href="{{route('product.addToCart',$product->id)}}" class="btn btn-success button-cart">Add to Cart</a>
                    @else
                        <h4 class="details-product-outofstock">Out of Stock</h4>
                    @endif

                    <div class="details-product-description-wrapper">
                        {!! $product->description !!}
                    </div>

                </div>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
            <h2>Related Products</h2>
            <hr>
            <div class="related-products-wrapper">
                    @foreach($relatedProducts as $relatedProduct)

                       <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12">
                           <a href="{{route('product.details',$relatedProduct->id)}}"><img src="{{$relatedProduct->image->file}}" alt="" class="product-image"></a>
                           <a href="{{route('product.details',$relatedProduct->id)}}" class="product-title">{{$relatedProduct->name}}</a>
                       </div>

                    @endforeach
            </div>
        </div>
    </div>



@endsection
