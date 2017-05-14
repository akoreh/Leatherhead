@extends('layouts.admin.master')


@section('content')


    <h1>All Subcategories <span style="font-size:0.6em;">({{count($subcategories)}})</span> </h1>

    <table class="table table-bordered">

        <thead>

        <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Name</th>
            <th>Category</th>
            <th>Created</th>
            <th>Updated</th>

        </tr>

        </thead>
        <tbody>

            @if($subcategories)

                @foreach($subcategories as $subcategory)

                    <tr>
                        <td>{{$subcategory->id}}</td>
                        <td><img height=80px width=80px src="{{$subcategory->image->file}}" alt=""></td>
                        <td>{{$subcategory->name}} <a href="{{route('admin.subcategories.edit',$subcategory->id)}}">(Edit)</a></td>

                            @if(!empty($subcategory->category->name))
                            <td> {{$subcategory->category->name}}</td>
                                @else
                                <td>No Category</td>
                            @endif
                        <td>{{$subcategory->created_at->diffForHumans()}}</td>
                        <td>{{$subcategory->updated_at->diffForHumans()}}</td>

                    </tr>


                @endforeach

            @else

                {{"No products in the database!"}}


            @endif




        </tbody>


    </table>


@stop