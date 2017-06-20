<?php

namespace App\Http\Controllers;

use App\Newsletter;
use Illuminate\Http\Request;

use App\Http\Requests;

class NewsletterController extends Controller
{

    public function store(Request $request)
    {
        $input=$request->all();


        $email=Newsletter::where('email',$request->email)->get();

        if(count($email)>0){
            $errorMessage = "You are already subscribed to our newsletter!";
            return redirect()->route('index')->withErrors(compact('errorMessage'));
        }else{

            Newsletter::create($input);
        }

        $successMessage = "Thank you for subscribing to our newsletter!";

        return redirect()->route('index')->withErrors(compact('successMessage'));
    }
}
