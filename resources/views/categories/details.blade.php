@extends('layouts.master')


@section('title')

    <title>Leatherhead - {{$category->name}}</title>
@endsection


@section('content')

    <div class="details-wrapper">
        {!! $category->description !!}
    </div>
    <div class="product-wrapper">

        <div class="container content-container">
                <div class="row  product-row justify-content-md-center justify-content-sm-center justify-content-xs-center">


                    @foreach($category->subcategories as $subcategory)

                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12 product">

                            <a href="{{route('subcategory.details',$subcategory->id)}}"><img src="{{$subcategory->image->file}}" alt="" class="product-image"></a>
                            <a href="{{route('subcategory.details',$subcategory->id)}}" class="product-title">{{$subcategory->name}}</a>
                        </div>


                    @endforeach

                </div>

        </div>


    </div>

@endsection