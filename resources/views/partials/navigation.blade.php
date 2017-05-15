
<nav class="navbar navbar-default" id="category-bar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2" >
        <div class="category-bar-wrapper">
    <div class="col-md-10 col-md-offset-1">
            <ul class="nav navbar-nav">
                @foreach($categories as $category)
                    <li class="dropdown">
                        <a href="{{route('category.details',$category->id)}}" class="dropdown-toggle" >{{$category->name}}</a>
                        @if(count($category->subcategories) > 0)
                        <ul class="dropdown-menu">

                                @foreach($category->subcategories as $subcategory)

                                    <li><a href="{{route('subcategory.details',$subcategory->id)}}">{{$subcategory->name}}</a></li>

                                @endforeach

                        </ul>
                        @endif
                    </li>

                @endforeach

                    @if(Auth::check())

                        @if(Auth::user()->isAdmin())
                            <li class="dropdown">
                                <a href="{{url('/admin/')}}" class="dropdown-toggle" style="color:darkred;">Admin Panel</a>
                            </li>
                        @endif
                    @endif
            </ul>
            </div>
        </div>
        </div>
    </div>
</nav>
