@extends('layouts.admin.master')


@section('content')


    <h1>All Categories <span style="font-size:0.6em;">({{count($categories)}})</span> </h1>

    <table class="table table-bordered">

        <thead>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Subcategories</th>
            <th>Created</th>
            <th>Updated</th>

        </tr>

        </thead>
        <tbody>

            @if($categories)

                @foreach($categories as $category)

                    <tr>
                        <td>{{$category->id}}</td>
                        <td>{{$category->name}} <a href="{{route('admin.categories.edit',$category->id)}}">(Edit)</a></td>
                        <td>
                            <ul>
                                @foreach($category->subcategories as $subcategory)
                                    <li>{{$subcategory->name}} <a href="{{route('admin.subcategories.edit',$subcategory->id)}}">(Edit)</a></li>
                                @endforeach
                            </ul>
                        </td>
                        <td>{{$category->created_at->diffForHumans()}}</td>
                        <td>{{$category->updated_at->diffForHumans()}}</td>

                    </tr>


                @endforeach

            @else

                {{"No products in the database!"}}


            @endif




        </tbody>


    </table>


@stop