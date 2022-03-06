
<header class="header_area">
  <div class="container-fluid p-0">  
      <!--header bottom start--> 
      <div class="header_bottom sticky-header">
          <div class="row align-items-center">
              <div class="col-lg-2">
                  <div class="logo">
                      <a href="{{ sc_route('home') }}" style="font-size: 20px;font-weight: bold;color: #000;">{{ sc_store('title') }}</a>
                  </div>
              </div>
              <div class="col-lg-6">
                  <div class="main_menu_inner">
                      <div class="main_menu d-none d-lg-block"> 
                          <ul>
                              <li class="@yield('menu1')"><a href="{{ sc_route('home') }}">Trang chủ</a></li>
                              <li  class="@yield('menu2')"><a href="{{ url('about.html') }}">Giới thiệu</a></li>
                              <li  class="@yield('menu3')"><a href="{{ sc_route('shop') }}">Cửa hàng</a></li>
                              <li  class="@yield('menu4')"><a href="{{ sc_route('news') }}">Tin tức</a></li>
                              <li  class="@yield('menu5')"><a href="{{ sc_route('contact') }}">Liên hệ</a></li>

                             
                          </ul>

                      </div>
                      <div class="mobile-menu d-lg-none">
                          <nav>  
                              <ul>
                                <li class="active"><a href="{{ sc_route('home') }}">Trang chủ</a></li>
                                <li><a href="{{ url('about.html') }}">Giới thiệu</a></li>
                                <li><a href="{{ sc_route('shop') }}">Cửa hàng</a></li>
                                <li><a href="{{ sc_route('news') }}">Tin tức</a></li>
                                <li><a href="{{ sc_route('contact') }}">Liên hệ</a></li>

                                
                              </ul>
                          </nav>      
                      </div>
                  </div>    
              </div>
              <div class="col-lg-4">
                  <div class="search_area">
                      <form  action="{{ sc_route('search') }}" method="GET">
                          <input placeholder="Tìm kiếm sản phẩm..." type="text" name="keyword" required>
                          <button type="submit"><i class="fa fa-search"></i></button>
                      </form>
                      <div class="shopping_cart">
                          <a href="{{ sc_route('cart') }}"><i class="fa fa-shopping-bag"></i><span class="sc-cart"> {{ Cart::instance('default')->count() }}</span><span>sản phẩm</span></a>
                      </div>  
                  </div>
              </div>
          </div>
      </div>  
      <!--header bottom end-->   
  </div>  
</header>
