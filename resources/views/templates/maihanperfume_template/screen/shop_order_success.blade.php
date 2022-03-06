@php
/*
$layout_page = shop_order_success
*/
@endphp

@extends($sc_templatePath.'.layout')

@section('content')
<div class="breadcrumb-section">
  <div class="container">   
      <div class="row">
          <div class="col-12">
              <div class="breadcrumb_content text-left">
                  <ul>
                      <li><a href="{{ sc_route('home') }}">Trang chủ</a></li>
                      <li class="active">Đơn hàng của bạn</li>
                  </ul>
              </div>
          </div>
      </div>
  </div>    
</div>
<div class="container">
    <div class="row text-center">
        <h6 class="aside-title" style="margin-bottom:20px;">{{ $title }}</h6>
        <div class="col-md-12">
            <h2 class="title-page">{{ $title }}</h2>
        </div>
        <div class="col-md-12" style="margin-bottom:20px;color:#ee7be3;">
            <h2>{{ trans('order.success.msg') }}</h2>
            <h3>{{ trans('order.success.order_info',['order_id'=>session('orderID')]) }}</h3>
        </div>
    </div>
</div>


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

@section('breadcrumb')
@endsection

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
