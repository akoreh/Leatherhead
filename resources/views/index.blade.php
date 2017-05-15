@extends('layouts.master')


@section('title')

  <title>Leatherhead - Home</title>
@endsection


@section('content')

    @if($errors->first('errorMessage'))

    <div class="alert alert-danger">
        {{$errors->first('errorMessage')}}
    </div>

    @elseif($errors->first('successMessage'))

        <div class="alert alert-success">
            {{$errors->first('successMessage')}}
        </div>

    @endif


  <div class="slider-wrapper custom_slider">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">


      <div class="carousel-inner">
        <div class="item active">
          <img src="/images/slider/4.jpg">
        </div>

        <div class="item">
          <img src="/images/slider/2.jpg" >
        </div>

        <div class="item">
          <img src="/images/slider/3.jpg" >
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">

        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">

        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

  <div class="product-wrapper">

    <div class="container content-container">
      @foreach($collection->chunk(3) as $products)
        <div class="row  product-row justify-content-md-center justify-content-sm-center justify-content-xs-center">


          @foreach($products as $product)

              <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12 product">

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