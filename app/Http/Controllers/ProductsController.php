<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Mockery\Exception;
use Stripe\Stripe;
use App\Cart;
use App\Product;
use App\Order;
use Illuminate\Http\Request;

use App\Http\Requests;

use Illuminate\Support\Facades\Session;


class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product=Product::find($id);

        return view('products.details',compact('product'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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

    public function getAddToCart(Request $request,$id){

        $product=Product::find($id);

        $oldCart= session()->has('cart') ? session()->get('cart') : null;

        $cart= new Cart($oldCart);

        $cart->add($product, $id);

        $request->session()->put('cart',$cart);
        return redirect()->route('index');

    }

    public function getReduceByOne($id){

        $oldCart= session()->has('cart') ? session()->get('cart') : null;

        $cart= new Cart($oldCart);

        $cart->reduceByOne($id);

        if(count($cart->items) > 0){
            session()->put('cart',$cart);
        }else{
            session()->forget('cart');
        }


        return redirect()->route('shop.cart');

    }

    public function getRemoveItem($id){

        $oldCart= session()->has('cart') ? session()->get('cart') : null;

        $cart= new Cart($oldCart);

        $cart->removeItem($id);

        if(count($cart->items) > 0){
            session()->put('cart',$cart);
        }else{
            session()->forget('cart');
        }


        return redirect()->route('shop.cart');
    }

    public function getCart(){

        if(!session()->has('cart')){

            return view('shop.cart');

        }

        $oldCart=session()->get('cart');
        $cart = new Cart($oldCart);

        return view('shop.cart',['products'=>$cart->items,'totalPrice'=>$cart->totalPrice]);

    }

    public function getCheckout(){

        if(!session()->has('cart')){

            return view('shop.cart');

        }

        $oldCart = session()->get('cart');

        $cart = new Cart($oldCart);

        $total = $cart->totalPrice;

        return view('shop.checkout',['totalPrice'=>$total]);

    }

    public function postCheckout(Request $request){

        if(!session()->has('cart')){

            return redirect()->route('shop.cart');

        }

        $oldCart = session()->get('cart');

        $cart = new Cart($oldCart);

        Stripe::setApiKey('sk_test_ucDdDK3nJ4X23CbL5HGzj1rM');

        try{

          $charge=\Stripe\Charge::create(array(
                "amount" => $cart->totalPrice * 100,
                "currency" => "usd",
                "source" => $request->input('stripeToken'),
                "description" => "Charge for leatherhead.dev"
            ));

            //SAVING ORDER

            $order=new Order();

            $order->cart = serialize($cart);
            $order->number=time()*time()-time()/2;
            $order->address = $request->input('address');
            $order->payment_id = $charge->id;

            Auth::user()->orders()->save($order);

        }catch(Exception $e){
            return redirect()->route('checkout')->with('error',$e->getMessage());
        }


        session()->forget('cart');

        $successMessage = "Purchase was successful!";
        return redirect()->route('index')->withErrors(compact('successMessage'));
    }

}
