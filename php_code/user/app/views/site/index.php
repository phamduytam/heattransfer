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
        <div id="slider_2102789" style="margin: 0 auto;">
        <?php foreach ($advertise as $v) {
        ?>
            <a href='<?php echo $v->url ?>' target='_self' title="Slider">
                <img src="uploads/<?php echo $v->image?>" alt="" style="width: 554px !important;" />
            </a>
        <?php }?>
        </div>
    </div>
</div>
<?php endif;?>
<div id="cphMain_ctl00_RightPane" class="right">
    <?php if($image_right_1):?>
    <div id="TextHTML-Module" class="DefaultModule">
        <a href="<?php echo $image_right_1->url;?>">
            <img alt="" src="uploads/<?php echo $image_right_1->image?>" style="width: 263px; height: 211px;" />
        </a>
    </div>
    <?php endif;?>
                            
    <?php if($image_right_2):?>
    <div id="TextHTML-Module" class="DefaultModule">
        <a href="<?php echo $image_right_2->url;?>">
            <img alt="" src="uploads/<?php echo $image_right_2->image?>" style="width: 263px; height: 211px;" />
        </a>
        <p></p>
    </div>
    <?php endif;?>
</div>
<div id="cphMain_ctl00_ContentPane" class="center">
    <?php if($noibat):?>
    <div id="HomeFeaturedProducts"
        class="Block FeaturedProducts DefaultModule CustomProduct-2102783">
        <div class="defaultTitle TitleContent">
            <span>Sản phẩm nổi bật</span>
        </div>
        <div class="defaultContent BlockContent">
            <ul class="ProductList First">
                <?php foreach($noibat as $v):?>
                <li class="Odd">
                    <div
                        class="ProductImage ProductImageTooltip po_<?php echo $v->id?>">
                        <a href="<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html"
                         rel="<?php echo $v->id?>" class="#tooltip<?php echo $v->id?>">
                            <img alt="<?php echo $v->name?>" title="<?php echo $v->name?>"
                            src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" class="img_pro" />
                        </a>
                    </div>
                    <div class="ProductDetails">
                        <strong><a href='<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html'>
                        <?php echo $v->name?></a></strong>
                    </div>
                    <div class="ProductPrice">
                        <?php echo html_decode($v->description)?>
                        <br><br>
                    </div>
                    <div class="ProductActionAdd">
                        <a href="<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html">
                        <span>Chi tiết</span></a>
                    </div>
                </li>
                <?php endforeach;?>
                <br class="Clear" />
            </ul>
        </div>
        <div class="defaultFooter FooterContent">
            <div></div>
        </div>
        <div class="Clear"></div>
    </div>
    <?php endif;?>
    <?php if($image_right_3):?>
    <div id="TextHTML-Module"
        class="DefaultModule">
        <div class="banner-content">
            <div class="row">
                <?php foreach($image_right_3 as $v):?>
                <div class="col-xs-12 col-sm-4">
                    <div
                        class="banner-cat cat-top1">
                        <div class="box-img">
                            <img alt=""
                                src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>"
                                style="width: 262px; height: 356px;" />
                        </div>

                        <div class="box-links">
                        </div>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
        </div>

        <div class="Clear"></div>

    </div>
    <?php endif;?>
    <?php if($hot):?>
    <div id="HomeFeaturedProducts"
        class="Block FeaturedProducts DefaultModule CustomProduct-2102788">
        <div class="defaultTitle TitleContent">
            <span>Sản phẩm hot</span>
        </div>
        <div class="defaultContent BlockContent">

            <ul class="ProductList First">

                <?php $i=1; foreach($hot as $v):?>
                <li class="Odd">
                    <div
                        class="ProductImage ProductImageTooltip po_<?php echo $v->id?>">
                        <a href="<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html"
                         rel="<?php echo $v->id?>" class="#tooltip<?php echo $v->id?>">
                            <img alt="<?php echo $v->name?>" title="<?php echo $v->name?>"
                            src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" class="img_pro" />
                        </a>
                    </div>
                    <div class="ProductDetails">
                        <strong><a href='<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html'>
                        <?php echo $v->name?></a></strong>
                    </div>
                    <div class="ProductPrice">
                        <?php echo html_decode($v->description)?>
                        <br><br>
                    </div>
                    <div class="ProductActionAdd">
                        <a href="<?php echo app()->baseUrl;?>/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html">
                        <span>Chi tiết</span></a>
                    </div>
                </li>
                <?php
                    if ($i % 4 == 0)
                        echo '<br class="Clear" /><br/>';
                    $i++;
                    endforeach;?>

                
            </ul>

        </div>
        <div class="defaultFooter FooterContent">
            <div></div>
        </div>
        <div class="Clear"></div>
    </div>
    <?php endif;?>
</div>