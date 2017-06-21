@extends('layouts.admin.master')



@section('content')




    <h1>Edit Product</h1>
<div class="row">
    <div class="col-md-8">
        {!! Form::model($product,['method'=>'PATCH','action'=>['AdminProductsController@update',$product->id],'files'=>'true']) !!}


        <div class="form-group">

            {!! Form::label('name','Name:') !!}
            {!! Form::text('name',null,['class'=>'form-control']) !!}

        </div>

        <div class="form-group">

            {!! Form::label('category','Category:') !!}

            <select name="category" id="category" class="form-control">
                <option value="0">Select a Category</option>
                @foreach($categories as $category)

                    <option value="{{$category->id}}">{{$category->name}}</option>


                @endforeach

            </select>

        </div>


        <div class="form-group">

            {!! Form::label('subcategory','Subcategory:') !!}

            <select name="subcategory_id" id="subcategory" class="form-control">



            </select>

        </div>

        <div class="form-group">

            {!! Form::label('description','Description:') !!}
            {!! Form::textarea('description',null,['class'=>'form-control']) !!}

        </div>

         <div class="form-group">

                 {!! Form::label('price','Price:') !!}
                 {!! Form::text('price',null,['class'=>'form-control']) !!}

          </div>

         <div class="form-group">

                 {!! Form::label('stock','Stock:') !!}
                 {!! Form::text('stock',null,['class'=>'form-control']) !!}

          </div>

         <div class="form-group">

                 {!! Form::label('file','Image:') !!}
                 {!! Form::file('file',null,['class'=>'form-control']) !!}

          </div>

         <div class="form-group">

                 {!! Form::label('keywords','Keywords:') !!}
                 {!! Form::text('keywords',null,['class'=>'form-control']) !!}

          </div>

         <div class="form-group">

                 {!! Form::label('homepage','Display on Homepage:') !!}
                 {!! Form::checkbox('homepage',1,['class'=>'form-control']) !!}

          </div>

        <div class="form-group">

            {!! Form::submit('Update Product',['class'=>'btn btn-primary']) !!}
        </div>
        <script>$('#description').html(tinymce.get('description').getContent());</script>

        <div class="form-group">
          <a class="btn btn-danger" href="{{route('product.delete',$product->id)}}" >Delete</a>
        </div>
        {!! Form::close() !!}
    </div>
</div>

    <script>

        $('#category').on('change',function(e){

            var cat_id=e.target.value;


            $.get('/jquery-subcat?cat_id='+cat_id,function(data){
                $('#subcategory').empty();
                $.each(data,function(index,subcatObj){
                    $('#subcategory').append('<option value="'+subcatObj.id+'">'+subcatObj.name+'</option>');
                });
            });

        });


    </script>

@endsection
