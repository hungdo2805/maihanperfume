@php
/*
$layout_page = shop_contact
*/
@endphp

@extends($sc_templatePath.'.layout')
@section('menu5')   active  @endsection

@section('content')
        <!--breadcrumbs area start-->
        <div class="breadcrumb-section cart_bread">
            <div class="container">   
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb_content">
                            <ul>
                                <li><a href="{{ sc_route('home') }}">Trang chủ</a></li>
                                <li class="active">Liên hệ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
                       
            <!--contact area start-->
            <div class="contact_area">
                <div class="container">   
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                           <div class="contact_message content">
                                <h3>Mai Hân Perfume</h3>    
                                 <p>Cập nhật những mẫu nước hoa và tinh dầu Dubai xách tay đang khuyến mãi!</p>
                                <ul>
                                    <li><i class="fa fa-fax"></i> {{ sc_store('address') }}</li>
                                    <li><i class="fa fa-phone"></i> <a href="#">{{ sc_store('phone') }} </a></li>
                                    <li><i class="fa fa-envelope-o"></i> {{ sc_store('email') }}  </li>
                                </ul>             
                            </div> 
                        </div>
                        <div class="col-lg-6 col-md-12">
                           <div class="contact_message form">
                                <h3>Form liên hệ</h3>   
                                <form id="contact-form" method="POST"  action="{{ sc_route('contact.post') }}">
                                   @csrf
                                    <p>  
                                       <label> Tên của bạn (*)</label>
                                        <input name="name" placeholder="Name *" type="text" required> 
                                    </p>
                                    <p>       
                                       <label> Email (*)</label>
                                        <input name="email" placeholder="Email *" type="email" required>
                                    </p>
                                    <p>          
                                       <label>  SĐT </label>
                                        <input name="phone" placeholder="SĐT *" type="number" required>
                                    </p>    
                                    <div class="contact_textarea">
                                        <label> Lời nhắn</label>
                                        <textarea placeholder="Message *" name="content"  class="form-control2" ></textarea>     
                                    </div>   
                                    <button type="submit"> Gửi</button>  
                                    <p class="form-messege"></p>
                                </form> 
                                   
                            </div> 
                        </div>
                    </div>
                </div>    
            </div>

            <!--contact area end-->
            
             <!--contact map start-->
            <div class="contact_map">
               <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3710.0163344654447!2d105.80362131489306!3d21.585285485699465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31352746bcf97c83%3A0xa83b4b1fc37adcc0!2zxJDGsOG7nW5nIFogMTE1LCBUcC4gVGjDoWkgTmd1ecOqbiwgVGjDoWkgTmd1ecOqbiwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1641746007758!5m2!1svi!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <!--contact map end-->

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