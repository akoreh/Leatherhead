@extends('layouts.admin.master')



@section('content')




    <h1>Edit Category</h1>
<div class="row">
    <div class="col-md-8">
        {!! Form::model($category,['method'=>'PATCH','action'=>['AdminCategoriesController@update',$category->id]]) !!}


        <div class="form-group">

            {!! Form::label('id','ID:') !!}
            {!! Form::text('id',null,['class'=>'form-control']) !!}

        </div>

        <div class="form-group">

            {!! Form::label('name','Name:') !!}
            {!! Form::text('name',null,['class'=>'form-control']) !!}

        </div>

        <div class="form-group">

            {!! Form::label('description','Description:') !!}
            {!! Form::textarea('description',null,['class'=>'form-control']) !!}

        </div>


        <div class="form-group">

            {!! Form::submit('Update Category',['class'=>'btn btn-primary']) !!}
        </div>
        <script>$('#description').html(tinymce.get('description').getContent());</script>


        {!! Form::close() !!}

        {!! Form::open(['method'=>'DELETE','action'=>['AdminCategoriesController@destroy',$category->id]]) !!}


        <div class="form-group">

            {!! Form::submit('Delete Category',['class'=>'btn btn-danger']) !!}
        </div>



        {!! Form::close() !!}
    </div>
</div>

@endsection