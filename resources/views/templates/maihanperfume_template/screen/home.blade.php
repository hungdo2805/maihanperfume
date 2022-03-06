@php
/*
$layout_page = home
*/ 
$slider_list = $modelBanner->start()->setType('background')->getData()
@endphp
@extends($sc_templatePath.'.layout')
@php
  $productsNew = $modelProduct->start()->getProductLatest()->setlimit(sc_config('product_top'))->getData();
  $news = $modelNews->start()->setlimit(sc_config('item_top'))->getData();
  $productsBestSell = $modelProduct->start()->getProductBestSell()->setlimit(sc_config('product_top'))->getData();
 

 $product1=$modelProduct->start()->getDetail(12);




 // dd( $productsBestSell);
   // dd($product1);
@endphp

@section('menu1')   active  @endsection

@section('content')
              <!--slider area start-->
              <div class="slider_area">
                <div class="slider_active owl-carousel">
                    @if (!empty($slider_list))
                        @foreach ($slider_list as $key => $slider)
                            <div class="single_slider" style="background: url({{ asset($slider->image) }}) center center / cover no-repeat scroll;">
                                <div class="container-fluid p-0">
                                    <div class="row align-items-center">
                                        <div class="col-12">
                                            <div class="slider_content">
                                                {!! sc_html_render($slider->html) !!}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif 
                </div>
            </div> 
            <!--slider area end--> 
            <!--new product start--> 
            <div class="new_product_area product_two">
                <div class="container-fluid">
                    <div class="section_title">
                        <div class="row">
                           <div class="col-12">
                               <h2>Sản phẩm mới nhất</h2>
                           </div> 
                        </div>
                    </div>    
                    <div class="row">
                        <div class="product_active_two owl-carousel">
                            @if (!empty($productsNew))
                                
                            
                                @foreach ($productsNew as $key => $productNew)
                                    
                            
                                    <div class="col-lg-3">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                            <a href="{{ $productNew->getUrl() }}"><img src="{{ asset($productNew->getThumb()) }}" alt=""></a> 
                                                <div class="product_action">
                                                <ul>
                                                    <li><a onClick="addToCartAjax('{{ $productNew->id }}','default','{{ $productNew->store_id }}')" style="cursor: pointer;" >+Thêm giỏ hàng</a></li>
                                                 
                                                    <li><a href="{{ $productNew->getUrl() }}" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                                </ul>
                                                </div>
                                                <div class="sale_percent">
                                                    
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="product_name">
                                                    <h2><a href="{{ $productNew->getUrl() }}">{{ $productNew->name }} </a></h2>
                                                </div>
                                                <div class="product_meta">  
                                                    <div class="product_price">
                                                        <span class="current_price">{{ number_format( $productNew->getFinalPrice()) }} VND</span>
                                                    </div>
                                                </div>    
                                            </div>
                                            
                                        </div>
                                    </div>
                                @endforeach    

                            @endif        
                        </div>
                    </div>
                </div>    
            </div> 
            <!--new product start-->
            
            <!--countdown section start--> 
            
                
            @if (!empty($product1))
                
            
            <div class="countdown_product countdown_two">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-12">
                            <div class="product_thumb countdown">
                                <a href="{{ $product1->getUrl() }}"><img class="sale-product" src="{{ asset($product1->getThumb()) }}" alt=""></a>
                            
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="countdown_product_content">
                                <div class="product_name">
                                    <h2><a href="{{ $product1->getUrl() }}">{{ $product1->name }} </a></h2>
                                </div>
                                <div class="product_ratting">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product_price" style="font-weight: bold">
                                    {{ number_format( $product1->getFinalPrice()) }} VND
                                </div>
                                <div class="product_desc">
                                    <p>{{ $product1->description }}</p>
                                </div>
                                <div class="product_timing">
                                    <div data-countdown="2022/3/9"></div>
                                </div>
                                <div class="product_button">
                                    <a  onClick="addToCartAjax('{{ $product1->id }}','default','{{ $product1->store_id }}')" style="cursor: pointer;" >Thêm giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--countdown section end-->
            @endif
                
            
            
            <!--Trending product start--> 
            <div class="new_product_area product_two">
                <div class="container-fluid">
                    <div class="section_title">
                        <div class="row">
                           <div class="col-12">
                               <h2>Sản phẩm bán chạy</h2>
                           </div> 
                        </div>
                    </div>    
                    <div class="row">
                        <div class="product_active_two owl-carousel">
                           
                            @if (!empty($productsBestSell))
                                
                            
                            @foreach ($productsBestSell as $key => $productNew)
                                
                        
                                <div class="col-lg-3">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                        <a href="{{ $productNew->getUrl() }}"><img src="{{ asset($productNew->getThumb()) }}" alt=""></a> 
                                            <div class="product_action">
                                            <ul>
                                                <li><a onClick="addToCartAjax('{{ $productNew->id }}','default','{{ $productNew->store_id }}')" style="cursor: pointer;" >+Thêm giỏ hàng</a></li>
                                             
                                                <li><a href="{{ $productNew->getUrl() }}" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                            </ul>
                                            </div>
                                            <div class="sale_percent">
                                                
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <div class="product_name">
                                                <h2><a href="{{ $productNew->getUrl() }}">{{ $productNew->name }} </a></h2>
                                            </div>
                                            <div class="product_meta">  
                                                <div class="product_price">
                                                    <span class="current_price">{{ number_format( $productNew->getFinalPrice()) }} VND</span>
                                                </div>
                                            </div>    
                                        </div>
                                        
                                    </div>
                                </div>
                            @endforeach    

                        @endif     
                           
                        </div>
                    </div>
                </div>    
            </div> 
            <!--Trending product start-->

            <!--newsletter area start-->
            <div class="newsletter_area" style="background:#FFD2D9">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="newsletter_content">
                                <h2>Đăng kí để nhận những ưu đãi mới nhất từ shop<br>Sales đến 70%!</h2>
                                <p>Đăng ký danh sách gửi thư Beta để nhận thông tin cập nhật về hàng mới, ưu đãi đặc biệt và thông tin giảm giá khác.</p>
                                <form action="{{ sc_route('subscribe') }}" method="POST">
                                   @csrf
                                    <input  placeholder="Email của bạn" type="text"  id="subscribe-form-2-email" type="email" name="subscribe_email" required>
                                    <button type="submit">Đăng kí</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
            <!--newsletter area end-->
            
            <!--blog area start-->
            <div class="blog_area">
                <div class="container">
                    <div class="section_title">
                        <div class="row">
                           <div class="col-12">
                               <h2>Bài viết mới nhất</h2>
                           </div> 
                        </div>
                    </div> 
                    <div class="row">
                        <div class="blog_active owl-carousel">
                           
                           
                           @if (!empty($news))

                                @foreach ($news as $blog)
                               
                          
                                    <div class="col-lg-4">
                                        <div class="single_blog">
                                            <div class="blog_thumb">
                                                <a href="{{ $blog->getUrl() }}"><img src="{{ asset($blog->getThumb()) }}" alt=""></a>
                                            </div>
                                            <div class="blog_content">
                                                <div class="blog_title">
                                                    <h3><a href="{{ $blog->getUrl() }}">{{ $blog->title }}</a></h3>
                                                </div>
                                                <div class="blog_meta">
                                                    <i class="fa-calendar fa"></i>
                                                    <span class="post_date">{{ date_format($blog->created_at,"d/m/Y") }} </span>
                                                </div>
                                                <div class="blog_desc">
                                                    <p>{{ $blog->description }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                           @endif
                         
                          
                        </div>
                    </div>
                </div>
            </div>
            <!--blog area end-->

@endsection


