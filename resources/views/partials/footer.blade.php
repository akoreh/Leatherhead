<div class="footer-wrapper">
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-3 col-sm-3 col-lg-3 com-xs-12 footer-left-col">
                <ul>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="">Shop</a></li>
                    <li><a href="">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="col-md-9 col-sm-9 col-lg-9 col-xs-12">
                <h3>Subscribe to our newsletter!</h3>
                {!! Form::open(['method'=>'POST','action'=>'NewsletterController@store','class'=>'newsletter-form'])!!}

                <div class="form-group">

                    {!! Form::label('email','Email:') !!}
                    {!! Form::email('email',null,['class'=>'form-control','required'=>'required']) !!}

                </div>
                <div class="form-group">
                    {!! Form::submit('Submit',['class'=>'btn btn-primary']) !!}

                </div>

                {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>