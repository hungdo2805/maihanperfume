@php
/*
$layout_page = shop_home
**Variables:**
- $products: paginate
Use paginate: $products->appends(request()->except(['page','_token']))->links()
*/ 

    $cate=$modelCategory->start()->setlimit(12)->getData();
   // dd($cate);
@endphp



@extends($sc_templatePath.'.layout')

@section('menu3')   active  @endsection

    {{-- block_main_content_center --}}
    @section('content')
    <div class="breadcrumb-section">
      <div class="container">   
          <div class="row">
              <div class="col-12">
                  <div class="breadcrumb_content text-left">
                      <ul>
                          <li><a href="{{ sc_route('home') }}">Trang chủ</a></li>
                          <li class="active">Cửa hàng</li>
                      </ul>
                  </div>
              </div>
          </div>
      </div>    
  </div>
  <!--breadcrumbs area end-->
      <div class="container">
        <div class="row shop_reverse">
                <div class="col-lg-3 col-md-12 col-12" style="margin-bottom: 15px;">
                  <div class="sidebar_widget text-left">
                      <div class="widget_list categories">
                          <h2>Danh mục sản phẩm</h2>
                          <ul>
                              @foreach ($cate as $key=>$category)
                                 <li><a href="{{ $category->getUrl() }}"><i class="fa fa-angle-right"></i>{{ $category->title }}</a> <span></span></li>
                              @endforeach

                          </ul>
                      </div>
                      <div class="widget_list widget_banner">
                        <img src="{{ asset($sc_templateFile.'/assets/img/banner/banner26.jpg')}}" alt="">
                      </div>
                  </div>
                </div>
                <div class="col-lg-9 col-md-9 col-12"> 
                  {{-- Sort filter --}}
                  <div class="product-top-panel group-md">
                    <p class="product-top-panel-title">
                      {!! trans('front.result_item', ['item_from' => $products->firstItem(), 'item_to'=> $products->lastItem(), 'item_total'=> $products->total()  ]) !!}
                    </p>
                        <form action="" method="GET" id="filter_sort">
                          @php
                          $queries = request()->except(['filter_sort','page']);
                          @endphp
                          @foreach ($queries as $key => $query)
                          <input type="hidden" name="{{ $key }}" value="{{ $query }}">
                          @endforeach
                          
                          <select class="form-control" name="filter_sort">
                              <option value="">{{ trans('front.filters.sort') }}</option>
                              <option value="price_asc" {{ ($filter_sort =='price_asc')?'selected':'' }}>
                                  {{ trans('front.filters.price_asc') }}</option>
                              <option value="price_desc" {{ ($filter_sort =='price_desc')?'selected':'' }}>
                                  {{ trans('front.filters.price_desc') }}</option>
                              <option value="sort_asc" {{ ($filter_sort =='sort_asc')?'selected':'' }}>
                                  {{ trans('front.filters.sort_asc') }}</option>
                              <option value="sort_desc" {{ ($filter_sort =='sort_desc')?'selected':'' }}>
                                  {{ trans('front.filters.sort_desc') }}</option>
                              <option value="id_asc" {{ ($filter_sort =='id_asc')?'selected':'' }}>{{ trans('front.filters.id_asc') }}
                              </option>
                              <option value="id_desc" {{ ($filter_sort =='id_desc')?'selected':'' }}>
                                  {{ trans('front.filters.id_desc') }}</option>
                          </select>
                        </form>
                  </div>
                  {{-- //Sort filter --}}

                  {{-- Product list --}}
                  <div class="row row-30 row-lg-50">
                    @foreach ($products as $key => $product)
                    <div class="col-lg-4 col-sm-6 col-12">
                        <!-- Product-->
                        <article class="product wow fadeInRight">
                          <div class="product-body">
                            <div class="product-figure">
                                <a href="{{ $product->getUrl() }}">
                                <img src="{{ asset($product->getThumb()) }}" alt="{{ $product->name }}"/>
                                </a>
                            </div>
                            <h5 class="product-title"><a href="{{ $product->getUrl() }}">{{ $product->name }}</a></h5>

                            {{-- Go to store --}}
                            @if (sc_config_global('MultiVendorPro') && config('app.storeId') == SC_ID_ROOT)
                            <div class="store-url"><a href="{{ $product->goToStore() }}"><i class="fa fa-shopping-bag" aria-hidden="true"></i> {{ trans('front.store').' '. $product->store_id  }}</a>
                            </div>
                            @endif
                            {{-- End go to store --}}

                            @if ($product->allowSale())
                            <a onClick="addToCartAjax('{{ $product->id }}','default','{{ $product->store_id }}')" class="button button-lg button-secondary button-zakaria add-to-cart-list">
                              <i class="fa fa-cart-plus"></i> {{trans('front.add_to_cart')}}</a>
                            @endif

                            {!! $product->showPrice() !!}
                          </div>
                          
                          @if ($product->price != $product->getFinalPrice() && $product->kind !=
                          SC_PRODUCT_GROUP)
                          <span><img class="product-badge new" src="{{ asset($sc_templateFile.'/images/home/sale.png') }}" class="new" alt="" /></span>
                          @elseif($product->kind == SC_PRODUCT_BUILD)
                          <span><img class="product-badge new" src="{{ asset($sc_templateFile.'/images/home/bundle.png') }}" class="new" alt="" /></span>
                          @elseif($product->kind == SC_PRODUCT_GROUP)
                          <span><img class="product-badge new" src="{{ asset($sc_templateFile.'/images/home/group.png') }}" class="new" alt="" /></span>
                          @endif
                          {{-- <div class="product-button-wrap">
                            <div class="product-button">
                                <a class="button button-secondary button-zakaria" onClick="addToCartAjax('{{ $product->id }}','wishlist','{{ $product->store_id }}')">
                                    <i class="fas fa-heart"></i>
                                </a>
                            </div>
                            <div class="product-button">
                                <a class="button button-primary button-zakaria" onClick="addToCartAjax('{{ $product->id }}','compare','{{ $product->store_id }}')">
                                    <i class="fa fa-exchange"></i>
                                </a>
                            </div>
                          </div> --}}
                        </article>
                      </div>
                    @endforeach
                  </div>

                  <div class="pagination-wrap">
                    <!-- Bootstrap Pagination-->
                    <nav aria-label="Page navigation">
                      <ul class="pagination">
                        {{ $products->appends(request()->except(['page','_token']))->links() }}
                      </ul>
                    </nav>
                  </div>
                </div>
        </div>
      </div>
      {{-- //Product list --}}
    @endsection
    {{-- //block_main_content_center --}}


    @section('blockStoreLeft')
    {{-- Categories tore --}}
    {{-- Only show category store if shop home is not primary store --}}
    @if (config('app.storeId') != SC_ID_ROOT && function_exists('sc_vendor_get_categories_front') &&  count(sc_vendor_get_categories_front(config('app.storeId'))))
    <div class="aside-item col-sm-6 col-md-5 col-lg-12">
      <h6 class="aside-title">{{ trans('front.categories_store') }}</h6>
      <ul class="list-shop-filter">
        @foreach (sc_vendor_get_categories_front(config('app.storeId')) as $key => $category)
        <li class="product-minimal-title active"><a href="{{ $category->getUrl() }}"> {{ $category->getTitle() }}</a></li>
        @endforeach
      </ul>
    </div>
    @endif
    {{-- //Categories tore --}}




@endsection



@push('styles')

  <link rel="stylesheet" href="{{ asset($sc_templateFile.'/css/bootstrap.css')}}">
  <link rel="stylesheet" href="{{ asset($sc_templateFile.'/css/fonts.css')}}">
  <link rel="stylesheet" href="{{ asset($sc_templateFile.'/css/style.css')}}">
  <style>
      {!! sc_store_css() !!}
  </style>

@endpush

@push('scripts')
  <script type="text/javascript">
    $('[name="filter_sort"]').change(function(event) {
        $('#filter_sort').submit();
    });
  </script>

  {{-- Render include script --}}
  @if (!empty($layout_page) && $includePathScript = config('sc_include_script.'.$layout_page, []))
  @foreach ($includePathScript as $script)
    @if (view()->exists($script))
      @include($script)
    @endif
  @endforeach
  @endif
  {{--// Render include script --}}

@endpush