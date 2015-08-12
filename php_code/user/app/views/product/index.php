

<div class="ProductListContainer ListItems DefaultModule">
    
    <div class="category-title defaultTitle productlist-title">
        <h1>
            Sản phẩm</h1>
    </div>
    <div class="TopContent">
        
    </div>
    <div id="ProductList" class="defaultContent listing-type-list productlist-content catalog-listing">
        
                <ul class="ProductList">
                    <?php
				$listView = $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$content,
					'summaryText'=>'',
					'itemView'=>'_index',
					'template'=>"{items}",
				));
			?>
                    <div class="clear">
                    </div>
                </ul>
            
        
        <div class="clear">
        </div>
        <?php
        	$pagerCssClass	=	'pagination';
        	$pager			=	array(
        								'class'=>'TbPager',
        								'prevPageLabel'=>'Prev',
        								'maxButtonCount'=>5,
        								'nextPageLabel'=>'Next',
        								'htmlOptions' => array('class' => 'pagination'),
        								'header' => false,
        							);
        	$listView->pagerCssClass = $pagerCssClass;
        	$listView->pager = $pager;
        	$listView->renderPager();
        	?>
        <div class="clear"></div>
    

    </div>
    <div class="clear defaultFooter productlist-footer">
        <div>
        </div>
    </div>
</div>

<div id="productReviewPopup2102793" class="hidden"></div>
<script type="text/javascript">
$(function () {
    $("#ProductList .ProductImageTooltip a").each(function () {
        var productname = $(this).attr("productname");
        var thumbnail = $(this).attr("thumbnail");
        var description = $(this).attr("description");
        var promotion = $(this).attr("promotion");
        $(this).bind("mouseover", function () {
            var promotionHtml = "";
            if (promotion != "") promotionHtml = "<div class=\"promotion-description\">" + promotion + "</div>";
            var returnHtml =
                "<div class=\"tooltip_name\">" + productname + '</div>' +
                "<div class=\"tooltip_picture\"><img src=\"" + thumbnail + "\"" + "height='300px'" + "width='350px'" + " title=\"" + productname + "\" alt=\"" + productname + "\" /></div>" +
                "<div class=\"tooltip_description\">" + description + "</div>" +
                promotionHtml +
                "<div class=\"teaser\"></div>";
            $("#productReviewPopup2102793").html(returnHtml);
        });
        $(this).tooltip({
            track: true, delay: 50, showURL: false,
            bodyHandler: function () {
                return $("#productReviewPopup2102793").html();
            }
        });
    });
});
</script>
</div>