
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
                        <?php $logo = $this->getLogo();?>
                        <a href="<?php echo app()->baseUrl;?>"><img
                            src='<?php echo $logo ? app()->baseUrl . '/uploads/' . $logo->image : app()->baseUrl.'sites/97934/upload/Logo/201517133958263.png' ?>' /></a>
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
                                class="level0 nav-1 first <?php echo $this->id == 'site' ? 'current' : ''?> parent"
                                style="z-index: 2000;"><a href="<?php echo app()->baseUrl;?>/"> <span>Trang
                                        chủ</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-2" class="level0 nav-2 parent <?php echo $this->id == 'gioithieu' ? 'current' : ''?> "
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/gioi-thieu.html"> <span>Giới
                                        thiệu</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-3" class="level0 nav-3 parent <?php echo $this->id == 'product' ? 'current' : ''?> "
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/san-pham.html"> <span>Sản phẩm</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-4" class="level0 nav-4 parent <?php echo $this->id == 'tintuc' ? 'current' : ''?> "
                                style="z-index: 2000;"><a
                                href="<?php echo app()->baseUrl;?>/tin-tuc.html"> <span>Tin tức</span>
                            </a>
                                <ul class="level0">

                                </ul></li>

                            <li id="nav-6" class="level0 nav-6 parent <?php echo $this->id == 'contact' ? 'current' : ''?> "
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
                                    <?php
                                        $category = $this->getCategory();
                                        if($category):
                                            foreach ($category as $v):
                                        ?>
                                    <li
                                        class="level0">
                                        <a
                                        href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html">
                                            <?php echo $v->name?> </a>

                                    </li>
                                    <?php
                                            endforeach;
                                        endif;
                                        ?>

                                </ul>
                            </div>
                            <div class="defaultFooter cate-menu-footer">
                                <div></div>
                            </div>
                        </div>
                        <?php
                            $banchay = $this->getBanChay();
                            if($banchay):
                            ?>
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
                                        <?php foreach($banchay as $v):?>
                                        <li class="Odd first" style="padding-top: 15px;">
                                            <div id="ProductImage" class="ProductImage" style="display: block">
                                                <a class="" href='<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html'>
                                                    <img
                                                    src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>"
                                                    alt="<?php echo $v->name;?>"
                                                    title="<?php echo $v->name;?>" />
                                                </a>
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html'>
                                                        <?php echo $v->name;?></a></strong>
                                            </div>
                                            <div class="ProductPrice">
                                                <span class="special-price"><?php echo cutStr(html_decode($v->description), 50);?></span>
                                            </div>
                                            <hr class="Clear" />
                                        </li>
                                        <?php endforeach;?>

                                    </ul>

                                </div>
                                <div class="Clear"></div>
                            </div>
                            <div
                                class="clear defaultFooter SideTopSeller-footer">
                                <div></div>
                            </div>
                        </div>
                        <?php endif;?>
                        <?php
                            $image_left = $this->getImageLeft();
                            if ($image_left):
                        ?>
                        <div id="TextHTML-Module" class="DefaultModule">
                            <?php
                                foreach($image_left as $v):
                                ?>
                            <p>
                                <img alt=""
                                    src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>"
                                    style="width: 262px; height: 354px;" />
                            </p>
                            <?php endforeach;?>

                        </div>
                        <?php endif;?>
                    </div>
                    <div class="wrap-content">
                        <?php echo $content;?>
                    </div>
                    <div class="Clear"></div>
                    <div id="cphMain_ctl00_BottomPane" class="bottom">
                        <?php
                            $thuonghieu = $this->getThuongHieu();
                            if ($thuonghieu):
                            ?>
                        <div id="TextHTML-Module" class="DefaultModule">

                            <div class="defaultTitle TextHTML-Title">
                                <span> Thương hiệu nổi bật</span>
                            </div>
                            <div class="defaultContent TextHTML-content">
                                <div class="orther-logo">
                                    <ul>
                                        <?php foreach($thuonghieu as $v):?>
                                        <li><img alt=""
                                            src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>"
                                            style="width: 160px; height: 100px;" /></li>
                                        <?php endforeach;?>
                                    </ul>
                                </div>

                            </div>
                            <div
                                class="clear defaultFooter TextHTML-footer">
                                <div></div>
                            </div>

                        </div>
                        <?php endif;?>

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
                        <h3>HEAT TRANSFER LABEL</h3>
                    </div>
                    <div class="footer-static-content">
                        <p>Thiết bị tiêu chuẩn toàn cầu của chúng tôi
                            được xây dựng trên nền tảng công nghệ của
                            các đối tác hàng đầu thế giới đã được chọn
                            lọc</p>
                        <p class="logo-footer">
                            <img alt=""
                                src="<?php echo $logo ? app()->baseUrl . '/uploads/' . $logo->image : app()->baseUrl.'sites/97934/upload/Logo/201517133958263.png' ?>">
                        
                        </p>
                    </div>
                </div>
                <div
                    class="f-col f-col2 col-sm-3 col-md-3 col-sms-6 col-smb-12">
                    <div class="footer-static-title">
                        <h3>Liên hệ</h3>
                    </div>
                    <div class="footer-static-content">
                        <?php
                            $contact = $this->getContact();
                            if($contact['address']):
                            ?>
                        <p class="address">
                            <em class="fa fa-map-marker"></em><?php echo strip_tags($contact['address']->content);?>
                        </p>
                        <?php endif;?>
                        <?php
                           if($contact['phone']):
                            ?>
                        <p class="phone">
                            <em class="fa fa-mobile"></em>Phone: <?php echo strip_tags($contact['phone']->content)?>
                        </p>
                        <?php endif;?>
                        <?php
                           if($contact['email']):
                            ?>
                        <p class="email">
                            <em class="fa fa-envelope"></em>Email:
                            <?php echo strip_tags($contact['email']->content);?>
                        </p>
                        <?php endif;?>
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
                            <?php
                                $tintuc = $this->getTintuc();
                                if($tintuc):
                             ?>
                            <div class="tweet-content">
                                <?php foreach($tintuc as $v):?>
                                <div class="twitter-article">
                                    <div class="twitter-pic">
                                        <a
                                            href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>"><i
                                            class="fa fa-twitter"></i></a>
                                    </div>
                                    <div class="twitter-text">
                                        <span class="tweetprofilelink"><strong><a
                                                href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>"><?php echo $v->name?></a></strong>
                                            </span><br>
                                            <?php echo cutStr(html_decode($v->description), 70)?><br>
                                                <span class="tweet-time"><a
                                                    href="<?php echo url('/tin-tuc/chi-tiet/' . $v->id . '/' . $v->alias.'.html')?>">
                                                        <?php echo date('d-m-Y', strtotime($v->created))?></a></span>
                                    
                                    </div>
                                </div>
                                <?php endforeach;?>
                            </div>
                            <?php endif;?>
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
            Thiết kế bởi <a href='http://hotelbenluc.com'
                title='Khách sạn Bến Lức'
                target='_blank'><strong>pndtam@gmail.com</strong></a>
        </div>
        <div class="Clear"></div>
    </div>

</body>
</html>
