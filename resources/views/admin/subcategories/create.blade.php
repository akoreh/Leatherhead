@extends('layouts.admin.master')



@section('content')




    <h1>Create Subcategory</h1>
    <div class="row">
        <div class="col-md-8">
            {!! Form::open(['method'=>'POST','action'=>'AdminSubcategoriesController@store','files'=>'true']) !!}


            <div class="form-group">

                {!! Form::label('name','Name:') !!}
                {!! Form::text('name',null,['class'=>'form-control']) !!}

            </div>
            <div class="form-group">
                {!! Form::label('category','Category:') !!}

                <select name="category" id="category" class="form-control">


                    @foreach($categories as $category)

                        <option value="{{$category->id}}">{{$category->name}}</option>

                    @endforeach


                </select>

            </div>
            <div class="form-group">

                {!! Form::label('description','Description:') !!}
                {!! Form::textarea('description',null,['class'=>'form-control']) !!}

            </div>




             <div class="form-group">

                     {!! Form::label('file','Image:') !!}
                     {!! Form::file('file',null,['class'=>'form-control']) !!}

              </div>

            <div class="form-group">

                {!! Form::submit('Create Subcategory',['class'=>'btn btn-primary']) !!}
            </div>
            <script>$('#description').html(tinymce.get('description').getContent());</script>


            {!! Form::close() !!}
        </div>
    </div>
    @include('errors.requestError')
@endsection