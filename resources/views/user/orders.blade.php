@extends('layouts.master')


@section('title')

    <title>Leatherhead - My Orders</title>
@endsection


@section('content')


    <h2>My Orders</h2>
@foreach($orders as $order)
    <div class="panel panel-default">
        <div class="panel-body">
            <ul class="list-group">
                @foreach($order->cart->items as $item)
                <li class="list-group-item">
                    {{$item['item']['name']}} | {{$item['qty']}} Units
                    <span class="badge">${{ $item['price'] }}.00</span>
                </li>
                    @endforeach
            </ul>
        </div>
        <div class="panel-footer" style="text-align: right">
            <strong>Total Price: ${{$order->cart->totalPrice}}.00</strong>
        </div>
    </div>
@endforeach
@endsection