<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    @yield('title')


    <link href="{{asset('css/app.css')}}" rel="stylesheet">

    <link href="{{asset('css/libs.css')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Asap:400,700" rel="stylesheet">
</head>

<body>
<div id="main_wrapper">

    <div class="top_bar_wrapper">

        <nav class="navbar navbar-default navbar-custom">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        @if (Auth::guest())
                            <li><a href="{{ url('/login') }}" class="navbar_text">Login</a></li>

                            <li><a href="{{ url('/register') }}" class="navbar_text">Create an account</a></li>

                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle navbar_text navbar_logged_text" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->first_name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="{{route('user.orders')}}">View Orders</a></li>
                                    <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                                </ul>
                            </li>
                        @endif
                            <li><a href="{{route('shop.cart')}}"><span style="font-family: 'FontAwesome';">&#xf07a;</span> Cart <span>({{session()->has('cart') ? session()->get('cart')->totalQuantity : '0'}})</span></a></li>
                    </ul>


                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>


    </div>

    <div class="row">
        <div class="col-md-12">
            <div id="logo-wrapper">
                <a href="{{url('/')}}"><img src="/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>


 @include('partials.navigation')

    <div class="content-wrapper">
        <div class="container content-container">
            <div class="row">
                <div class="col-md-12">
                    @yield('content')
                </div>
            </div>
        </div>

    </div>

    @include('partials.footer')
</div>

<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="{{asset('js/libs.js')}}"></script>

@yield('footer')
<script>
    $('ul.nav li.dropdown').hover(function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(300);
    }, function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(300);
    });
</script>


</body>

</html>