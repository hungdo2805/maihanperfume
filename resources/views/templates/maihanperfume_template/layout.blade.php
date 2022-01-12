<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Beeta - Multipurpose eCommerce Bootstrap 4 Template</title>
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

   

    </head>
    <body>
            <!-- Add your site or application content here -->
            
            <!--header area start-->
            @include($sc_templatePath.'.block_header')
            <!--header area end-->
             
            <!--slider area start-->
            <div class="slider_area">
                <div class="slider_active owl-carousel">
                    <div class="single_slider" style="background: url({{ asset($sc_templateFile.'/assets/img/slider/slider1.jpg')}}) center center / cover no-repeat scroll;">
                        <div class="container-fluid p-0">
                            <div class="row align-items-center">
                                <div class="col-12">
                                    <div class="slider_content">
                                        <h4>TINH DẦU NƯỚC HOA DUBAI</h4>
                                        <a href="#">Cửa hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single_slider" style="background: url(./assets/img/slider/slider2.jpg) center center / cover no-repeat scroll;">
                        <div class="container-fluid">
                            <div class="row align-items-center p-0">
                                <div class="col-12">
                                    <div class="slider_content">
                                        <h4>TINH DẦU NƯỚC HOA DUBAI</h4>
                                        <a href="#">Cửa hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a> 
                                        <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                        <div class="sale_percent">
                                            <span>-4%</span>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_meta">  
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                            </div>
                                        </div>    
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use2.jpg" alt=""></a> 
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                       
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_meta">    
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                                <span class="old_price">980000 VND</span>
                                            </div>

                                        </div>     
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a> 
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_price">
                                            <span class="current_price">850.000 VND</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a> 
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_meta">    
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                            </div>

                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a>
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                        
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_price">
                                            <span class="current_price">850.000 VND</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a>
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div> 
                                    </div>
                                     <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>  
                                        <div class="product_meta">    
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                                <span class="old_price">980000 VND</span>
                                            </div>

                                        </div>
                                    </div>     
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
            </div> 
            <!--new product start-->
            
            <!--countdown section start--> 
            <div class="countdown_product countdown_two">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-12">
                            <div class="product_thumb countdown">
                                <a href="single-product.html"><img class="sale-product" src="./assets/img/product/product_use.jpg" alt=""></a>
                                <div class="sale_percent">
                                    <span>-4%</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="countdown_product_content">
                                <div class="product_name">
                                    <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
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
                                <div class="product_price">
                                    <span class="current_price">850.000 VND</span>
                                    <span class="old_price">980000 VND</span>
                                </div>
                                <div class="product_desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique saepe consectetur possimus perferendis, accusantium.</p>
                                </div>
                                <div class="product_timing">
                                    <div data-countdown="2022/12/15"></div>
                                </div>
                                <div class="product_button">
                                    <a href="#" data-bs-toggle="tooltip" data-placement="top" title="add to cart">add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--countdown section end-->
             
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
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a> 
                                        <div class="product_action">
                                            
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                        <div class="sale_percent">
                                            <span>-4%</span>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_meta">  
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                            </div>

                                        </div>    
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use2.jpg" alt=""></a> 
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                       
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_meta">    
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                                <span class="old_price">980000 VND</span>
                                            </div>

                                        </div>     
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a> 
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_price">
                                            <span class="current_price">850.000 VND</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a> 
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_meta">    
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                            </div>

                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a>
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div>
                                        
                                    </div>
                                    <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>
                                        <div class="product_price">
                                            <span class="current_price">850.000 VND</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="single_product">
                                    <div class="product_thumb">
                                       <a href="single-product.html"><img src="./assets/img/product/product_use.jpg" alt=""></a>
                                       <div class="product_action">
                                           <ul>
                                            <li><a href="#">+Thêm giỏ hàng</a></li>
                                            <li><a href="#" title="So sánh"><i class="fa fa-refresh" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Thêm yêu thích"><i class="fa fa-heart-o" aria-hidden="true"></i></a></li>
                                            <li><a href="#" title="Xem sản phẩm"><i class="fa fa-eye"></i></a></li>
                                           </ul>
                                        </div> 
                                    </div>
                                     <div class="product_content">
                                        <div class="product_name">
                                            <h2><a href="single-product.html">Nước hoa Nữ Dubai Mazaaji EDP </a></h2>
                                        </div>  
                                        <div class="product_meta">    
                                            <div class="product_price">
                                                <span class="current_price">850.000 VND</span>
                                                <span class="old_price">980000 VND</span>
                                            </div>

                                        </div>
                                    </div>     
                                </div>
                            </div>
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
                                <form action="#">
                                    <input placeholder="Email của bạn" type="text">
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
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="./assets/img/blog/blog_use.jpg" alt=""></a>
                                    </div>
                                    <div class="blog_content">
                                        <div class="blog_title">
                                            <h3><a href="blog-details.html">Ưu và Nhược điểm tinh dầu nước hoa Dubai chính hãng</a></h3>
                                        </div>
                                        <div class="blog_meta">
                                            <i class="fa-calendar fa"></i>
                                            <span class="post_date">october 10, 2022</span>
                                        </div>
                                        <div class="blog_desc">
                                            <p>Tinh dầu nước hoa dubai là sản phẩm nước hoa từ Dubai do chính người dân nơi đây điều chế từ tinh dầu và nước cất...</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="./assets/img/blog/blog_use.jpg" alt=""></a>
                                    </div>
                                    <div class="blog_content">
                                        <div class="blog_title">
                                            <h3><a href="blog-details.html">Tinh dầu nước hoa Dubai giá bao nhiêu? có đắt không?</a></h3>
                                        </div>
                                        <div class="blog_meta">
                                            <i class="fa-calendar fa"></i>
                                            <span class="post_date">october 10, 2018</span>
                                        </div>
                                        <div class="blog_desc">
                                            <p>Tinh dầu nước hoa Dubai tại HT Market là dòng nước hoa nổi tiếng với mùi hương siêu quyến rũ...</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="./assets/img/blog/blog_use.jpg" alt=""></a>
                                    </div>
                                    <div class="blog_content">
                                        <div class="blog_title">
                                            <h3><a href="blog-details.html"></a>Tinh dầu nước hoa Dubai hot nhất hiện nay</a></h3>
                                        </div>
                                        <div class="blog_meta">
                                            <i class="fa-calendar fa"></i>
                                            <span class="post_date">october 10, 2018</span>
                                        </div>
                                        <div class="blog_desc">
                                            <p>Đừng bỏ lỡ 1 chai tinh dầu nước hoa Dubai hot nhất hiện nay!</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="./assets/img/blog/blog_use.jpg" alt=""></a>
                                    </div>
                                    <div class="blog_content">
                                        <div class="blog_title">
                                            <h3><a href="blog-details.html">Post with Video</a></h3>
                                        </div>
                                        <div class="blog_meta">
                                            <i class="fa-calendar fa"></i>
                                            <span class="post_date">october 10, 2018</span>
                                            <span class="comment"> <a href="#">3  comments</a></span>
                                        </div>
                                        <div class="blog_desc">
                                            <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="./assets/img/blog/blog_use.jpg" alt=""></a>
                                    </div>
                                    <div class="blog_content">
                                        <div class="blog_title">
                                            <h3><a href="blog-details.html">Maecenas ultricies</a></h3>
                                        </div>
                                        <div class="blog_meta">
                                            <i class="fa-calendar fa"></i>
                                            <span class="post_date">october 10, 2018</span>
                                            <span class="comment"> <a href="#">3  comments</a></span>
                                        </div>
                                        <div class="blog_desc">
                                            <p>Donec vitae hendrerit arcu, sit amet faucibus nisl. Cras pretium arcu ex. Aenean posuere libero eu augue condimentum rhoncus. Praesent</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--blog area end-->
                      
            <!--footer area start-->
            @include($sc_templatePath.'.block_footer')
            <!--footer area end-->
            
        
           
		
		<!-- all js here -->

        <script src="{{ asset($sc_templateFile.'/assets/js/vendor/jquery-3.4.1.min.js')}}"></script>
        <script src="{{ asset($sc_templateFile.'/assets/js/vendor/modernizr-3.7.1.min.js')}}"></script>
      
        <script src="{{ asset($sc_templateFile.'/assets/js/plugins.js')}}"></script>
        <script src="{{ asset($sc_templateFile.'/assets/js/main.js')}}"></script>
    </body>
</html>
