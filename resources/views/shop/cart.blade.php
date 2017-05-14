@extends('layouts.master')


@section('title')

    <title>Leatherhead - Cart</title>
@endsection


@section('content')

    @if(session()->has('cart'))

        <div class="row">
            <div class="col-sm-10 col-md-10 cold-md-offset-1 col-sm-offset-1">
                <ul class="list-group">
                    @foreach($products as $product)

                        <li class="list-group-item">
                            <span class="badge">{{ $product['qty'] }}</span>
                            <strong>{{ $product['item']['name'] }}</strong>
                            <span class="label label-success">${{ $product['price'] }}.00</span>
                            <div class="btn-group">
                                <button data-toggle="dropdown" type="button" class="btn btn-primary btn-xs dropdown-toggle">
                                        Action <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="{{ route('cart.reduceByOne',$product['item']['id']) }}">Reduce by 1</a></li>
                                    <li><a href="{{ route('cart.remove',$product['item']['id']) }}">Remove All</a></li>
                                </ul>
                            </div>
                        </li>

                    @endforeach
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-10 col-md-10 cold-md-offset-1 col-sm-offset-1 "  style="text-align: right">
               <strong>Total: ${{ $totalPrice }}.00</strong>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-sm-10 col-md-10 cold-md-offset-1 col-sm-offset-1" style="text-align: right">
                <a href="{{ route('shop.checkout') }}" type="button" class="btn btn-success">Checkout</a>
            </div>
        </div>

        @else

        <div class="row">
            <div class="col-sm-10 col-md-10 cold-md-offset-1 col-sm-offset-1">
                <h2>No Items in Cart!</h2>
            </div>
        </div>


    @endif


@endsection