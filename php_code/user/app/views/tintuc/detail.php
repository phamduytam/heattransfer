
    <div id="cphMain_ctl00_TopPane" class="top"></div>
    <div id="cphMain_ctl00_RightPane" class="right"></div>
    <div id="cphMain_ctl00_ContentPane" class="center">
<div id="content_document" class="NewsDetailContainer DefaultModule DetailItem">
    <div class="defaultTitle newsDetail_Header">
        <h1 class="newsDetail_Title">
            <?php echo $tintuc->name?></h1>
    </div>
    <div class="defaultContent newsDetail-content newsList-content">
        <div class="Block newsDetail_Content Clear" style="overflow: hidden">
            <?php echo $tintuc->content?>
        </div>
        
        <br class="Clear">
        
		<?php
			if($ortherList):
		?>
        <div class="newsDetail_OrtherNews">
            <div class="newsDetail_OrtherNews_Label">
                Các tin khác:
            </div>
            <div class="newsDetail_OtherNews_List">
                <?php
    				foreach ($ortherList as $v):
    			?>
                        <div>
                            <a href="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html" class="newsDetail_OrtherNews_Link">
                                <span><?php echo $v->name?></span> </a>
                        </div>
                        <?php endforeach;?>
            </div>
        </div>
        <?php endif;?>
    </div>
    <div class="defaultFooter newsDetail-footer newsList-footer">
        <div>
        </div>
    </div>
</div>
</div>
