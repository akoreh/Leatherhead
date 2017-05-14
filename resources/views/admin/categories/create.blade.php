@extends('layouts.admin.master')



@section('content')




    <h1>Create Category</h1>
    <div class="row">
        <div class="col-md-8">
            {!! Form::open(['method'=>'POST','action'=>'AdminCategoriesController@store']) !!}


            <div class="form-group">

                {!! Form::label('name','Name:') !!}
                {!! Form::text('name',null,['class'=>'form-control']) !!}

            </div>

            <div class="form-group">

                {!! Form::label('description','Description:') !!}
                {!! Form::textarea('description',null,['class'=>'form-control']) !!}

            </div>


            <div class="form-group">

                {!! Form::submit('Create Category',['class'=>'btn btn-primary']) !!}
            </div>
            <script>$('#description').html(tinymce.get('description').getContent());</script>


            {!! Form::close() !!}
        </div>
    </div>

   @include('errors.requestError')
@endsection