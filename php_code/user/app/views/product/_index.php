
<li class="Odd">
    <div id="ProductImage" class="ProductImage ProductImageTooltip">
        <a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" rel="<?php echo $data->id?>" class="#tooltip<?php echo $data->id?>"
            productname='<?php echo $data->name?>' description='<?php echo $data->description?>' thumbnail='<?php echo app()->baseUrl;?>/uploads/<?php echo $data->image?>' promotion='' >
            <img src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>" title="<?php echo $data->name?>" class="img_pro" />
        </a>
    </div>
    
    
    <div class="saleFlag iconSprite disable">
        </div>
    <div class="ProductDetails">
        <strong><a href='<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html'>
            <?php echo $data->name?><span class="#tooltipPromotion<?php echo $data->id?>"></span>
        </a></strong>
    </div>
    
    <div class="ProductPrice">
       <?php echo CutStr(html_decode($data->description), 100)?>
       <br><br>
    </div>
    
    <div class="ProductActionAdd"><a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html"><span>Chi tiết</span></a></div>
    <br>
</li>