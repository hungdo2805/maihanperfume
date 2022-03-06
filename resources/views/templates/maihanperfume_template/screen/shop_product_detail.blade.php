@php


$IdCate=$product->categories->first()->id;

//$spTuongTu= $modelProduct->start()->getProductToCategory($IdCate)->setlimit(10)->getData();  

//dd($product);
@endphp

@extends($sc_templatePath.'.layout')

{{-- block_main --}}
@section('content')
@php
    $countItem = 0
@endphp

      {{-- @if ($productRelation->count())

      <section class="section section-sm section-last bg-default">
        <div class="container">
          <h4 class="font-weight-sbold">Featured Products</h4>
          <div class="row row-lg row-30 row-lg-50 justify-content-center">
            @foreach ($productRelation as $key => $product_rel)
            <div class="col-sm-6 col-md-5 col-lg-3">
                <article class="product wow fadeInRight">
                    <div class="product-body">
                      <div class="product-figure">
                          <a href="{{ $product_rel->getUrl() }}">
                          <img src="{{ asset($product_rel->getThumb()) }}" alt="{{ $product_rel->name }}"/>
                          </a>
                      </div>
                      <h5 class="product-title"><a href="{{ $product_rel->getUrl() }}">{{ $product_rel->name }}</a></h5>
                      @if ($product_rel->allowSale())
                      <a onClick="addToCartAjax('{{ $product_rel->id }}','default','{{ $product_rel->store_id }}')" class="button button-lg button-secondary button-zakaria add-to-cart-list">
                        <i class="fa fa-cart-plus"></i> {{trans('front.add_to_cart')}}</a>
                      @endif
            
                      {!! $product_rel->showPrice() !!}
                    </div>
                    
                    @if ($product_rel->price != $product_rel->getFinalPrice() && $product_rel->kind !=SC_PRODUCT_GROUP)
                    <span><img class="product-badge new" src="{{ asset($sc_templateFile.'/images/home/sale.png') }}" class="new" alt="" /></span>
                    @elseif($product_rel->kind == SC_PRODUCT_BUILD)
                    <span><img class="product-badge new" src="{{ asset($sc_templateFile.'/images/home/bundle.png') }}" class="new" alt="" /></span>
                    @elseif($product_rel->kind == SC_PRODUCT_GROUP)
                    <span><img class="product-badge new" src="{{ asset($sc_templateFile.'/images/home/group.png') }}" class="new" alt="" /></span>
                    @endif
                    <div class="product-button-wrap">
                      <div class="product-button">
                          <a class="button button-secondary button-zakaria" onClick="addToCartAjax('{{ $product_rel->id }}','wishlist','{{ $product_rel->store_id }}')">
                              <i class="fas fa-heart"></i>
                          </a>
                      </div>
                      <div class="product-button">
                          <a class="button button-primary button-zakaria" onClick="addToCartAjax('{{ $product_rel->id }}','compare','{{ $product_rel->store_id }}')">
                              <i class="fa fa-exchange"></i>
                          </a>
                      </div>
                    </div>
                  </article>
            </div>
            @endforeach
          </div>
        </div>
      </section>
      @endif --}}

      {{-- ================================================== ================================================--}}
       <!--breadcrumbs area start-->
    <div class="breadcrumb-section product_section">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{ route('home') }}">Trang chủ</a></li>
                            <li class="active">Chi tiết sản phẩm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>    
    </div>
    <!--breadcrumbs area end-->
    
     <!--product details start-->
    <div class="product_details">
        <div class="container">
            <div class="row">
              {{-- anh --}}
              <div class="col-lg-5 col-md-5 col-12">
                <div class="slick-vertical slick-product">
                  <!-- Slick Carousel-->
                  <div class="slick-slider carousel-parent" id="carousel-parent" data-items="1" data-swipe="true" data-child="#child-carousel" data-for="#child-carousel">
                    <div class="item">
                      <div class="slick-product-figure"><img src="{{ asset($product->getImage()) }}" alt="" width="530" height="480"/>
                      </div>
                    </div>
                    @if ($product->images->count())
                    @php
                      $countItem = 1 + $product->images->count();
                    @endphp
                    @foreach ($product->images as $key=>$image)
                    <div class="item">
                      <div class="slick-product-figure"><img src="{{ asset($image->getImage()) }}" alt="" width="530" height="480"/>
                      </div>
                    </div>
                    @endforeach
                    @endif
                  </div>
  
                  @if ($countItem > 1)
                  <div class="slick-slider child-carousel slick-nav-1" id="child-carousel" data-arrows="true" data-items="{{ $countItem }}" data-sm-items="{{ $countItem }}" data-md-items="{{ $countItem }}" data-lg-items="{{ $countItem }}" data-xl-items="{{ $countItem }}" data-xxl-items="{{ $countItem }}" data-md-vertical="true" data-for="#carousel-parent">
                      <div class="item">
                        <div class="slick-product-figure image-small"><img src="{{ asset($product->getImage()) }}" alt="" width="530" height="480"/>
                        </div>
                      </div>
                      @foreach ($product->images as $key=>$image)
                      <div class="item">
                        <div class="slick-product-figure image-small"><img src="{{ asset($image->getThumb()) }}" alt="" width="10" height="10"/>
                        </div>
                      </div>
                      @endforeach
                    </div>
                  @endif
  
                </div>
              </div>

                {{-- chi tiet --}}
                <div class="col-lg-7 col-md-7 col-12">
                    <div class="product_d_right" style="text-align: left;">
                        <div class="product_nav">
                           <h1> {{ $product->name }} </h1>
                        </div>
                        <div class="product_desc">
                          {!! sc_html_render($product->description) !!}
                        </div>
                        <div class="product_price">
                            <span class="current_price" style="color: #ee7be3"> {{ number_format($product->getFinalPrice()) }}   đ </span>                      
                        </div>  

                      
                        
                      
                         <div class="product_color size">
                                    {{-- Show attribute --}}
                                @if (sc_config('product_property'))
                                <div id="product-detail-attr">
                                    @if ($product->attributes())
                                    {!! $product->renderAttributeDetails() !!}
                                    @endif
                                </div>
                                @endif
                                {{--// Show attribute --}}
                         </div>
                        <div class="box_quantity">
                           
                            <form  action="{{ sc_route('cart.add') }}" method="POST">
                                <label>Số lượng</label>
                                @csrf
                                <div>
                                    <input type="hidden" name="product_id" id="product-detail-id" value="{{ $product->id }}" />
                                    <input type="hidden" name="storeId" id="product-detail-storeId" value="{{ $product->store_id }}" />
                                    <input  name="qty" type="number" data-zeros="true" value="1" min="1" max="100">
                                </div>                              
                                <button  type="submit">Mua ngay</button>
                            
                            </form>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>    
    </div>
    <!--product details end-->
      <!--product info start-->
      <div class="product_d_info">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="product_d_inner">   
                        <div class="product_info_button">    
                            <ul class="nav" role="tablist">
                                <li >
                                    <a class="active" data-bs-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Thông tin chi tiết</a>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="info" role="tabpanel" >
                                <div class="product_info_content" >
                                      {!! sc_html_render($product->content) !!}
                                </div>    
                            </div>

                           
                        </div>
                    </div>     
                </div>
            </div>
        </div>    
    </div>  
    <!--product info end-->


    
     <!--brand area start-->
    <div class="brand_area product_brand">
        <div class="container">
            <div class="row">
                <div class="brand_active owl-carousel">
                    <div class="col-lg-3">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand1.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand2.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand3.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand4.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand5.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="single_brand">
                            <a href="#"><img src="assets/img/brand/brand3.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--brand area end-->





<!--/product-details-->
@endsection
{{-- block_main --}}





@push('styles')
<link rel="stylesheet" href="{{ asset($sc_templateFile.'/css/fonts.css')}}"/>
<link rel="stylesheet" href="{{ asset($sc_templateFile.'/css/style.css')}}">
@endpush

@push('scripts')

    <script src="{{ asset($sc_templateFile.'/assets/js/core.min.js')}}"></script>
    <script src="{{ asset($sc_templateFile.'/assets/js/script.js')}}"></script>
    <script src="{{ asset($sc_templateFile.'/assets/js/bootstrap.min.js')}}"></script>

    
@endpush
