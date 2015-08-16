<?php
if(isset($product)):
$this->keyword = $product->name .', '. convertKeyword($product->name);
$this->description = $product->description;
?>
<div class="ProductDetailContainer DetailItem DefaultModule">
    <div id="ProductDetails" class="PrimaryProductDetails">
        <div class="BlockContent">
            <div class="ProductThumb">
                <div id="LightBoxImages" style="display: none;">
                    <a href="javscript:;" class="gallery-2 fancybox.iframe"></a>
                </div>
                <div class="ProductThumbImage" style="width: 360px; height: 360px; text-align: center; overflow: visible;">
                        <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $product->image?>" width="360" height="360" alt="<?php echo $product->name;?>" />
                </div>
               
            </div>
            <div class="ProductMain">
                <div class="product-title">
                    <h1>
                        <?php echo $product->name;?></h1>
                </div>
                <div class="ProductDetailsGrid">
                    
                    <div class="Row ShortDescription">
                        <div class="ShortDescriptionTitle">
                            Mô tả ngắn
                        </div>
                        <p>
                            <?php echo $product->description;?>
                        </p>
                    </div>
                </div>
                
            </div>
            <div class="clearfix"></div>

            <br class="Clear" />
            <div class="ProcductContainer">
                <div class="ProductTabs">
                    <script type="text/javascript">
                        function ActiveProductTab(TabId) {
                            var CurTabId = $('#ProductTabs .Active').attr('id');
                            var CurTabContentId = CurTabId.replace('_Tab', '');
                            $('#ProductTabs .Active').removeClass('Active');
                            $('#' + CurTabContentId).hide();
                            $('#' + TabId).addClass('Active');
                            var NewTabContentId = TabId.replace('_Tab', '');
                            $('#' + NewTabContentId).show();
                        }
                    </script>
                    <div class="Panel" id="ProductTabs">
                        <ul class="TabNav" id="ProductTabsList">
                            <li id="ProductDescription_Tab" class="Active">
                                <a onclick="ActiveProductTab('ProductDescription_Tab'); return false;" href="javscript:;">
                                    Thông tin
                                </a>
                            </li>
                            <li id="ProductReviews_Tab">
                                <a onclick="ActiveProductTab('ProductReviews_Tab'); return false;" href="javscript:;">
                                    Sản phẩm khác
                                </a>
                            </li>
                            
                        </ul>
                    </div>
                    <div id="ProductDescription" class="Block Panel ProductDescription" style="display: block; overflow: hidden;">
                        <div class="ProductDescriptionContainer">
                            <?php echo $product->content?>
                        </div>
                        <hr class="ProductSectionSeparator" style="display: none;" />
                    </div>
                    <div id="ProductRelatedProducts" style="display: none;" class="Block Panel">
                        <ul class="ProductList">
                            
                        </ul>
                        <div class="Clear">
                        </div>
                    </div>
                    
                    <div id="ProductReviews" class="Block Panel" style="display: none; overflow: hidden;">
                        <div class="BlockContent Clear">
                        	<?php if($ortherList):?>
                            <ul class="ProductList ">
                            <?php foreach ($ortherList as $value):?>
                            <li class="Odd">
                                <div id="ProductImage" class="ProductImage ProductImageTooltip">
                                    <a href="<?php echo app()->baseUrl?>/chi-tiet/<?php echo $value->id?>/ <?php echo $value->alias;?>.html">
                                        <img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>"
                                         title="<?php echo $value->name?>" />
                                    </a>
                                </div>
                                
                                
                                
                                <div class="ProductDetails">
                                    <strong><a href='<?php echo app()->baseUrl?>/chi-tiet/<?php echo $value->id?>/ <?php echo $value->alias;?>.html'>
                                        <?php echo $value->name?>
                                    </a></strong>
                                </div>
                                <div>
                                    <?php echo $value->description?>
                                    </div>
                                <br><br>
                                
                                
                                <div class="ProductActionAdd"><a href="<?php echo app()->baseUrl?>/chi-tiet/<?php echo $value->id?>/ <?php echo $value->alias;?>.html"><span>Chi tiết</span></a></div>
                                <br><br>
                            </li>
                            <?php endforeach;?>
                        
                    <div class="clear">
                    </div>
                </ul>
                <?php endif;?>
                            
                        </div>
                        <div class="Clear"></div>
                    </div>
                    
                    
                    
                    
                </div>
                <br class="Clear" />
            </div>
        </div>
    </div>
    <div class="clear defaultFooter product-footer">
        <div></div>
    </div>
</div>
<?php endif;?>
