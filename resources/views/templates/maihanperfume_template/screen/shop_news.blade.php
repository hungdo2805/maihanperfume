@php
/*
$layout_page = shop_news
**Variables:**
- $news: paginate
Use paginate: $news->appends(request()->except(['page','_token']))->links()
*/
@endphp


@extends($sc_templatePath.'.layout')
@section('menu4')   active  @endsection

@section('content')


    <!--breadcrumbs area start-->
    <div class="breadcrumb-section about_bread">
      <div class="container">   
          <div class="row">
              <div class="col-12">
                  <div class="breadcrumb_content">
                      <ul>
                          <li><a href="{{ route('home') }}">Trang chủ</a></li>
                          <li class="active">Tin tức</li>
                      </ul>
                  </div>
              </div>
          </div>
      </div>    
    </div>
  <!--breadcrumbs area end-->



<section class="section section-xl bg-default">
    <div class="container">
      <div class="row row-30">
        @if ($news->count())
            @foreach ($news as $newsDetail)
              <div class="col-lg-4 col-sm-6 col-12">
                <div class="single_blog">
                    <div class="blog_thumb">
                        <a href="{{ $newsDetail->getUrl() }}"><img src="{{ asset($newsDetail->getThumb()) }}" alt=""></a>
                    </div>
                    <div class="blog_content">
                        <div class="blog_title">
                            <h3><a href="{{ $newsDetail->getUrl() }}">{{ $newsDetail->title }}</a></h3>
                        </div>
                        <div class="blog_meta">                                       
                            <span class="post_date"><i class="fa-calendar fa"></i> {{ $newsDetail->created_at }}</span>
                        </div>
                        <div class="blog_desc">
                            <p>
                              {{ $newsDetail->description }}
                            </p>
                        </div>
                        <div class="readmore_button">
                            <a href="{{ $newsDetail->getUrl() }}">Đọc thêm</a>
                        </div>
                    </div>
                </div>
            </div> 
            @endforeach

            <div class="pagination-wrap">
                <!-- Bootstrap Pagination-->
                <nav aria-label="Page navigation">
                    {{ $news->links() }}
                </nav>
              </div>

        @else
            {!! trans('front.no_data') !!}
        @endif
      </div>

    </div>
  </section>

{{-- Render include view --}}
@if (!empty($layout_page && $includePathView = config('sc_include_view.'.$layout_page, [])))
@foreach ($includePathView as $view)
  @if (view()->exists($view))
    @include($view)
  @endif
@endforeach
@endif
{{--// Render include view --}}

@endsection

{{-- breadcrumb --}}
@section('breadcrumb')
@php
$bannerBreadcrumb = $modelBanner->start()->getBreadcrumb()->getData()->first();
@endphp
<section class="breadcrumbs-custom">
  <div class="parallax-container" data-parallax-img="{{ asset($bannerBreadcrumb['image'] ?? '') }}">
    <div class="material-parallax parallax">
      <img src="{{ asset($bannerBreadcrumb['image'] ?? '') }}" alt="" style="display: block; transform: translate3d(-50%, 83px, 0px);">
    </div>
    <div class="breadcrumbs-custom-body parallax-content context-dark">
      <div class="container">
        <h2 class="breadcrumbs-custom-title">{{ $title ?? '' }}</h2>
      </div>
    </div>
  </div>
  <div class="breadcrumbs-custom-footer">
    <div class="container">
      <ul class="breadcrumbs-custom-path">
        <li><a href="{{ sc_route('home') }}">{{ trans('front.home') }}</a></li>
        <li class="active">{{ $title ?? '' }}</li>
      </ul>
    </div>
  </div>
</section>
@endsection
{{-- //breadcrumb --}}

@push('styles')
{{-- Your css style --}}
@endpush

@push('scripts')
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