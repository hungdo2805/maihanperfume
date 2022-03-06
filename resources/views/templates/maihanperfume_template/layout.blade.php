<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>{{$title??sc_store('title')}}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="./assets/img/favicon.png">
		
		<!-- all css here -->
      


    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/bundle.css')}}">
    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/plugins.css')}}">
    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/responsive.css')}}">
    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/slick.css')}}">
    <link rel="stylesheet" href="{{ asset($sc_templateFile.'/assets/css/slick-theme.css')}}">
    @stack('styles')

   

    </head>
    <body>
            <!-- Add your site or application content here -->
            
            <!--header area start-->
            @include($sc_templatePath.'.block_header')
            <!--header area end-->
             
            @yield('content')
                      
            <!--footer area start-->
            @include($sc_templatePath.'.block_footer')
            <!--footer area end-->
            
        
         
            @include($sc_templatePath.'.common.js')
		<!-- all js here -->

        <script src="{{ asset($sc_templateFile.'/assets/js/vendor/jquery-3.4.1.min.js')}}"></script>
        <script src="{{ asset($sc_templateFile.'/assets/js/vendor/modernizr-3.7.1.min.js')}}"></script>
      
        <script src="{{ asset($sc_templateFile.'/assets/js/slick.min.js')}}"></script>
        <script src="{{ asset($sc_templateFile.'/assets/js/plugins.js')}}"></script>
        <script src="{{ asset($sc_templateFile.'/assets/js/main.js')}}"></script>

        {{-- <script src="{{ asset($sc_templateFile.'/assets/js/core.min.js')}}"></script>
        <script src="{{ asset($sc_templateFile.'/assets/js/script.js')}}"></script> --}}

        @stack('scripts')
    </body>
</html>
