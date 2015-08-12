
    <div id="cphMain_ctl00_TopPane" class="top"></div>
    <div id="cphMain_ctl00_RightPane" class="right"></div>
    <div id="cphMain_ctl00_ContentPane" class="center">
<div class="NewsListContainer DefaultModule ListItems">
    <div class="newsCategory defaultTitle">
        <h1>
            Tin tức</h1>
    </div>
    <div class="defaultContent newsList">
        
                <table class="newsList_Item" cellpadding="0" cellspacing="0">
                    <?php
					$listView = $this->widget('zii.widgets.CListView', array(
						'dataProvider'=>$content,
						'summaryText'=>'',
						'itemView'=>'_index',
						'template'=>"{items}",
					));
				?>
                    </table>
<div class="PageNavigation" style="padding-bottom: 10px; padding-top: 10px;" align="center">
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
</div>

    </div>
    <div class="clear defaultFooter newsList-footer">
        <div>
        </div>
    </div>
    <div class="clear">
    </div>
</div>
</div>
