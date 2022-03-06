
<div class="footer_area">
  <div class="container">
      <div class="footer_top text-left">
          <div class="row">
              <div class="col-lg-4 col-md-6">
                  <div class="single_footer">
                      <h3>{{sc_store('title')}}</h3>
                      <p>{{ sc_store('description')}}</p>
                      <div class="footer_social">
                          <h3>Theo dõi</h3>
                          <ul>
                              <li><a href="https://www.facebook.com/profile.php?id=100008305145038"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="https://www.facebook.com/profile.php?id=100008305145038"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="https://www.facebook.com/profile.php?id=100008305145038"><i class="fa fa-rss"></i></a></li>
                              <li><a href="https://www.facebook.com/profile.php?id=100008305145038"><i class="fa fa-google-plus"></i></a></li>

                          </ul>
                      </div>
                  </div>
              </div>
              <div class="col-lg-4 col-md-6">
                  <div class="single_footer">
                      <h3>Truy cập nhanh</h3>
                      <ul>
                        <li class="active"><a href="{{ sc_route('home') }}">Trang chủ</a></li>
                        <li><a href="{{ url('about.html') }}">Giới thiệu</a></li>
                        <li><a href="{{ sc_route('shop') }}">Cửa hàng</a></li>
                        <li><a href="{{ sc_route('news') }}">Tin tức</a></li>
                        <li><a href="{{ sc_route('contact') }}">Liên hệ</a></li>
                      </ul>
                  </div>
              </div>
              <div class="col-lg-4 col-md-6">
                  <div class="single_footer column_3">
                      <h3>Liên hệ</h3>
                      <ul>
                          <li><i class="fa fa-home"></i> {{ sc_store('address') }}</li>
                          <li><i class="fa fa-phone"></i> {{ sc_store('phone') }}</li>
                     
                          <li><i class="fa fa-envelope-open-o"></i> <a href="mailto:#{{ sc_store('email') }}"> {{ sc_store('email') }} </a></li>
                      </ul>
                      {{-- <div class="footer-payment">
                    
                          <a href="#"><img  src="{{ asset($sc_templateFile.'/assets/img/visha/payment.png')}}" alt=""></a>
                      </div> --}}
                  </div>
              </div>
          </div>
      </div>
      <div class="copyright_area">
          <div class="row">
              <div class="col--12">
                  <div class="copyright_conent text-center">
                      <p>&copy; Copyright 2022 Made With <i class="fa fa-heart"></i> by <a href="#" target="_blank" rel="noopener">HaMai</a></p>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>
