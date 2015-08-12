<?php if ($advertise):?>
<div id="cphMain_ctl00_TopPane" class="top">
                            <span style="display: none;"> </span>

                            <link rel="stylesheet"
                                href="Extensions/Stylesheet/Gallery/nivo-slider.css"
                                type="text/css" media="screen" />
                            <script
                                src="Extensions/Js/GalleryModule/jquery.nivo.slider.js"
                                type="text/javascript"></script>
                            <style type="text/css">
#slider_2102789 {
    background: #202834 url(images/loading2.gif) no-repeat 50% 50%;
    height: 447px;
    margin-bottom: 10px;
    overflow: hidden;
    position: relative;
    width: 554px;
}

#slider_2102789 img {
    display: none;
    left: 0px;
    position: absolute;
    top: 0px;
}

#slider_2102789 a {
    border: 0;
}

.nivo-controlNav {
    bottom: -30px;
    left: 47%;
    position: absolute;
}

.nivo-controlNav a {
    background: url(images/bullets.png) no-repeat;
    border: 0;
    display: block;
    float: left;
    height: 10px;
    margin-right: 3px;
    text-indent: -9999px;
    width: 10px;
}

.nivo-controlNav a.active {
    background-position: -10px 0;
}

.nivo-directionNav a {
    background: url(images/arrows.png) no-repeat;
    border: 0;
    display: block;
    height: 34px;
    text-indent: -9999px;
    width: 32px;
}

a.nivo-nextNav {
    background-position: -32px 0;
    right: 10px;
}

a.nivo-prevNav {
    left: 10px;
}

#slider_2102789 p {
    font-family: Arial, sans-serif;
    margin-left: 10px;
}

#slider_2102789 p span {
    font-family: Helvetica;
    font-size: 10px;
}

.nivo-caption {
    height: 40px;
}

.nivo-caption {
    display: none !important;
}

.nivo-caption p {
    font-family: Arial;
    font-size: 14px;
    padding-top: 10px;
}

.nivo-controlNav {
    display: none;
}
</style>
                            <script type="text/javascript">
$(window).load(function() {
    $('#slider_2102789').nivoSlider({
        effect: 'fold,fade,sliceDown',
        width: 554,
        height:447,
        animSpeed: 500,
        pauseTime: 5000,
        startSlide: 0, //Set starting Slide (0 index)
        directionNav: true, //Next & Prev
        directionNavHide: true
    });
});
</script>
                            <div class="slider">
                                <div id="slider_2102789"
                                    style="margin: 0 auto;">
                                    <?php foreach ($advertise as $v) {
                                    ?>

                                    <a href='<?php echo $v->url ?>' target='_self' title="Slider">
                                        <img
                                        src="uploads/<?php echo $v->image?>"
                                        alt=""
                                        style="width: 554px !important;" />
                                    </a>
                                    <?php }?>

                                </div>
                            </div>


                        </div>
                    <?php endif;?>
                        <div id="cphMain_ctl00_RightPane" class="right">
                            <?php if($image_right_1):?>
                            <div id="TextHTML-Module"
                                class="DefaultModule">
                                <a href="<?php echo $image_right_1->url;?>"><img alt=""
                                    src="uploads/<?php echo $image_right_1->image?>"
                                    style="width: 263px; height: 211px;" /></a>

                            </div>
                            <?php endif;?>
                            
                            <?php if($image_right_1):?>
                            <div id="TextHTML-Module"
                                class="DefaultModule">
                                <a href="<?php echo $image_right_2->url;?>"><img alt=""
                                    src="uploads/<?php echo $image_right_2->image?>"
                                    style="width: 263px; height: 211px;" /></a>

                                <p></p>

                            </div>
                            <?php endif;?>
                        </div>
                        <div id="cphMain_ctl00_ContentPane"
                            class="center">
                            <div id="HomeFeaturedProducts"
                                class="Block FeaturedProducts DefaultModule CustomProduct-2102783">
                                <div class="defaultTitle TitleContent">
                                    <span>Sản phẩm nổi bật</span>
                                </div>
                                <div class="defaultContent BlockContent">

                                    <ul class="ProductList First">

                                        <li class="Odd">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102783">
                                                <a
                                                    href="/bo-dung-cu-cs-6197282.html"
                                                    rel="6197282"
                                                    class="#tooltip6197282">
                                                    <img
                                                    alt="Bộ dụng cụ CS"
                                                    title="Bộ dụng cụ CS"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/23446861_1.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/bo-dung-cu-cs-6197282.html'>
                                                        Bộ dụng cụ CS</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            450.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197282);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Even">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102783">
                                                <a
                                                    href="/dung-cu-cam-tay-cong-nghiep-dc-6197283.html"
                                                    rel="6197283"
                                                    class="#tooltip6197283">
                                                    <img
                                                    alt="Dụng cụ cầm tay công nghiệp DC"
                                                    title="Dụng cụ cầm tay công nghiệp DC"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/26021442_9.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/dung-cu-cam-tay-cong-nghiep-dc-6197283.html'>
                                                        Dụng cụ cầm tay
                                                        công nghiệp DC</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            230.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197283);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Odd">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102783">
                                                <a
                                                    href="/may-khoan-gkd-6197284.html"
                                                    rel="6197284"
                                                    class="#tooltip6197284">
                                                    <img
                                                    alt="Máy khoan GKD"
                                                    title="Máy khoan GKD"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/36433962_12.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-khoan-gkd-6197284.html'>
                                                        Máy khoan GKD</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            3.200.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197284);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Even">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102783">
                                                <a
                                                    href="/may-rotary-hammer-6197285.html"
                                                    rel="6197285"
                                                    class="#tooltip6197285">
                                                    <img
                                                    alt="Máy Rotary Hammer"
                                                    title="Máy Rotary Hammer"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/38378332_8.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-rotary-hammer-6197285.html'>
                                                        Máy Rotary
                                                        Hammer</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            2.600.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197285);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <br class="Clear" />
                                    </ul>


                                </div>
                                <div class="defaultFooter FooterContent">
                                    <div></div>
                                </div>
                                <div class="Clear"></div>
                            </div>

                            <div id="TextHTML-Module"
                                class="DefaultModule">
                                <div class="banner-content">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-4">
                                            <div
                                                class="banner-cat cat-top1">
                                                <div class="box-img">
                                                    <img alt=""
                                                        src="sites/95138/data/Upload/2014/12/banner2a.jpg"
                                                        style="width: 262px; height: 356px;" />
                                                </div>

                                                <div class="box-links">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-12 col-sm-4">
                                            <div
                                                class="banner-cat cat-top2">
                                                <div class="box-img">
                                                    <img alt=""
                                                        src="sites/95138/data/Upload/2014/12/banner2c.jpg"
                                                        style="width: 262px; height: 356px;" />
                                                </div>

                                                <div class="box-links">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-12 col-sm-4">
                                            <div
                                                class="banner-cat cat-top3">
                                                <div class="box-img">
                                                    <img alt=""
                                                        src="sites/95138/data/Upload/2014/12/banner2.jpg"
                                                        style="width: 262px; height: 356px;" />
                                                </div>

                                                <div class="box-links">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="Clear"></div>

                            </div>

                            <div id="HomeFeaturedProducts"
                                class="Block FeaturedProducts DefaultModule CustomProduct-2102788">
                                <div class="defaultTitle TitleContent">
                                    <span>Sản phẩm hot</span>
                                </div>
                                <div class="defaultContent BlockContent">

                                    <ul class="ProductList First">

                                        <li class="Odd">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-2-5hp-40l-6197234.html"
                                                    rel="6197234"
                                                    class="#tooltip6197234">
                                                    <img
                                                    alt="Máy nén khí 2.5HP 40L"
                                                    title="Máy nén khí 2.5HP 40L"
                                                    src="Thumbnails//sites/97934/data/images/2014/12/0356633ab1_2.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-2-5hp-40l-6197234.html'>
                                                        Máy nén khí
                                                        2.5HP 40L</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            5.800.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197234);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Even">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-pegasustm-v-6197235.html"
                                                    rel="6197235"
                                                    class="#tooltip6197235">
                                                    <img
                                                    alt="Máy nén khí pegasusTM-V"
                                                    title="Máy nén khí pegasusTM-V"
                                                    src="Thumbnails//sites/97934/data/images/2014/12/0002445ab5.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-pegasustm-v-6197235.html'>
                                                        Máy nén khí
                                                        pegasusTM-V</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            8.500.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197235);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Odd">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-day-dai-pegasus-tm-v-0-17-8-100l-6197236.html"
                                                    rel="6197236"
                                                    class="#tooltip6197236">
                                                    <img
                                                    alt="Máy nén khí dây đai Pegasus TM-V-0.17/8-100L"
                                                    title="Máy nén khí dây đai Pegasus TM-V-0.17/8-100L"
                                                    src="Thumbnails//sites/97934/data/images/2014/12/0925948ab1_7.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-day-dai-pegasus-tm-v-0-17-8-100l-6197236.html'>
                                                        Máy nén khí dây
                                                        đai Pegasus
                                                        TM-V-0.17/8-100L</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            6.600.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197236);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Even">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-giam-am-pegasus-tm-of550-25l-6197237.html"
                                                    rel="6197237"
                                                    class="#tooltip6197237">
                                                    <img
                                                    alt="Máy nén khí giảm âm PEGASUS TM-OF550-25L"
                                                    title="Máy nén khí giảm âm PEGASUS TM-OF550-25L"
                                                    src="Thumbnails//sites/97934/data/images/2014/12/1058919ab1_5.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-giam-am-pegasus-tm-of550-25l-6197237.html'>
                                                        Máy nén khí giảm
                                                        âm PEGASUS
                                                        TM-OF550-25L</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            11.290.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197237);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <br class="Clear" />
                                    </ul>

                                    <ul class="ProductList Last">

                                        <li class="Odd">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-dw-6197238.html"
                                                    rel="6197238"
                                                    class="#tooltip6197238">
                                                    <img
                                                    alt="Máy nén khí DW"
                                                    title="Máy nén khí DW"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/16131922_16.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-dw-6197238.html'>
                                                        Máy nén khí DW</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            9.500.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197238);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Even">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-puji-6197239.html"
                                                    rel="6197239"
                                                    class="#tooltip6197239">
                                                    <img
                                                    alt="Máy nén khí PUJI"
                                                    title="Máy nén khí PUJI"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/17287092_19.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-puji-6197239.html'>
                                                        Máy nén khí PUJI</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            11.500.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197239);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Odd">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-4-5hp-fuji-6197240.html"
                                                    rel="6197240"
                                                    class="#tooltip6197240">
                                                    <img
                                                    alt="Máy nén khí 4.5HP FUJI"
                                                    title="Máy nén khí 4.5HP FUJI"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/18433992_21.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-4-5hp-fuji-6197240.html'>
                                                        Máy nén khí
                                                        4.5HP FUJI</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            13.400.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197240);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <li class="Even">
                                            <div id="ProductImage"
                                                class="ProductImage ProductImageTooltip po_2102788">
                                                <a
                                                    href="/may-nen-khi-40l-6197241.html"
                                                    rel="6197241"
                                                    class="#tooltip6197241">
                                                    <img
                                                    alt="Máy nén khí 40L"
                                                    title="Máy nén khí 40L"
                                                    src="Thumbnails//sites/97934/data/images/2015/1/17397382_22.192.192.jpg" />
                                                </a>
                                            </div>


                                            <div
                                                class="saleFlag iconSprite disable">
                                            </div>
                                            <div class="ProductDetails">
                                                <strong><a
                                                    href='/may-nen-khi-40l-6197241.html'>
                                                        Máy nén khí 40L</a></strong>
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
                                                        class="price-label"></span><span
                                                        class="price"><em>
                                                            9.500.000 ₫</em>
                                                    </span>
                                                </div>
                                            </div>
                                            <div
                                                class="ProductRating Rating-1"
                                                style="display:;">
                                                <div class="RatingImage">
                                                </div>
                                            </div>
                                            <div
                                                class="ProductActionAdd">
                                                <a href="javascript:;"
                                                    onclick="javascript:PopupCart(6197241);"><span>Mua
                                                        hàng</span></a>
                                            </div>
                                        </li>

                                        <br class="Clear" />
                                    </ul>


                                </div>
                                <div class="defaultFooter FooterContent">
                                    <div></div>
                                </div>
                                <div class="Clear"></div>
                            </div>
                        </div>