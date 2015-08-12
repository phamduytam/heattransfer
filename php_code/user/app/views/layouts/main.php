
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->getTitle();?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8 " />
<meta name="description" content="<?php echo $this->getDescription();?>" />
<meta name="keywords" content="<?php echo $this->getKeyWord();?>" />
<meta name="dc.title" content="Bàn Ghế Pallet" />
<meta name="author" content="heattransferlabel.com.vn" /> 
<meta name="distribution" content="Global" />    
<meta name="RATING" content="GENERAL" />

<meta property="og:title" itemprop="name" content="<?php echo $this->getTitle();?>" />
<meta property="og:type" content="article" />
<meta property="og:site_name" content="Heat Transfer Label" />
<meta property="og:description" itemprop="description" content="<?php echo $this->getDescription();?>"/>
<meta property="og:image" itemprop="image" content="<?php echo $this->getImage();?>" />
<link type="text/css" rel="stylesheet"
    href="<?php echo app()->baseUrl;?>/sites/105544/Skins/Ecom01/style.css" />
<link type="text/css" rel="stylesheet"
    href="<?php echo app()->baseUrl;?>/Extensions/Stylesheet/common.css" />
<link type="text/css" rel="stylesheet"
    href="<?php echo app()->baseUrl;?>/Extensions/fancybox-2/jquery.fancybox.css" />
<script type="text/javascript" src="<?php echo app()->baseUrl;?>/Extensions/Js/jquery.min.js"></script>
<script type="text/javascript"
    src="<?php echo app()->baseUrl;?>/Extensions/fancybox-2/jquery.fancybox.pack.js"></script>
<script type="text/javascript"
    src="<?php echo app()->baseUrl;?>/Extensions/fancybox-2/jquery.mousewheel-3.0.6.pack.js"></script>
<script type="text/javascript" src="<?php echo app()->baseUrl;?>/Extensions/Js/jquery.cookie.js"></script>
<script type="text/javascript" src="<?php echo app()->baseUrl;?>/Extensions/Js/jquery.tooltip.min.js"></script>

</head>
<body style="">

    <div id="Container">
        <div class="bg_topmenu">
            <div id="TopMenu"></div>
        </div>
        <div class="Clear"></div>
        <div id="Outer">
            <div id="Header">
                <div id="Logo">
                    <div id="LogoContainer">
                        <a href="<?php echo app()->baseUrl;?>"><img
                            src='<?php echo app()->baseUrl;?>sites/97934/upload/Logo/201517133958263.png' /></a>
                    </div>
                </div>
                <div id="SearchForm">

                    <div id="SearchFormContainer">
                        <form method="POST" action="<?php echo app()->baseUrl;?>/search">
                            <input name="txtSearch" type="text"
                            id="ctlSearch_ctl00_txtSearch"
                            class="search-input" />
                            <input type="submit"
                            name="btnSearch" value=""
                            class="search-button" />
                        </form>

                    </div>

                </div>
                <div class="Clear"></div>
            </div>
            <div id="Menu">
                <div class="fix-width">
                    <div id="menu-container">
                        <ul id="nav">

                            <li id="nav-1"
                                class="level0 nav-1 first current parent"
                                style="z-index: 2000;"><a href="<?php echo app()->baseUrl;?>/"> <span>Trang
                                        chủ</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-2" class="level0 nav-2 parent"
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/gioi-thieu.html"> <span>Giới
                                        thiệu</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-3" class="level0 nav-3 parent"
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/san-pham.html"> <span>Sản phẩm</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-4" class="level0 nav-4 parent"
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/tin-tuc.html"> <span>Tin tức</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-6" class="level0 nav-6 parent"
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/lien-he.html"> <span>Liên hệ</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                        </ul>
                    </div>
                    <br class="Clear" />
                </div>
            </div>
            <div id="Wrapper">
                <?php
                        if($this->breadcrumbs)
                        {
                ?>
                <div class="Breadcrumb" id="Breadcrumb">
                    <ul>
                        <li class="first">
                            <a href="<?php echo app()->baseUrl;?>/">Trang chủ</a>
                        </li>
                    <?php
                            foreach ($this->breadcrumbs as $key => $value)
                            {
                                if($key != '')
                                {
                    ?>
                                    
                                    <li><span><?php echo $value ? '<a href="'.$value.'">'.$key.'</a>' : $key?></span></li>
                    <?php   
                                }         
                            }
                    ?>      
                    </ul>
                </div>
                <?php }?>
                <div class="Clear"></div>

                <div id="cphMain_Content">
                    <div id="cphMain_ctl00_LeftPane" class="left">
                        <div id="vertical-menu"
                            class="DefaultModule cate-menu">
                            <div class="defaultTitle cate-menu-title">
                                <span>Danh mục sản phẩm</span>
                            </div>
                            <div
                                class="defaultContent cate-menu-content">
                                <ul>

                                    <li
                                        class="level0 level0-1668590 first">
                                        <a
                                        href="/may-nen-khi-b1668590.html">
                                            Máy nén khí </a>

                                    </li>

                                    <li class="level0 level0-1668591"><a
                                        href="/may-phat-dien-b1668591.html">
                                            Máy phát điện </a></li>

                                    <li class="level0 level0-1668592"><a
                                        href="/thiet-bi-cong-nghiep-b1668592.html">
                                            Thiết bị công nghiệp </a>

                                        <div style="display: block">
                                            <ul>

                                                <li
                                                    class="level1 level1-1668596 first">
                                                    <a
                                                    href="/dung-cu-cam-tay-b1668596.html">
                                                        Dụng cụ cầm tay
                                                </a>

                                                </li>

                                                <li
                                                    class="level1 level1-1668597">
                                                    <a
                                                    href="/vong-dem-b1668597.html">
                                                        Vòng đệm </a>

                                                </li>

                                                <li
                                                    class="level1 level1-1668598">
                                                    <a
                                                    href="/dung-cu-o-to-b1668598.html">
                                                        Dụng cụ ô tô </a>

                                                </li>

                                                <li
                                                    class="level1 level1-1668599">
                                                    <a
                                                    href="/dung-cu-chay-pin-b1668599.html">
                                                        Dụng cụ chạy pin
                                                </a>

                                                </li>

                                                <li
                                                    class="level1 level1-1668600">
                                                    <a
                                                    href="/may-do-cong-nghiep-b1668600.html">
                                                        Máy đo công
                                                        nghiệp </a>

                                                </li>

                                                <li
                                                    class="level1 level1-1668601">
                                                    <a
                                                    href="/phu-kien-cong-nghiep-b1668601.html">
                                                        Phụ kiện công
                                                        nghiệp </a>

                                                </li>

                                            </ul>
                                        </div></li>

                                    <li class="level0 level0-1668593"><a
                                        href="/may-hut-bui-b1668593.html">
                                            Máy hút bụi </a></li>

                                    <li class="level0 level0-1668594"><a
                                        href="/dung-cu-han-b1668594.html">
                                            Dụng cụ hàn </a></li>

                                </ul>
                            </div>
                            <div class="defaultFooter cate-menu-footer">
                                <div></div>
                            </div>
                        </div>

                        <div id="SideTopSeller"
                            class="TopSellers Moveable Panel DefaultModule">
                            <div
                                class="defaultTitle SideTopSeller-Title">
                                <span> Bán chạy</span>
                            </div>
                            <div
                                class="defaultContent SideTopSeller-content">
                                <div class="BlockContent">

                                    <ul class="ProductList">

                                        <li class="Odd first"
                                            style="padding-top: 15px;">
                                            <div
                                                class="TopSellerNumber1">
                                                1</div>
                                            <div id="ProductImage"
                                                class="ProductImage"
                                                style="display: block">
                                                <a class=""
                                                    href='/banh-cua-6197329.html'>
                                                    <img
                                                    src="Thumbnails//sites/97934/data/images/2014/12/2523908ab9_5.192.192.jpg"
                                                    alt="Bánh cưa"
                                                    title="Bánh cưa" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/banh-cua-6197329.html'>
                                                        Bánh cưa</a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <div
                                                    class="retail-price disable">
                                                    <span
                                                        class="price-label"></span><span
                                                        class="price"><strike
                                                        class="RetailPriceValue">
                                                    </strike> </span>
                                                </div>
                                                <div
                                                    class="special-price">
                                                    <span
                                                        class="price-label"><span>
                                                            <span
                                                            class="price">
                                                                <em>
                                                                    450.000
                                                                    ₫</em>
                                                                </em>
                                                        </span>
                                                
                                                </div>
                                            </div>
                                            <hr class="Clear" />
                                        </li>

                                        <li class="Even" style="">
                                            <div class="TopSellerNumber">
                                                2</div>
                                            <div id="ProductImage"
                                                class="ProductImage"
                                                style="display: none">
                                                <a class=""
                                                    href='/may-dieu-chinh-nhiet-do-dong-co-bosch-6197328.html'>
                                                    <img
                                                    src="Thumbnails//sites/97934/data/images/2014/12/2106896ab9_4.192.192.jpg"
                                                    alt="Máy điều chỉnh nhiệt độ động cơ Bosch"
                                                    title="Máy điều chỉnh nhiệt độ động cơ Bosch" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-dieu-chinh-nhiet-do-dong-co-bosch-6197328.html'>
                                                        Máy điều chỉnh
                                                        nhiệt độ động cơ
                                                        Bosch</a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <div
                                                    class="retail-price disable">
                                                    <span
                                                        class="price-label"></span><span
                                                        class="price"><strike
                                                        class="RetailPriceValue">
                                                    </strike> </span>
                                                </div>
                                                <div
                                                    class="special-price">
                                                    <span
                                                        class="price-label"><span>
                                                            <span
                                                            class="price">
                                                                <em>
                                                                    3.200.000
                                                                    ₫</em>
                                                                </em>
                                                        </span>
                                                
                                                </div>
                                            </div>
                                            <hr class="Clear" />
                                        </li>

                                        <li class="Odd " style="">
                                            <div class="TopSellerNumber">
                                                3</div>
                                            <div id="ProductImage"
                                                class="ProductImage"
                                                style="display: none">
                                                <a class=""
                                                    href='/rang-cua-cobalt-6197327.html'>
                                                    <img
                                                    src="Thumbnails//sites/97934/data/images/2014/12/0458159ab9_1.192.192.jpg"
                                                    alt="Răng cưa Cobalt"
                                                    title="Răng cưa Cobalt" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/rang-cua-cobalt-6197327.html'>
                                                        Răng cưa Cobalt</a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <div
                                                    class="retail-price disable">
                                                    <span
                                                        class="price-label"></span><span
                                                        class="price"><strike
                                                        class="RetailPriceValue">
                                                    </strike> </span>
                                                </div>
                                                <div
                                                    class="special-price">
                                                    <span
                                                        class="price-label"><span>
                                                            <span
                                                            class="price">
                                                                <em>
                                                                    2.000.000
                                                                    ₫</em>
                                                                </em>
                                                        </span>
                                                
                                                </div>
                                            </div>
                                            <hr class="Clear" />
                                        </li>

                                        <li class="Even" style="">
                                            <div class="TopSellerNumber">
                                                4</div>
                                            <div id="ProductImage"
                                                class="ProductImage"
                                                style="display: none">
                                                <a class=""
                                                    href='/gia-do-6197326.html'>
                                                    <img
                                                    src="Thumbnails//sites/97934/data/images/2014/12/535440316416120_xe_day_hang_ok.192.192.jpg"
                                                    alt="Giá đỡ"
                                                    title="Giá đỡ" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/gia-do-6197326.html'>
                                                        Giá đỡ</a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <div
                                                    class="retail-price disable">
                                                    <span
                                                        class="price-label"></span><span
                                                        class="price"><strike
                                                        class="RetailPriceValue">
                                                    </strike> </span>
                                                </div>
                                                <div
                                                    class="special-price">
                                                    <span
                                                        class="price-label"><span>
                                                            <span
                                                            class="price">
                                                                <em>
                                                                    799.000
                                                                    ₫</em>
                                                                </em>
                                                        </span>
                                                
                                                </div>
                                            </div>
                                            <hr class="Clear" />
                                        </li>

                                        <li class="Odd " style="">
                                            <div class="TopSellerNumber">
                                                5</div>
                                            <div id="ProductImage"
                                                class="ProductImage"
                                                style="display: none">
                                                <a class=""
                                                    href='/van-cong-mv-6197325.html'>
                                                    <img
                                                    src="Thumbnails//sites/97934/data/images/2015/1/41416742_75.192.192.jpg"
                                                    alt="Van cổng MV"
                                                    title="Van cổng MV" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/van-cong-mv-6197325.html'>
                                                        Van cổng MV</a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <div
                                                    class="retail-price disable">
                                                    <span
                                                        class="price-label"></span><span
                                                        class="price"><strike
                                                        class="RetailPriceValue">
                                                    </strike> </span>
                                                </div>
                                                <div
                                                    class="special-price">
                                                    <span
                                                        class="price-label"><span>
                                                            <span
                                                            class="price">
                                                                <em>
                                                                    2.050.000
                                                                    ₫</em>
                                                                </em>
                                                        </span>
                                                
                                                </div>
                                            </div>
                                            <hr class="Clear" />
                                        </li>

                                        <li class="Even" style="">
                                            <div class="TopSellerNumber">
                                                6</div>
                                            <div id="ProductImage"
                                                class="ProductImage"
                                                style="display: none">
                                                <a class=""
                                                    href='/van-an-toan-bon-chua-6197324.html'>
                                                    <img
                                                    src="Thumbnails//sites/97934/data/images/2015/1/35320602_77.192.192.jpg"
                                                    alt="Van An Toàn Bồn Chứa"
                                                    title="Van An Toàn Bồn Chứa" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/van-an-toan-bon-chua-6197324.html'>
                                                        Van An Toàn Bồn
                                                        Chứa</a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <div
                                                    class="retail-price disable">
                                                    <span
                                                        class="price-label"></span><span
                                                        class="price"><strike
                                                        class="RetailPriceValue">
                                                    </strike> </span>
                                                </div>
                                                <div
                                                    class="special-price">
                                                    <span
                                                        class="price-label"><span>
                                                            <span
                                                            class="price">
                                                                <em>
                                                                    200.000
                                                                    ₫</em>
                                                                </em>
                                                        </span>
                                                
                                                </div>
                                            </div>
                                            <hr class="Clear" />
                                        </li>

                                    </ul>

                                </div>
                                <div class="Clear"></div>
                            </div>
                            <div
                                class="clear defaultFooter SideTopSeller-footer">
                                <div></div>
                            </div>
                        </div>

                        <div id="TextHTML-Module" class="DefaultModule">
                            <p>
                                <img alt=""
                                    src="sites/95138/data/Upload/2014/12/banner1.jpg"
                                    style="width: 262px; height: 354px;" />
                            </p>

                            <p>
                                <img alt=""
                                    src="sites/105544/data/banners/banner_luoicatgo.jpg?0"
                                    style="width: 262px; height: 354px;" />
                            </p>

                        </div>
                    </div>
                    <div class="wrap-content">
                        <?php echo $content;?>
                    </div>
                    <div class="Clear"></div>
                    <div id="cphMain_ctl00_BottomPane" class="bottom">
                        <div id="TextHTML-Module" class="DefaultModule">

                            <div class="defaultTitle TextHTML-Title">
                                <span> Thương hiệu nổi bật</span>
                            </div>
                            <div class="defaultContent TextHTML-content">
                                <div class="orther-logo">
                                    <ul>
                                        <li><img alt=""
                                            src="sites/105544/data/banners/logo1.jpg?0"
                                            style="width: 160px; height: 100px;" /></li>
                                        <li><img alt=""
                                            src="sites/105544/data/banners/logo2.jpg?0"
                                            style="width: 160px; height: 100px;" /></li>
                                        <li><img alt=""
                                            src="sites/105544/data/banners/logo3.jpg?0"
                                            style="width: 160px; height: 100px;" /></li>
                                        <li><img alt=""
                                            src="sites/105544/data/banners/logo4.jpg"
                                            style="width: 160px; height: 100px;" /></li>
                                        <li><img alt=""
                                            src="sites/105544/data/banners/logo5.jpg"
                                            style="width: 160px; height: 100px;" /></li>
                                        <li><img alt=""
                                            src="sites/105544/data/banners/logo6.jpg"
                                            style="width: 160px; height: 100px;" /></li>
                                    </ul>
                                </div>

                            </div>
                            <div
                                class="clear defaultFooter TextHTML-footer">
                                <div></div>
                            </div>

                        </div>

                        <div id="TextHTML-Module" class="DefaultModule">
                            <div class="banner-content-wrapper">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-4">
                                        <div
                                            class="banner-col banner-col1">
                                            <p class="icon">
                                                <em class="fa fa-plane"></em>
                                            </p>

                                            <h3 class="title">MIỄN PHÍ
                                                VẬN CHUYỂN</h3>

                                            <p class="des">Miễn phí vận
                                                chuyển tận nơi trên phạm
                                                vi toàn quốc, chất lượng
                                                đảm bảo đến tận tay
                                                người tiêu dùng</p>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-4">
                                        <div
                                            class="banner-col banner-col2">
                                            <p class="icon">
                                                <em
                                                    class="fa fa-clock-o"></em>
                                            </p>

                                            <h3 class="title">ĐỔI TRẢ
                                                HÀNG TRONG 30 NGÀY</h3>

                                            <p class="des">Được đổi trả
                                                hàng 1 đổi 1 nếu trong
                                                30 ngày sử dụng gặp vấn
                                                đề về mặt kỹ thuật, chi
                                                phí vận chuyển trả hàng
                                                free</p>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-4">
                                        <div
                                            class="banner-col banner-col3">
                                            <p class="icon">
                                                <em class="fa fa-phone"></em>
                                            </p>

                                            <h3 class="title">HỖ TRỢ
                                                24/7</h3>

                                            <p class="des">Trung tâm
                                                chăm sóc khách hàng
                                                thường trực 24/7 hỗ trợ
                                                giải đáp mọi thắc mắc
                                                của khách hàng trong quá
                                                trình sử dụng</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class=" DefaultModule EmailSubscription">
                            <div
                                class="defaultTitle EmailSubscription-Title">
                                <span> Đăng ký nhận mail</span>
                            </div>
                            <div
                                class="defaultContent EmailSubscription-content">
                                <div id="subscribe_form"
                                    class="BlockContent">

                                    <label class="subscribe_email">
                                        Email</label> <input
                                        name="ctl00$cphMain$ctl00$ctl02$ctl00$txtEmail"
                                        type="text"
                                        id="cphMain_ctl00_ctl02_ctl00_txtEmail"
                                        class="Textbox subscribe_email_input" />
                                    <input type="submit"
                                        name="ctl00$cphMain$ctl00$ctl02$ctl00$btnReg"
                                        value="Đăng ký"
                                        id="cphMain_ctl00_ctl02_ctl00_btnReg"
                                        class="Button" />
                                </div>
                                <div class="Clear"></div>
                            </div>
                            <div
                                class="clear defaultFooter EmailSubscription-footer">
                                <div></div>
                            </div>
                            <div id="Fanc" style="display: none;">
                                <div class="holder"></div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="Clear"></div>
        </div>
    </div>
    <div id="Footer">
        <div class="footer-information">
            <div class="row">
                <div
                    class="f-col f-col1 col-sm-3 col-md-3 col-sms-6 col-smb-12">
                    <div class="footer-static-title">
                        <h3>Max Shop</h3>
                    </div>
                    <div class="footer-static-content">
                        <p>Thiết bị tiêu chuẩn toàn cầu của chúng tôi
                            được xây dựng trên nền tảng công nghệ của
                            các đối tác hàng đầu thế giới đã được chọn
                            lọc</p>
                        <p class="logo-footer">
                            <img alt=""
                                src="sites/97934/Skins/Ecom01/images/logofooter.png">
                        
                        </p>
                    </div>
                </div>
                <div
                    class="f-col f-col2 col-sm-3 col-md-3 col-sms-6 col-smb-12">
                    <div class="footer-static-title">
                        <h3>Liên hệ</h3>
                    </div>
                    <div class="footer-static-content">
                        <p class="address">
                            <em class="fa fa-map-marker"></em>Tầng 4,
                            tòa nhà Hanoi Group, 442 Đội Cấn, Ba Đình,
                            Hà Nội.
                        </p>
                        <p class="phone">
                            <em class="fa fa-mobile"></em>Phone: (04)
                            6674 23 32
                        </p>
                        <p class="email">
                            <em class="fa fa-envelope"></em>Email:
                            support@bizweb.vn
                        </p>
                        <ul class="link-follow ">
                            <li class="first"><a href="#"
                                class="facebook fa fa-facebook"></a></li>
                            <li><a href="#"
                                class="twitter fa fa-twitter"></a></li>
                            <li><a href="#" class="rss fa fa-rss"></a></li>
                            <li><a href="#"
                                class="google fa fa-google-plus"></a></li>
                            <li class="last"><a href="#"
                                class="pinterest fa fa-pinterest"></a></li>
                        </ul>
                    </div>
                </div>
                <div
                    class="f-col f-col3 col-sm-3 col-md-3 col-sms-6 col-smb-12">
                    <div class="footer-static-title">
                        <h3>Tin tức</h3>
                    </div>
                    <div class="footer-static-content">
                        <div id="twitter-feed">
                            <div class="tweet-content">
                                <div class="twitter-article">
                                    <div class="twitter-pic">
                                        <a
                                            href="https://twitter.com/ThemeVast"><i
                                            class="fa fa-twitter"></i></a>
                                    </div>
                                    <div class="twitter-text">
                                        <span class="tweetprofilelink"><strong><a
                                                href="/lua-chon-phuong-phap-bao-tri-thiet-bi-cong-nghiep/a745591.html">Cách
                                                    bảo trì thiết bị</a></strong>
                                            <a
                                            href="/lua-chon-phuong-phap-bao-tri-thiet-bi-cong-nghiep/a745591.html"></a></span><br>
                                            Lựa chọn phương pháp bảo trì
                                            thiết bị công nghiệp để đảm
                                            bảo hiệu quả sản xuất...<br>
                                                <span class="tweet-time"><a
                                                    href="/lua-chon-phuong-phap-bao-tri-thiet-bi-cong-nghiep/a745591.html">
                                                        18/12/2014</a></span>
                                    
                                    </div>
                                </div>
                                <div class="twitter-article">
                                    <div class="twitter-pic">
                                        <a
                                            href="https://twitter.com/ThemeVast"><i
                                            class="fa fa-twitter"></i></a>
                                    </div>
                                    <div class="twitter-text">
                                        <span class="tweetprofilelink"><strong><a
                                                href="/phan-loai-va-chon-mua-bom-cong-nghiep/a745593.html">Phân
                                                    loại máy bơm</a></strong>
                                            <a
                                            href="/phan-loai-va-chon-mua-bom-cong-nghiep/a745593.html"></a></span><br>
                                            Cách tìm hiểu các đặc tính
                                            của từng loại để phân loại
                                            và chọn mua một chiếc máy
                                            bơm công nghiệp<br> <span
                                                class="tweet-time"><a
                                                    href="/phan-loai-va-chon-mua-bom-cong-nghiep/a745593.html">
                                                        18/12/2014</a></span>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div
                    class="f-col f-col5 col-sm-3 col-md-3 col-sms-6 col-smb-12">
                    <div class="block block-subscribe">
                        <div class="footer-static-title">
                            <h3>Đăng ký nhận bản tin</h3>
                        </div>
                        <form id="newsletter-validate-detail"
                            method="post"
                            action="http://themevast.com/demo/tv_lozastore1/index.php/newsletter/subscriber/new/">
                            <div class="footer-static-content">
                                <div class="form-subscribe-header">
                                    <label for="newsletter"> Đăng ký
                                        nhận tin khuyến mãi:</label>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="Powerby">
            Thiết kế bởi <a href='http://www.bizweb.vn'
                title='Giải pháp thiết kế web bán hàng Số 1 Việt Nam'
                target='_blank'><strong>Bizweb</strong></a>
        </div>
        <div class="Clear"></div>
    </div>

</body>
</html>
